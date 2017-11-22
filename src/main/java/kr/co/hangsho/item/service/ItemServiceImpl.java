package kr.co.hangsho.item.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangsho.images.mappers.ImageMapper;
import kr.co.hangsho.images.vo.Image;
import kr.co.hangsho.item.mappers.ItemMapper;
import kr.co.hangsho.item.vo.Item;

@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemMapper itemMapper;
	
	@Autowired
	private ImageMapper imageMapper;

	@Override
	public Item getItemByProductNo(int itemNo) {
		
		return itemMapper.getItemByProductNo(itemNo);
	}
	@Override
	public void addNewItem(Item item) {

		int imageNo = imageMapper.getSeq();
		Image image = item.getImage();
		image.setId(imageNo);
		imageMapper.addImage(image);

		int itemSeq = itemMapper.getSeq();
		item.setId(itemSeq);
		
		itemMapper.addItem(item);
	}

	@Override
	public List<Item> getItemListByProductsNo(int itemNo) {
		return null;
	}
	@Override
	public List<Item> getItemsByCompanyId(Map<String, Object> map) {
		return itemMapper.getItemsByComId(map);
	}
	@Override
	public int getTotalRows(Map<String, Object> map) {
		return itemMapper.getTotalRows(map);
	}
	

	@Override
	public Item deleteItemByItemId(int itemId) {
		
		Item item = itemMapper.getItemById(itemId);
		
		int imageId = item.getImage().getId();
		imageMapper.deleteImageById(imageId);
		
		itemMapper.deleteItemById(itemId);
		return item;
	}
	@Override
	public Item getItemByItemId(int itemId) {
		return itemMapper.getItemById(itemId);
	}
	@Override
	public List<Item> getItemsByProductId(int productId) {
		return itemMapper.getItemsByProductId(productId);
	}
	
	@Override
	public List<Item> getItemListByProductNo(int productNo) {
	      
	   return itemMapper.getItemListByProductNo(productNo);
	}
}
