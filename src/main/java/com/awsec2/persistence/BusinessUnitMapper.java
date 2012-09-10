package com.awsec2.persistence;

import java.util.List;

public interface BusinessUnitMapper {
	List<Long> getBUIdsByOrgId(long orgId);
}
