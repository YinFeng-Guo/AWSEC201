package com.awsec2.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.awsec2.domain.Organization;
import com.awsec2.persistence.OrganizationMapper;
import com.awsec2.service.IOrganizationService;

@Service
public class OrganizationImpl implements IOrganizationService {

	@Autowired
	private OrganizationMapper organizationMapper;
	
	@Override
	public List<Organization> getOrganizationIdName() {
		if(organizationMapper == null){
			System.out.println("organizationMapper is null");
		}else{
			System.out.println("organizationMapper is not null");
		}
		List<Organization> organizations = null;
		organizations = organizationMapper.getOrganizationIdName();
		if(organizations == null){
			System.out.println("In Org Mapper organizations is null");
			return new ArrayList<Organization>();
		}
		return organizations;
		//return organizationMapper.getOrganizaionIdName();
	}

}
