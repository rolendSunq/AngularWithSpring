package org.angularstudy.spring.mappers;

import java.util.List;
import java.util.Map;

public interface SportsStoreMapper {
	public List<Map<String, String>> getProducts() throws Exception;
	public Map<String, Object> isThisUser(Map<String, Object> paramMap) throws Exception;
}
