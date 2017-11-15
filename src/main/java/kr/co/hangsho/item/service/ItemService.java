package kr.co.hangsho.item.service;

import java.util.List;
import kr.co.hangsho.item.vo.Item;

public interface ItemService {

	void addNewItem(Item item);
	List<Item> getItemListByProductsNo(int itemNo);
	Item getItemByProductNo(int itemNo);
}
