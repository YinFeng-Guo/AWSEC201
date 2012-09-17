package com.awsec2.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.awsec2.persistence.BusinessUnitMapper;
import com.awsec2.service.IBusinessUnitService;

@Service
public class BusinessUnitServiceImpl implements IBusinessUnitService {
	@Autowired
	private BusinessUnitMapper businessUnitMapper;

	@Override
	public ArrayList getBUIdsByOrgId(long orgId) {
		ArrayList list = (ArrayList)businessUnitMapper.getBUIdsByOrgId(orgId);
		ArrayList list2Return = new ArrayList();
		HashMap map = new HashMap();
		for(int i=0; i<list.size();i++) {
			map = (HashMap)list.get(i);
			if(map != null ) {
				if((long)map.get("id") != 0 && map.get("id") != null) {
					System.out.println("(long)map.get"+ (long)map.get("id"));
					list2Return.add((long)map.get("id"));
				}

			}
			
		}
		return list2Return;
	}

}
