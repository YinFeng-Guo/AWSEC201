package com.awsec2.persistence;

import java.util.List;
import java.util.Map;


public interface BusinessUnitMapper {
	List getBUIdsByOrgId(long orgId);
}
