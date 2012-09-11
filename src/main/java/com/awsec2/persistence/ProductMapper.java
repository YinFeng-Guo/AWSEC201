package com.awsec2.persistence;

import java.util.ArrayList;
import java.util.List;

import com.awsec2.domain.Product;

public interface ProductMapper {
	List<Product> getProductsByOrgId(long OrgId);
	void insertProduct(Product prod);
	void insertProducts(List<Product> prods);
	void delProdById(long id);
	void updateProd(Product prod);
	Product getProductsByProdId(long id);
	
	List<Product> searchProducts(Product prod);
	ArrayList<Long> getProdIdsByOrgId(long org_Id);
}
