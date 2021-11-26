package com.EazyHome.www.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;

import com.EazyHome.www.Dto.Users;
import com.EazyHome.www.util.Constant;

public class MDao {
	JdbcTemplate template;
	
	public MDao() {
		this.template = Constant.template;
	}

	public void signup(final String email, final String pw, final String name,final String nic, final String phone,final String birth, final String postCode,final String address) {
		this.template.update(new PreparedStatementCreator(){
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String query = "insert into users(email,pw,name,address,phone,nic,birth,postcode) values(?,?,?,?,?,?,?,?)";
				PreparedStatement pstmt = con.prepareStatement(query);
				pstmt.setString(1, email);
				pstmt.setString(2, pw);
				pstmt.setString(3, name);
				pstmt.setString(4, address);
				pstmt.setString(5, phone);
				pstmt.setString(6, nic);
				pstmt.setString(7, birth);
				pstmt.setString(8, postCode);
				return pstmt;
			}
		});
	}

	public boolean login(final String email,final String pw) {
		Users dto = getMemInfo(email);
		if(dto!=null) {
			System.out.println("aa");
			if(dto.getPw().equals(pw)) return true;
		}
		return false;
	}
	
	public Users getMemInfo(String email) {
		String query="select * from users where email='"+email+"'";
		ArrayList<Users> list = (ArrayList<Users>) template.query(query, new BeanPropertyRowMapper<Users>(Users.class));
		
		if (list.size()==0) {System.out.println("null");return null;}
		System.out.println("not null");
		return list.get(0);
	}

}
