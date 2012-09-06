package com.awsec2.service;

import java.util.List;

import com.awsec2.domain.Organization;

public interface IOrganizationService {
	List<Organization> getOrganizationIdName();
}
