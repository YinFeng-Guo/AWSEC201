package com.awsec2.web.action.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.awsec2.domain.Product;
import com.awsec2.service.IProductService;
import com.awsec2.web.action.BaseAction;
import com.opensymphony.xwork2.Preparable;

public class ProductAction  extends BaseAction implements Preparable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8308945005668344502L;
	@Autowired
	private IProductService productService = null;
	private Product product = null;
	private List<Product> products = null;
	
	public IProductService getProductService() {
		return productService;
	}
	public void setProductService(IProductService productService) {
		this.productService = productService;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	public String loadProds() throws Exception {
		products = productService.getProductsByUserId(1);
		if(products != null) {
			for(Product prod: products) {
				System.out.println(prod.getName());
			}
		}
		return SUCCESS;
	}
	

}
