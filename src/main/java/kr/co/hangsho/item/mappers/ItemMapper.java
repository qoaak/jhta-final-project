package kr.co.hangsho.item.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.item.vo.Item;
import kr.co.hangsho.web.criteria.Criteria;

@Mapper
public interface ItemMapper {

	int getSeq();
	void addItem(Item item);
	Item getItemByProductNo(int itemNo);
	List<Item> getItems(Criteria criteria);
}
