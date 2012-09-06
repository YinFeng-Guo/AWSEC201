package com.awsec2.web.action.admin;

import com.awsec2.domain.Movement;
import com.awsec2.service.IMovementService;
import com.awsec2.web.action.BaseAction;
import com.opensymphony.xwork2.Preparable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class MovementAction  extends BaseAction implements Preparable{

	private List<Movement> list_movements;
	private Movement movement;
	/**
	 * 
	 */
	private static final long serialVersionUID = 5850906816763804411L;

	@Autowired
	private IMovementService imovementService;
	
	public String init() throws Exception{
		return "success";
	}
	
	public String query() throws Exception {
		System.out.println("abc");
		setList_movements(imovementService.findMovementsByMovement(movement));
		System.out.println(list_movements);
		return "success";
	}
	
	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}

	public List<Movement> getList_movements() {
		return list_movements;
	}

	public void setList_movements(List<Movement> list_movements) {
		this.list_movements = list_movements;
	}

	public Movement getMovement() {
		return movement;
	}

	public void setMovement(Movement movement) {
		this.movement = movement;
	}

}
