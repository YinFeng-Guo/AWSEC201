package com.awsec2.persistence;

import java.util.List;

import com.awsec2.domain.Movement;

public interface MovementMapper {

	List<Movement> findMovementsByMovement(Movement movement);

}
