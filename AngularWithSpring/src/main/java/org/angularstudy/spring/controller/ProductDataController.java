package org.angularstudy.spring.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
		
		return data;
	}

}
