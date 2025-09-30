package com.example.demo;

import java.util.List;
import java.util.ArrayList;
import org.springframework.stereotype.Service;

@Service
public class ProductService implements IProductService
{

	@Override
	public List<Product> findAll() {
		
		ArrayList<Product>products=new ArrayList<Product>();
		products.add(new Product(1001,"mobile1","mobile2",1000.00,6));
		products.add(new Product(1002,"mobile2","mobile2",3000.00,6));
		products.add(new Product(1003,"mobile3","mobile2",1000.00,10));
		return products;
	}
   
}
