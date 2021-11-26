package com.EazyHome.www.Dao;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;

import com.EazyHome.www.Dto.Item;
import com.EazyHome.www.util.Constant;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;

public class ADao {
	JdbcTemplate template;
	public ADao(){
		this.template=Constant.template;
	}
	public void addItem(final Item itembean) {
		this.template.update(new PreparedStatementCreator(){
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String query = "insert into item(itemCode,itemName,price,stock,count,itemInfo,itemFile) values(?,?,?,?,?,?,?)";
				PreparedStatement pstmt = con.prepareStatement(query);
				pstmt.setString(1, itembean.getItemCode());
				pstmt.setString(2, itembean.getItemName());
				pstmt.setInt(3, itembean.getPrice());
				pstmt.setInt(4, itembean.getStock());
				pstmt.setInt(5, itembean.getCount());
				pstmt.setString(6, itembean.getItemInfo());
				pstmt.setString(7, itembean.getItemFile());
				return pstmt;
			}
		});
	}
}
