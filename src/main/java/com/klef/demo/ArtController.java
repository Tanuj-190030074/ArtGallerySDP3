package com.klef.demo;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ArtController {
@Autowired
ArtService serv;

@GetMapping("/addartpage")
public String addartpage()
{
	return "addart";
}

@GetMapping("/testingpage")
public ModelAndView testingpage(HttpServletRequest req)
{
	ModelAndView mv=new ModelAndView();
	HttpSession sess=req.getSession(false);
	String email=(String) sess.getAttribute("email");
	List<Cart> res=serv.getallcartitems(email);
	int total=0;
	for(Cart i:res)
	{
		total+=i.getArt().getPrice();
	}
	System.out.println(total);
	mv.setViewName("testing");
	mv.addObject("total",total);
	return mv;
}

@GetMapping("/paymentcompleted")
public String payementdone(HttpServletRequest req)
{
	HttpSession sess=req.getSession(false);
	String email=(String) sess.getAttribute("email");
	List<Cart> res=serv.getallcartitems(email);
	int l=res.size();
	for(int i=0;i<l;i++)
	{
		serv.addtopaymenttable(res.get(i).getEmail(),res.get(i).getArt());
	}
	serv.clearcart(email);
	return "added2";
}

@GetMapping("/sellartform")
public String sellartform(HttpServletRequest req,HttpServletResponse res) throws IOException
{
	HttpSession sess=req.getSession(false);
	if(sess.getAttribute("email")==null)
	{
		res.sendRedirect("loginpage");
	}
	return "sellartform";
}

@GetMapping("/sellartpage")
public ModelAndView sellartpage(HttpServletRequest req,HttpServletResponse res) throws IOException
{
	HttpSession sess=req.getSession(false);
	if(sess.getAttribute("email")==null)
	{
		res.sendRedirect("loginpage");
	}
	ModelAndView mv=new ModelAndView();
	List<Art> arts=serv.getmyarts((String) sess.getAttribute("email"));
	mv.setViewName("sellarts");
	mv.addObject("arts",arts);
	sess.setAttribute("count", serv.getcountcitems((String) sess.getAttribute("email")));
	return mv;
}

@GetMapping("/approveartspage")
public ModelAndView approveartspage()
{
	ModelAndView mv=new ModelAndView();
	List<Art> arts=serv.getallarts2();
	mv.setViewName("approvearts");
	mv.addObject("arts",arts);
	return mv;
}

@GetMapping("/approveart/{id}")
public String approveart(@PathVariable("id")int id)
{
	serv.makeapprove(id);
	return "redirect:/approveartspage";
}

@GetMapping("/getallarts")
public ModelAndView getallarts(HttpServletRequest req,HttpServletResponse res) throws IOException
{
	HttpSession sess=req.getSession(false);
	if(sess.getAttribute("email")==null)
	{
		res.sendRedirect("loginpage");
	}
	ModelAndView mv=new ModelAndView();
	List<Art> arts=serv.getallarts();
	mv.setViewName("allarts");
	mv.addObject("arts",arts);
	return mv;
}

@GetMapping("/getmyarts")
public ModelAndView getmyarts(HttpServletRequest req,HttpServletResponse res) throws IOException
{
	HttpSession sess=req.getSession(false);
	if(sess.getAttribute("email")==null)
	{
		res.sendRedirect("loginpage");
	}
	ModelAndView mv=new ModelAndView();
	List<Art> arts=serv.getmyarts((String) sess.getAttribute("email"));
	mv.setViewName("allarts2");
	mv.addObject("arts",arts);
	return mv;
}

@GetMapping("/getart/{id}")
public ModelAndView getart(@PathVariable("id")int id,HttpServletRequest req,HttpServletResponse res) throws IOException
{
	HttpSession sess=req.getSession(false);
	if(sess.getAttribute("email")==null)
	{
		res.sendRedirect("/loginpage");
	}
	ModelAndView mv=new ModelAndView();
	Optional<Art> art=serv.getart(id);
	System.out.println(art.get());
	mv.setViewName("singleart");
	mv.addObject("arts",art.get());
	return mv;
}

@GetMapping("/deleteart/{id}")
public String deleteart(@PathVariable("id")int id)
{
	serv.deleteart(id);
	return "redirect:/sellartpage";
}

@PostMapping("/giverating")
public String giverating(@RequestParam("artid")String id,@RequestParam("star")String stars,HttpServletRequest req,HttpServletResponse res) throws IOException
{
	HttpSession sess=req.getSession(false);
	if(sess.getAttribute("email")==null)
	{
		res.sendRedirect("/loginpage");
	}
	int id2=Integer.parseInt(id);
	int stars2=Integer.parseInt(stars);
	serv.giverating(id2, stars2);
	return "redirect:/buyartspage";
}


@GetMapping("/addartpage2")
public String addartpage2()
{
	return "addart2";
}

@GetMapping("/buyartspage")
public ModelAndView buyartspage(HttpServletRequest req,HttpServletResponse res) throws IOException
{
	HttpSession sess=req.getSession(false);
	if(sess.getAttribute("email")==null)
	{
		res.sendRedirect("/loginpage");
	}
	ModelAndView mv=new ModelAndView();
	List<Art> l=serv.getallarts();
	mv.setViewName("buyarts");
	mv.addObject("arts",l);
	
	sess.setAttribute("count", serv.getcountcitems((String) sess.getAttribute("email")));
	return mv;
}

@GetMapping("/addtocart/{id}")
public String addtocart(@PathVariable("id")int id,HttpServletRequest req)
{
	HttpSession sess=req.getSession(false);
	String email=(String) sess.getAttribute("email");
	serv.addtocart(id, email);
	return "redirect:/showcart";
}

@GetMapping("/deletecartitem/{id}")
public String deletecartitem(@PathVariable("id")int id)
{
	serv.deletecartitem(id);
	return "redirect:/showcart";
}

@GetMapping("/test")
public void test(HttpServletRequest req,HttpServletResponse res) throws IOException
{
	HttpSession sess=req.getSession(false);
	String email=(String) sess.getAttribute("email");
	if(sess.getAttribute("email")==null)
	{
		res.sendRedirect("/loginpage");
	}
	serv.getcountcitems(email);
}

@GetMapping("/showcart")
public ModelAndView showcart(HttpServletRequest req,HttpServletResponse res) throws IOException
{
	HttpSession sess=req.getSession(false);
	String email=(String) sess.getAttribute("email");
	if(sess.getAttribute("email")==null)
	{
		res.sendRedirect("/loginpage");
	}
	List<Cart> re=serv.getallcartitems(email);
	int total=0;
	for(Cart i:re)
	{
		total+=i.getArt().getPrice();
	}
	ModelAndView mv=new ModelAndView();
	mv.setViewName("cart");
	mv.addObject("arts",re);
	mv.addObject("total",total);
	sess.setAttribute("count", serv.getcountcitems((String) sess.getAttribute("email")));
	return mv;
}



@PostMapping("/addP")
public ModelAndView saveProduct(@RequestParam("file") MultipartFile file,
		@RequestParam("pname") String name,
		@RequestParam("price") int price,
		@RequestParam("desc") String desc,HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
{
	HttpSession sess=req.getSession(false);
	String email=(String) sess.getAttribute("email");
	String owner=(String) sess.getAttribute("name");
	boolean status=serv.saveProductToDB(file,email,owner,name, desc, price);
	ModelAndView mv=new ModelAndView();
	if(status==false)
	{
		mv.setViewName("artadded");
		mv.addObject("status","Art already exists");
		return mv;
	}
	mv.setViewName("artadded");
	mv.addObject("status","Art Added Successfully.");
	return mv;
}
}
