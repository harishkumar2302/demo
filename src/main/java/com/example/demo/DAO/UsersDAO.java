package com.example.demo.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Users;


@Repository
public class UsersDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	int id=100;
	public boolean insertUser(Users user)
	{
		String sql="insert into users(Firstname,Lastname,Password,Gender,DOB,Qualification,AnnualIncome,Phone_no,R_address,O_address,Mailid) values(?,?,?,?,?,?,?,?,?,?,?)";
		int flag=jdbcTemplate.update(sql,user.getFirstName(),user.getLastName(),user.getPassword(),user.getGender(),user.getDob(),user.getQualification(),user.getAnnualIncome(),user.getPhoneNumber(),user.getR_address(),user.getO_address(),user.getEmail());
		if(flag>0) {
			return true;
		}else {
			return false;
		}
	}
	
	public String userValidator(int id,String password)
	{
		String sql="select Userid,Password from users where Userid=? and Password=?";
		String result="";
		try
		{
		result = jdbcTemplate.queryForObject(sql, new RowMapper<String>() {
			
			public String mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				return rs.getString("Firstname");
			}
		},id,password);
		System.out.println(result);
			return result;
		}
		catch(Exception e) {
			return result;
		}
	}
}
