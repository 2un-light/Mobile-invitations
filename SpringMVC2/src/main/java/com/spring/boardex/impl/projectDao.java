package com.spring.boardex.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.instrument.classloading.jboss.JBossLoadTimeWeaver;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.spring.boardex.common.JdbcUtil;

@Repository("projectDaoSpring")
public class projectDao {
   Connection conn=null;
   PreparedStatement pstmt=null;
   ResultSet rs=null;
   
   @Autowired
   JdbcTemplate jdbcTemplate;
   
   public void insertBoard(projectDo pdo) {
      System.out.println("insertBoard()(Spring JDBC) => Start !!");
      String sql = "insert into wedding (title, part, writer, content) "
              + "values (?,?,?,?)";
      jdbcTemplate.update(sql, pdo.getTitle(), pdo.getGroup(), pdo.getWriter(), pdo.getContent());
      System.out.println("insertBoard()(Spring JDBC) => End !!");
      
   }
      
   
   public projectDo getBoard(projectDo pdo) {
      System.out.println("getBoard()(Spring JDBC) ==> ");      
      String sql = "select * from wedding where seq=?";
      Object[] args = {pdo.getSeq()};
      return jdbcTemplate.queryForObject(sql, args, new BoardRowMapper());
      
   }
   
   
   public ArrayList<projectDo> getBoardList(){      
      System.out.println("getBoardList()(Spring JDBC) ==> ");      
      String sql = "select * from wedding";  
      Object[] args = {};
      return (ArrayList<projectDo>) jdbcTemplate.query(sql, args, new BoardRowMapper());      
   }
   
   public void updateBoard(projectDo pdo) {      
      System.out.println("updateBoard()(Spring JDBC) ==> ");
      String sql = "update wedding set title=?, content=? where seq=?";
      jdbcTemplate.update(sql, pdo.getTitle(), pdo.getContent(), pdo.getSeq());
      
   }
   
   public void  deleteBoard(projectDo pdo) {
      System.out.println("deleteBoard()(Spring JDBC) ==> ");
      
      //DB 연결
      String sql = "delete from wedding where seq=?";
     jdbcTemplate.update(sql,pdo.getSeq());
      
   }
   
   
   //6장 19p
   public ArrayList<projectDo> searchBoardList(String searchCon, String searchKey) {
         System.out.println("searchBoardList()(Spring JDBC) ==> ");
        
         String sql="";
         if(searchCon.equals("writer")) {
            sql = "select * from wedding where writer=? order by seq desc;";
         }
         else if(searchCon.equals("part")) {
            sql = "select * from wedding where part=? order by seq desc;";
         }
         Object [] args = {searchKey};
         return (ArrayList<projectDo>) jdbcTemplate.query(sql, args, new BoardRowMapper());
         
}



}


class BoardRowMapper implements RowMapper<projectDo>{

	@Override
	public projectDo mapRow(ResultSet rs, int rowNum) throws SQLException {
		System.out.println("mapRow()(Spring JDBC 처리)==> ");
		
		projectDo pdo = new projectDo();
		pdo.setSeq(rs.getInt(1));
		pdo.setTitle(rs.getString(2));
		pdo.setGroup(rs.getString(3));
		pdo.setWriter(rs.getString(4));
		pdo.setContent(rs.getString(5));
		pdo.setRegdate(rs.getTimestamp(6));
		
		return pdo;
	}
	
	
}