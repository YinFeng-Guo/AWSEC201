package com.awsec2.service;

import java.util.List;

import com.awsec2.domain.Movement;

public interface IMovementService {

	List<Movement> findMovementsByMovement(Movement movement);

}
