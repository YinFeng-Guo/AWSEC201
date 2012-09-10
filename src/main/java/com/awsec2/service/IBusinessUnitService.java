package com.awsec2.service;

import java.util.ArrayList;
import java.util.List;

public interface IBusinessUnitService {
	public ArrayList<Long> getBUIdsByOrgId(long orgId);
}
