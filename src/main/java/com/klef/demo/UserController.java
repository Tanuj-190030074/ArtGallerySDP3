package com.klef.demo;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class UserController {
@Autowired
UserService serv;
@Autowired
ArtService aaserv;
@Autowired
EntityManager entityManager;
@Autowired
UserRepository rep;
@Autowired
ConfirmationTokenRepository crep;
@Autowired
private EmailService emailService;
@Autowired
AdminService aserv;

@GetMapping("/")
public String home()
{
  return "redirect:/loginpage";
}


@GetMapping("/homepage")
public ModelAndView home2(HttpServletRequest req,HttpServletResponse res) throws IOException
{
	HttpSession sess=req.getSession(false);
	if(sess.getAttribute("email")==null)
	{
		res.sendRedirect("loginpage");
	}
  ModelAndView mv = new ModelAndView();
  mv.setViewName("home");
  return mv;
}
@GetMapping("/loginpage")
public String loginpage()
{
	return "loginpage";
}

@GetMapping("/registerpage")
public String registerpage()
{
	return "registerpage";
}

@PostMapping("/submituser")
public ModelAndView submituser(@RequestParam("file") MultipartFile file,@RequestParam("firstname")String name,@RequestParam("lastname")String lastname,@RequestParam("email")String email,@RequestParam("address")String address,@RequestParam("mobile")String mobile,@RequestParam("gender")String gender,@RequestParam("password")String password,@RequestParam("state")String state,@RequestParam("zipcode")String zipcode)
{
	ModelAndView mv=new ModelAndView();
	User userEntity=new User();
	userEntity.setFirstname(name);
	userEntity.setEmail(email);
	userEntity.setLastname(lastname);
	userEntity.setPassword(password);
	userEntity.setState(state);
	userEntity.setMobile(mobile);
	userEntity.setZipcode(zipcode);
	userEntity.setAddress(address);
	userEntity.setGender(gender);
	String fileName = StringUtils.cleanPath(file.getOriginalFilename());
	if(fileName.contains(".."))
	{
		System.out.println("not a a valid file");
	}
	try {
		userEntity.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
	} catch (IOException e) {
		e.printStackTrace();
	}
	User existingUser = rep.findByemailIgnoreCase(userEntity.getEmail());
    if(existingUser != null)
    {
        mv.addObject("message","This email already exists!");
        mv.setViewName("rstatus");
    }
    else
    {
    	serv.adduser(userEntity);
        ConfirmationToken confirmationToken = new ConfirmationToken(userEntity);

        crep.save(confirmationToken);

        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo(userEntity.getEmail());
        mailMessage.setSubject("Complete Registration!");
        mailMessage.setFrom("cgallery890@gmail.com");
        mailMessage.setText("To confirm your account, please click here : "
        +"http://localhost:2020/confirm-account?token="+confirmationToken.getConfirmationToken());

        emailService.sendEmail(mailMessage);

        mv.addObject("emailId", userEntity.getEmail());

        mv.setViewName("added2");
    }
	return mv;
}

@RequestMapping(value="/confirm-account", method= {RequestMethod.GET, RequestMethod.POST})
public ModelAndView confirmUserAccount(ModelAndView modelAndView, @RequestParam("token")String confirmationToken)
{
    ConfirmationToken token = crep.findByConfirmationToken(confirmationToken);

    if(token != null)
    {
    	User user = rep.findByemailIgnoreCase(token.getUserEntity().getEmail());
        user.setEnabled(true);
        rep.save(user);
        modelAndView.setViewName("accountVerified");
    }
    else
    {
        modelAndView.addObject("message","The link is invalid or broken!");
        modelAndView.setViewName("rstatus");
    }

    return modelAndView;
}

@GetMapping("/adminhomepage")
public String adminhome()
{
	return "adminhome";
}

@PostMapping("/userlogin")
public String userlogin(@RequestParam("email")String email,@RequestParam("password")String password,HttpServletRequest req)
{  ModelAndView mv=new ModelAndView();
    List<User> users = serv.login(email, password);
    if(users.isEmpty())
    {
    	if(aserv.adminlogin(email, password)==true)
    	{
    		return "redirect:/adminhomepage";
    	}
        return "loginfailed";
    }
    HttpSession sess=req.getSession();
    sess.setAttribute("email",email);
    sess.setAttribute("name",users.get(0).getFirstname());
    sess.setAttribute("image",users.get(0).getImage());
    sess.setAttribute("count", aaserv.getcountcitems(email));
	return "redirect:/homepage";
}



@GetMapping("/userlogout")
public String userlogout(HttpServletRequest req)
{
    HttpSession sess=req.getSession(false);
	System.out.println(sess.getAttribute("name"));
	sess.removeAttribute("name");
	sess.removeAttribute("email");
	sess.removeAttribute("image");
	sess.removeAttribute("count");
	System.out.println(sess.getAttribute("name"));
	return "redirect:/loginpage";
}
}
