package com.awsec2.service;

import java.util.List;

import com.awsec2.domain.Product;

public interface IProductService {
	public List<Product> getProductsByUserId(int userId);
	
	public void insertProduct(Product prod);
	
	public void delProdById(long id);
	
	public void updateProd(Product prod);
}
