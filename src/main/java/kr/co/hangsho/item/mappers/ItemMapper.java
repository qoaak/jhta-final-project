package kr.co.hangsho.item.mappers;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.item.vo.Item;
import kr.co.hangsho.web.criteria.Criteria;

@Mapper
public interface ItemMapper {


	int getSeq();
	void addItem(Item item);
	Item getItemByProductNo(int itemNo);
	List<Item> getItems(Criteria criteria);
	List<Item> getItemsByComId(Map<String, Object> map);
	int getTotalRows(Map<String, Object> map);
	
	List<Item> getItemListByProductNo(int productNo);
	List<Item> getItemsByProductId(int productId);
	void deleteItemById(int Id);
	Item getItemById(int id);
}

