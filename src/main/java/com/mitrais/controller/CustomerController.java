package com.mitrais.controller;

import com.mitrais.entity.Customer;
import com.mitrais.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    private CustomerService customerService;

    public CustomerController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping(value = "/list")
    public String customerList(ModelMap model) {

        List<Customer> customerList = customerService.list();
        model.addAttribute("customers", customerList);

        return "customer-list";
    }

    @GetMapping("/add")
    public String addCustomer(ModelMap model) {

        Customer customer = new Customer();

        model.addAttribute("customer", customer);

        return "customer-form";
    }

    @PostMapping("/save")
    public String saveCustomer(@ModelAttribute("customer") Customer customer) {

        customerService.save(customer);

        return "redirect:/customer/list";
    }

    @GetMapping("/save")
    public String updateCustomer(@RequestParam("id") int id, ModelMap model) {

        Customer existCustomer = customerService.get(id);

        model.addAttribute("customer", existCustomer);

        return "customer-form";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("id") int id) {

        customerService.delete(id);

        return "redirect:/customer/list";
    }
}
