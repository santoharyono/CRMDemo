package com.mitrais.dao;

import com.mitrais.entity.Customer;

import java.util.List;

public interface CustomerDao {

    public List<Customer> getCustomers();

    public void save(Customer customer);

    public Customer get(int id);

    public void delete(int id);
}
