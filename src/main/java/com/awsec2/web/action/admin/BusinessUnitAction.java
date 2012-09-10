package com.awsec2.web.action.admin;

import org.springframework.beans.factory.annotation.Autowired;

import com.awsec2.service.IBusinessUnitService;
import com.awsec2.web.action.BaseAction;
import com.opensymphony.xwork2.Preparable;

public class BusinessUnitAction extends BaseAction implements Preparable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	private IBusinessUnitService businessUnitService = null;
	public IBusinessUnitService getBusinessUnitService() {
		return businessUnitService;
	}
	public void setBusinessUnitService(IBusinessUnitService businessUnitService) {
		this.businessUnitService = businessUnitService;
	}
	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}

}
