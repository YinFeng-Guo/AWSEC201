package com.awsec2.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
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
	public List<Product> getProductsByOrgId(long userId) {
		// TODO Auto-generated method stub
		return productMapper.getProductsByOrgId(userId);
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
	@Override
	public Product getProductsByProdId(long id) {
		return productMapper.getProductsByProdId(id);
	}
	@Override
	public void insertProducts(List<Product> prods) {
		productMapper.insertProducts(prods);
	}
	@Override
	public List<Product> searchProducts(Product prod) {
		System.out.println("~~~~~~~~~~"+prod.getName());
		return productMapper.searchProducts(prod);		
	}
	@Override
	public ArrayList<Long> getProdIdsByOrgId(long org_Id) {
		ArrayList list = (ArrayList) productMapper.getProdIdsByOrgId(org_Id);
		ArrayList list2Return = new ArrayList();
		HashMap map = new HashMap();
		for(int i=0; i<list.size();i++) {
			map = (HashMap)list.get(i);
			list2Return.add((long)map.get("id"));
		}
		return list2Return;
	}

	
	

}
