package org.angularstudy.spring.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.angularstudy.spring.services.ObjectToXml;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/angularjs/")
public class ProductDataController {
	private static final Logger logger = LoggerFactory.getLogger(ProductDataController.class);

	@RequestMapping("productData.json")
	public @ResponseBody String getProductDataCtrl(Model model) throws Exception{
		ArrayList<Map<String, Object>> arrayList = new ArrayList<Map<String, Object>>();
		Map<String, Object> fruitInfoMap = null;

		for (int i = 0; i < 9; i++) {
			fruitInfoMap = new HashMap<String, Object>();
			switch (i) {
			case 0:
				fruitInfoMap.put("name", "Apples");
			 	fruitInfoMap.put("category", "Fruit");
			 	fruitInfoMap.put("price", 1.20);
			 	fruitInfoMap.put("expiry", 10);
			 	arrayList.add(fruitInfoMap);
				break;
			case 1:
				fruitInfoMap.put("name", "Bananas");
				fruitInfoMap.put("category", "Fruit");
				fruitInfoMap.put("price", 2.42);
				fruitInfoMap.put("expiry", 7);
				arrayList.add(fruitInfoMap);
				break;
			case 2:
				fruitInfoMap.put("name", "Pears");
				fruitInfoMap.put("category", "Fruit");
				fruitInfoMap.put("price", 2.02);
				fruitInfoMap.put("expiry", 6);
				arrayList.add(fruitInfoMap);
				break;
			case 3:
				fruitInfoMap.put("name", "Tuna");
				fruitInfoMap.put("category", "Fish");
				fruitInfoMap.put("price", 20.45);
				fruitInfoMap.put("expiry", 3);
				arrayList.add(fruitInfoMap);
			case 4:
				fruitInfoMap.put("name", "Salmon");
				fruitInfoMap.put("category", "Fish");
				fruitInfoMap.put("price", 17.93);
				fruitInfoMap.put("expiry", 2);
				arrayList.add(fruitInfoMap);
				break;
			case 5:
				fruitInfoMap.put("name", "Trout");
				fruitInfoMap.put("category", "Fish");
				fruitInfoMap.put("price", 12.93);
				fruitInfoMap.put("expiry", 4);
				arrayList.add(fruitInfoMap);
				break;
			case 6:
				fruitInfoMap.put("name", "Beer");
				fruitInfoMap.put("category", "Drinks");
				fruitInfoMap.put("price", 2.99);
				fruitInfoMap.put("expiry", 365);
				arrayList.add(fruitInfoMap);
				break;
			case 7:
				fruitInfoMap.put("name", "Wine");
				fruitInfoMap.put("category", "Drinks");
				fruitInfoMap.put("price", 8.99);
				fruitInfoMap.put("expiry", 365);
				arrayList.add(fruitInfoMap);
				break;
			case 8:
				fruitInfoMap.put("name", "Whiskey");
				fruitInfoMap.put("category", "Drinks");
				fruitInfoMap.put("price", 45.99);
				fruitInfoMap.put("expiry", 365);
				arrayList.add(fruitInfoMap);
				break;
			}
		}

		ObjectMapper mapper = new ObjectMapper();
		String data = mapper.writeValueAsString(arrayList);
		logger.info(data);
		logger.info("xml Object::::" + new ObjectToXml().executeObject());
		return data;
	}

	@RequestMapping("productsData")
	public @ResponseBody String getProductsDataCtrl(Model model) throws Exception{
		List<Map<String, Object>> list = new ArrayList<>();
		Map<String, Object> map;

		for (int i = 0; i < 3; i++) {
			map = new HashMap<>();
			switch (i) {
			case 0:
				map.put("id", 0);
				map.put("name", "Dummy1");
				map.put("category", "Test");
				map.put("price", 1.25);
				break;
			case 1:
				map.put("id", 1);
				map.put("name", "Dummy2");
				map.put("category", "Test");
				map.put("price", 2.45);
				break;
			case 2:
				map.put("id", 3);
				map.put("name", "Dummy3");
				map.put("category", "Test");
				map.put("price", 4.25);
				break;
			}
			list.add(map);
		}
		ObjectMapper mapper = new ObjectMapper();
		String data = mapper.writeValueAsString(list);
		logger.info(data);
		return data;
	}

	@RequestMapping(value="productsData{0-9}", method=RequestMethod.DELETE, name="delete")
	public @ResponseBody String deleteCtrl(String id) throws Exception{
		logger.info("id::::" + id);
		Map<String, Object> jsonMap = new HashMap<>();
		jsonMap.put("message", "delete success");
		jsonMap.put("id", id);
		ObjectMapper mapper = new ObjectMapper();
		String data = mapper.writeValueAsString(jsonMap);
		return data;
	}
}
