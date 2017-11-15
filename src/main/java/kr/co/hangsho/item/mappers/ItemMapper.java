package kr.co.hangsho.item.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.item.vo.Item;

@Mapper
public interface ItemMapper {

	int getSeq();
	void addItem(Item item);
	List<Item> getItemListByNo(int itemNo);
	Item getItemByProductNo(int itemNo);
}
