package com.klef.demo;

import org.springframework.data.repository.CrudRepository;

public interface PaymentRepository extends CrudRepository<PaymentHistory,Integer> {

}
