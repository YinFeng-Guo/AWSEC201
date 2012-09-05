package com.awsec2.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.awsec2.domain.Product;
import com.awsec2.persistence.ProductMapper;
import com.awsec2.service.IProductService;

@Service
public class ProductServiceImpl implements IProductService{
	@Autowired
	private ProductMapper productMapper;
	@Override
	public List<Product> getProductsByUserId(int userId) {
		// TODO Auto-generated method stub
		return productMapper.getProductsByUserId(1);
	}
	@Override
	public void insertProduct(Product prod) {
		productMapper.insertProduct(prod);
	}
	@Override
	public void delProdById(long id) {
		productMapper.delProdById(id);
	}
	@Override
	public void updateProd(Product prod) {
		productMapper.updateProd(prod);
	}
	
	

}
