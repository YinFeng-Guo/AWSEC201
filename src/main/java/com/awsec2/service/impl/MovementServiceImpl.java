package com.awsec2.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.awsec2.domain.Movement;
import com.awsec2.persistence.MovementMapper;
import com.awsec2.service.IMovementService;

@Service
public class MovementServiceImpl implements IMovementService{
	@Autowired
	MovementMapper movementMapper;
	
	@Override
	public List<Movement> findMovementsByMovement(Movement movement) {
		// TODO Auto-generated method stub
		return movementMapper.findMovementsByMovement(movement);
	}

}
