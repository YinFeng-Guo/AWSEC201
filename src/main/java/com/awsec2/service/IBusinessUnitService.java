package com.awsec2.service;

import java.util.List;

public interface IBusinessUnitService {
	public List<Long> getBUIdsByOrgId(long orgId);
}
