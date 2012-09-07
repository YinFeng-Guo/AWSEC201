package com.awsec2.web.action.admin;

import com.awsec2.domain.Movement;
import com.awsec2.service.IMovementService;
import com.awsec2.web.action.BaseAction;
import com.opensymphony.xwork2.Preparable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class MovementAction extends BaseAction implements Preparable {

	private List<Movement> movements;
	private Movement movement;
	/**
	 * 
	 */
	private static final long serialVersionUID = 5850906816763804411L;

	public List<Movement> getMovements() {
		return movements;
	}

	public void setMovements(List<Movement> movements) {
		this.movements = movements;
	}

	public Movement getMovement() {
		return movement;
	}

	public void setMovement(Movement movement) {
		this.movement = movement;
	}

	@Autowired
	private IMovementService imovementService;

	public String init() throws Exception {
		return "success";
	}

	public String query() throws Exception {
		System.out.println("abc");
		setMovements(imovementService.findMovementsByMovement(movement));
		System.out.println(movements);
		return "success";
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub

	}

	/**
	 * This method is used to load products by a given user's id
	 * 
	 * @author Bin Yuan
	 * @created 2012-09-04
	 * 
	 * 
	 @return String "success" or "error"
	 * 
	 @changelog 2012-09-04 Bin Yuan <bin.yuan@itbconsult.com> - Created
	 * 
	 */
	public String loadMovms() throws Exception {
		movements = imovementService.getMovementsByUserId();
		return SUCCESS;
	}

	/**
	 * This method is used to load product by a given Prod's id
	 * 
	 * @author Bin Yuan
	 * @created 2012-09-04
	 * 
	 * 
	 @return String "success" or "error"
	 * 
	 @changelog 2012-09-04 Bin Yuan <bin.yuan@itbconsult.com> - Created
	 * 
	 */
	public String loadMovmById() throws Exception {
		movement = imovementService.getMovementsByMovmId(movement.getId());
		return SUCCESS;
	}

	/**
	 * This method is used to foward to products add page
	 * 
	 * @author Bin Yuan
	 * @created 2012-09-05
	 * 
	 * 
	 @return String "success" or "error"
	 * 
	 @changelog 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com> - Created
	 * 
	 */
	public String addMovms() throws Exception {
		// products = productService.getProductsByUserId(1);
		// if(products != null) {
		// for(Product prod: products) {
		// System.out.println(prod.getName());
		// }
		// }
		return SUCCESS;
	}

	/**
	 * This method is used to commit products just added
	 * 
	 * @author Bin Yuan
	 * @created 2012-09-05
	 * 
	 * 
	 @return String "success" or "error"
	 * 
	 @changelog 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com> - Created
	 * 
	 */
	public String commitAddMovms() throws Exception {
		if(movement != null) {
			imovementService.insertMovement(movement);
		}
		if (movements != null) {
			imovementService.insertMovements(movements);
		} else
			System.out.println("null");
		return SUCCESS;
	}

	/**
	 * This method is used to edit products info for a special product
	 * 
	 * @author Bin Yuan
	 * @created 2012-09-05
	 * 
	 * 
	 @return String "success" or "error"
	 * 
	 @changelog 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com> - Created
	 * 
	 */
	public String modifyMovms() throws Exception {
		loadMovmById();
		return SUCCESS;
	}

	/**
	 * This method is used to commit updates for a product
	 * 
	 * @author Bin Yuan
	 * @created 2012-09-05
	 * 
	 * 
	 @return String "success" or "error"
	 * 
	 @changelog 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com> - Created
	 * 
	 */
	public String commitModifyMovms() throws Exception {
		if (movement != null) {
			imovementService.updateMovm(movement);

			// System.out.println(product.getName());

		}
		return SUCCESS;

	}

	/**
	 * This method is used to delete a product
	 * 
	 * @author Bin Yuan
	 * @created 2012-09-05
	 * 
	 * 
	 @return String "success" or "error"
	 * 
	 @changelog 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com> - Created
	 * 
	 */
	public String deleteMovms() throws Exception {
		imovementService.delMovmById(movement.getId());
		return SUCCESS;
	}

	/**
	 * This method is used to serach products based on given prod's name or\and
	 * prod's barcode
	 * 
	 * @author Bin Yuan
	 * @created 2012-09-05
	 * 
	 * 
	 @return String "success" or "error"
	 * 
	 @changelog 2012-09-05 Bin Yuan <bin.yuan@itbconsult.com> - Created
	 * 
	 */
	public String searchMovms() throws Exception {
		if (movement != null) {
			System.out.println(movement.getName());
			movements = imovementService.searchMovements(movement);
		} else
			System.out.println("Null");
		return SUCCESS;
	}

}
