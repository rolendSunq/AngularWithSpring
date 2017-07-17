package org.angularstudy.spring.services;

import java.util.List;
import java.util.Map;

import org.angularstudy.spring.mappers.SportsStoreMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SportsStoreService {
	@Autowired(required=false)
	private SportsStoreMapper mapper;
	
	public List<Map<String, String>> getSportsStoreService() throws Exception {
		return mapper.getProducts();
	}
	
	public Map<String, Object> isThisUserService(Map<String, Object> paramMap) throws Exception {
		return mapper.isThisUser(paramMap);
	}
}
