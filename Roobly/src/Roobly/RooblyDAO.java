package Roobly;

import java.sql.*;
import java.util.*;

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
}
