package com.awsec2.service;

import java.util.HashMap;
import java.util.List;

import com.awsec2.domain.Movement;

public interface IMovementService {

	public List<Movement> findMovementsByMovement(Movement movement);
	public List<Movement> getMovementsByOrgId(long OrgId);
	public Movement getMovementsByMovmId(long id);
	public List<Movement> searchMovements(HashMap<String, Object> searchMap);
	public void insertMovements(List<Movement> movements);
	public void insertMovement(Movement movement);
	public void updateMovm(Movement movement);
	public void delMovmById(long id);

}
