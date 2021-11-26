package com.EazyHome.www.Dao;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.EazyHome.www.Dto.Item;
import com.EazyHome.www.util.Constant;

public class HDao {
	JdbcTemplate template;
	public HDao() {
		this.template=Constant.template;
	}
	public Item getItemDetail() {
		String query="select * from item where itemcode=2";
		Item item = (Item)template.queryForObject(query,new BeanPropertyRowMapper<Item>(Item.class));
		return item;
	}

}
