package kr.co.hangsho.item.service;

import java.util.List;
import java.util.Map;

import kr.co.hangsho.item.vo.Item;

public interface ItemService {


	void addNewItem(Item item);
	List<Item> getItemListByProductsNo(int itemNo);
	Item getItemByProductNo(int itemNo);
	List<Item> getItemsByCompanyId(Map<String, Object> map);
	int getTotalRows(Map<String, Object> map);
	
	List<Item> getItemListByProductNo(int productNo);
	List<Item> getItemsByProductId(int productId);
	Item deleteItemByItemId(int itemId);
	Item getItemByItemId(int itemId);
}

