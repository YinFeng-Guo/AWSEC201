package com.awsec2.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.awsec2.persistence.BusinessUnitMapper;
import com.awsec2.service.IBusinessUnitService;

public class BusinessUnitServiceImpl implements IBusinessUnitService{
	@Autowired
	private BusinessUnitMapper businessUnitMapper;
	@Override
	public List<Long> getBUIdsByOrgId(long orgId) {
		return businessUnitMapper.getBUIdsByOrgId(orgId);
	}

}
