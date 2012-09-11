package com.awsec2.service;

import java.util.ArrayList;
import java.util.List;

import com.awsec2.domain.Product;

public interface IProductService {
	public List<Product> getProductsByOrgId(long userId);
	
	public void insertProduct(Product prod);
	
	public void delProdById(long id);
	
	public void updateProd(Product prod);
	
	public Product getProductsByProdId(long id);
	
	public void insertProducts(List<Product> prods);
	
	public List<Product> searchProducts(Product prod);
	
	public ArrayList getProdIdsByOrgId(long org_Id);
	
}
