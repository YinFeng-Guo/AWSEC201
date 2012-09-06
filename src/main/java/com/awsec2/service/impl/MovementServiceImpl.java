package com.awsec2.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.awsec2.domain.Movement;
import com.awsec2.persistence.MovementMapper;
import com.awsec2.service.IMovementService;

public class MovementServiceImpl implements IMovementService{
	@Resource
	MovementMapper movementMapper;
	
	@Override
	public List<Movement> findMovementsByMovement(Movement movement) {
		// TODO Auto-generated method stub
		return movementMapper.findMovementsByMovement(movement);
	}

}
