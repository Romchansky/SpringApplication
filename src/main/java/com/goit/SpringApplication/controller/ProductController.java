package com.goit.SpringApplication.controller;

import com.goit.SpringApplication.entity.Manufacturer;
import com.goit.SpringApplication.entity.Product;
import com.goit.SpringApplication.service.ManufacturerService;
import com.goit.SpringApplication.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Controller
@RequestMapping(path = "/product")
public class ProductController {

    private final ProductService service;
    private final ManufacturerService manufacturerService;

    @GetMapping(path = "/findProductByManufacturerId")
    public ModelAndView showProductsByManufacturerIdPage(@RequestParam(name = "id") Long id, ModelAndView model) {
        Optional<Product> product = service.findById(id);
        Long manufacturerDTO = product.get().getManufacturer().getId();
        Optional<Manufacturer> manufacturer = manufacturerService.findById(manufacturerDTO);
        model.addObject("product", product);
        model.addObject("manufacturer", manufacturerDTO);
        model.setViewName("findProductsByManufacturerId");
        return model;
    }

    @GetMapping(path = "/findProductById")
    public ModelAndView showProductById(@RequestParam(name = "id") Long id, ModelAndView model) {
        Optional<Product> product = service.findById(id);
        model.addObject("product", product);
        model.setViewName("findProductById");
        return model;
    }

    @GetMapping(path = "/findAllProducts")
    public ModelAndView showFindAllProductsPage(ModelAndView model) {
        List<Product> products =  service.findAll();
        model.addObject("products", products);
        model.setViewName("findAllProduct");
        return model;
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping(path = "/form/add")
    public String showAddProductPage() {
        return "addProductForm";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @PostMapping(path = "/addProduct")
    public RedirectView addProduct(@ModelAttribute("product") Product product) {
        service.save(product);
        return new RedirectView("/product/findAllProducts");
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping(path = "/form/update")
    public String showUpdateProductPage(@RequestParam("id") Long id, Model model) {
        Optional<Product> products = service.findById(id);
        model.addAttribute("product", products);
        return "updateProductForm";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @PostMapping(path = "/update")
    public RedirectView updateProduct(@ModelAttribute("product") Product product) {
        service.save(product);
        return new RedirectView("/product/findAllProducts");
    }

    @ModelAttribute(name = "product")
    public Product defaultProduct() {
        return new Product();
    }
}

