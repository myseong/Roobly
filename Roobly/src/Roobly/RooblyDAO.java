package Roobly;

import java.sql.*;
import java.util.*;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class RooblyDAO {

	private DBConnectionMgr pool=null;
	
	private Connection con=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	private String sql="";
	
	//생성자
	public RooblyDAO() {
		try {
			pool=DBConnectionMgr.getInstance();
		}catch(Exception e) {
			System.out.println("DB연결 실패->"+e);
		}
	}
	
	//회원추가
	public boolean memberInsert(MemberDTO mem) {
		
		boolean check=false;
		try {
			con=pool.getConnection();
			con.setAutoCommit(false);
			pstmt=con.prepareStatement("insert into member values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1,mem.getId());
			pstmt.setString(2,mem.getPasswd());
			pstmt.setString(3,mem.getName());
			pstmt.setString(4,mem.getNick());
			pstmt.setString(5,mem.getEmail());
			pstmt.setString(6,mem.getPhone());
			pstmt.setString(7,mem.getZipcode());
			pstmt.setString(8,mem.getAddress());
			
			int insert=pstmt.executeUpdate();
			con.commit();
			if(insert > 0) {
				check=true;
			}
		}catch(Exception e) {
			System.out.println("memberInsert()실행 에러유발->"+e);
		}finally {
			pool.freeConnection(con,pstmt);
		}
		return check;
	}
	
	//2)회원가입->중복 id를 체크인 해주는 메서드가 필요
		public boolean checkId(String id) {
			//1.DB연결
					boolean check=false;
					//2.실행시킬 SQL->반환값 처리
					try {
						con=pool.getConnection();
						sql="select id from member where  id=?";
						pstmt=con.prepareStatement(sql);
						pstmt.setString(1, id);
						rs=pstmt.executeQuery();
						check=rs.next();//데이터가 존재->true, 없으면 ->false
					}catch(Exception e) {
						System.out.println("checkId()실행 에러유발->"+e);
					}finally {
						pool.freeConnection(con,pstmt,rs);
					}
					return check;
					//3.DB연결해제
		}
}
