package com.awsec2.persistence;

import java.util.List;

import com.awsec2.domain.Movement;

public interface MovementMapper {

	List<Movement> findMovementsByMovement(Movement movement);
	List<Movement> getMovementsByOrgId(long orgId);
	Movement getMovementsByMovmId(long id);
	List<Movement> searchMovements(Movement movement);
	void insertMovement(Movement movement);
	void updateMovm(Movement movement);
	void delMovmById(long id);
}
