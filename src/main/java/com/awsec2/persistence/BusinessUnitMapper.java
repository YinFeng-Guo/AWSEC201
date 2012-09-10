package com.awsec2.persistence;

import java.util.ArrayList;
import java.util.List;

public interface BusinessUnitMapper {
	ArrayList<Long> getBUIdsByOrgId(long orgId);
}
