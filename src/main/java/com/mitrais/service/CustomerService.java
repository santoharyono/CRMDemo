package com.mitrais.service;

import com.mitrais.dao.CustomerDao;
import com.mitrais.entity.Customer;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class CustomerService {

    private CustomerDao customerDao;

    public CustomerService(CustomerDao customerDao) {
        this.customerDao = customerDao;
    }

    public List<Customer> list() {
        return customerDao.getCustomers();
    }

    @Transactional
    public void save(Customer customer) {
        customerDao.save(customer);
    }

    @Transactional
    public Customer get(int id) {
        Customer customer = customerDao.get(id);

        return  customer;
    }

    @Transactional
    public void delete(int id) {
        customerDao.delete(id);

    }
}
