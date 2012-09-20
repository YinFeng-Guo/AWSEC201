package com.awsec2.web.action.admin;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.awsec2.domain.Product;
import com.awsec2.domain.User;
import com.awsec2.service.IProductService;
import com.awsec2.service.IUserService;
import com.awsec2.web.action.BaseAction;
import com.opensymphony.xwork2.Preparable;

public class ProductAction  extends BaseAction implements Preparable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8308945005668344502L;
	@Autowired
	private IProductService productService = null;
	@Autowired
	private IUserService userService = null;
	
	public IUserService getUserService() {
		return userService;
	}
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	private User user = null;

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
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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
	/**
	 * This method is used to load products by a given user's id
	 *
	 @author Bin Yuan
	 @created 2012-09-04
	 *
	 *
	 @return 	String		"success" or "error"
	 *
	 @changelog
	 * 2012-09-04 Bin Yuan <bin.yuan@itbconsult.com>
	 * - Created
	 * 
	 */
	public String getSessionUserName() throws Exception {
//		products = productService.getProductsByUserId(1);
		String username = null;
		HttpServletRequest req = ServletActionContext.getRequest();
		if(req != null) {
			HttpSession session = req.getSession();
			if(session.getAttribute("username") != null){
				username = (String) session.getAttribute("username");
			}
		}
		return username;
	}
	/**
	 * This method is used to load products by a given user's id
	 *
	 @author Bin Yuan
	 @created 2012-09-04
	 *
	 *
	 @return 	String		"success" or "error"
	 *
	 @changelog
	 * 2012-09-04 Bin Yuan <bin.yuan@itbconsult.com>
	 * - Created
	 * 
	 */
	public void getUserOrgId() throws Exception {
//		products = productService.getProductsByUserId(1);
		if(user == null) {
			setUser(userService.getUserByUsername(getSessionUserName()));
		}
	}
	/**
	 * This method is used to load products by a given user's id
	 *
	 @author Bin Yuan
	 @created 2012-09-04
	 *
	 *
	 @return 	String		"success" or "error"
	 *
	 @changelog
	 * 2012-09-04 Bin Yuan <bin.yuan@itbconsult.com>
	 * - Created
	 * 
	 */
	public String loadProds() throws Exception {
		getUserOrgId();
		products = productService.getProductsByOrgId(user.getOrganization_id());
		setProduct(null);
		return SUCCESS;
	}
	
	/**
	 * This method is used to load product by a given Prod's id
	 *
	 @author Bin Yuan
	 @created 2012-09-04
	 *
	 *
	 @return 	String		"success" or "error"
	 *
	 @changelog
	 * 2012-09-04 Bin Yuan <bin.yuan@itbconsult.com>
	 * - Created
	 * 
	 */
	public String loadProdById() throws Exception {
		System.out.println("12312341"+product.getId());
		product = productService.getProductsByProdId(product.getId());
		return SUCCESS;
	}
	
	/**
	 * This method is used to foward to products add page
	 *
	 @author Bin Yuan
	 @created 2012-09-05
	 *
	 *
	 @return 	String		"success" or "error"
	 *
	 @changelog
	 * 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com>
	 * - Created
	 * 
	 */
	public String addProds() throws Exception {

		return SUCCESS;
	}
	/**
	 * This method is used to commit products just added
	 *
	 @author Bin Yuan
	 @created 2012-09-05
	 *
	 *
	 @return 	String		"success" or "error"
	 *
	 @changelog
	 * 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com>
	 * - Created
	 * 
	 */
	public String commitAddProds() throws Exception {
		List<Product> prods2Update = new ArrayList<Product>();
		getUserOrgId();
		if(product != null) {
			product.setOrganization_id(user.getOrganization_id());
			prods2Update.add(product);
			productService.insertProducts(prods2Update);
			System.out.println("Insert product");
		}
		if(products != null) {
			for(Product prod : products) {
				prod.setOrganization_id(user.getOrganization_id());
				prods2Update.add(prod);
			}
			productService.insertProducts(prods2Update);
		}
		
		else System.out.println("null");
		setProduct(null);
		return SUCCESS;
	}
	
	/**
	 * This method is used to edit products info for a special product
	 *
	 @author Bin Yuan
	 @created 2012-09-05
	 *
	 *
	 @return 	String		"success" or "error"
	 *
	 @changelog
	 * 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com>
	 * - Created
	 * 
	 */
	public String modifyProds() throws Exception {
		loadProdById();
		return SUCCESS;
	}
	
	/**
	 * This method is used to edit products info for a special product
	 *
	 @author Bin Yuan
	 @created 2012-09-05
	 *
	 *
	 @return 	String		"success" or "error"
	 *
	 @changelog
	 * 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com>
	 * - Created
	 * 
	 */
	public String loadProdsById() throws Exception {
		loadProdById();
		return SUCCESS;
	}
	
	/**
	 * This method is used to commit updates for a product
	 *
	 @author Bin Yuan
	 @created 2012-09-05
	 *
	 *
	 @return 	String		"success" or "error"
	 *
	 @changelog
	 * 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com>
	 * - Created
	 * 
	 */
	public String commitModifyProds() throws Exception {
		if(product != null) {
			productService.updateProd(product);
			
//			System.out.println(product.getName());
			
		}
		setProduct(null);
		return SUCCESS;

	}
	
	/**
	 * This method is used to delete a product
	 *
	 @author Bin Yuan
	 @created 2012-09-05
	 *
	 *
	 @return 	String		"success" or "error"
	 *
	 @changelog
	 * 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com>
	 * - Created
	 * 
	 */
	public String deleteProds() throws Exception {
		productService.delProdById(product.getId());
		return SUCCESS;
	}
	/**
	 * This method is used to serach products based on given prod's name or\and prod's barcode
	 *
	 @author Bin Yuan
	 @created 2012-09-05
	 *
	 *
	 @return 	String		"success" or "error"
	 *
	 @changelog
	 * 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com>
	 * - Created
	 * 
	 */
	public String searchProds() throws Exception {
		getUserOrgId();
		if(product != null) {
			product.setOrganization_id(user.getOrganization_id());
			product.setName(new String(product.getName().getBytes("ISO-8859-1"),"UTF-8"));
			product.setBarcode(new String(product.getBarcode().getBytes("ISO-8859-1"),"UTF-8"));
			products = productService.searchProducts(product);
			product = null;
		}
		else System.out.println("Null");
		return SUCCESS;
	}
}
