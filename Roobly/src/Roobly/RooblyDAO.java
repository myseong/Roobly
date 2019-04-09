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
	
	//������
	public RooblyDAO() {
		try {
			pool=DBConnectionMgr.getInstance();
		}catch(Exception e) {
			System.out.println("DB���� ����->"+e);
		}
	}
	
	//ȸ���߰�
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
			System.out.println("memberInsert()���� ��������->"+e);
		}finally {
			pool.freeConnection(con,pstmt);
		}
		return check;
	}
	
	//2)ȸ������->�ߺ� id�� üũ�� ���ִ� �޼��尡 �ʿ�
		public boolean checkId(String id) {
			//1.DB����
					boolean check=false;
					//2.�����ų SQL->��ȯ�� ó��
					try {
						con=pool.getConnection();
						sql="select id from member where  id=?";
						pstmt=con.prepareStatement(sql);
						pstmt.setString(1, id);
						rs=pstmt.executeQuery();
						check=rs.next();//�����Ͱ� ����->true, ������ ->false
					}catch(Exception e) {
						System.out.println("checkId()���� ��������->"+e);
					}finally {
						pool.freeConnection(con,pstmt,rs);
					}
					return check;
					//3.DB��������
		}
}
