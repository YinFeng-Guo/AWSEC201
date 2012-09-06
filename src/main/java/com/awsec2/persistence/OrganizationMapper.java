package com.awsec2.persistence;

import java.util.List;

import com.awsec2.domain.Organization;

public interface OrganizationMapper {
	List<Organization> getOrganizationIdName();
}
