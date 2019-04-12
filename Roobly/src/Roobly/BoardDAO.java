package Roobly;

//DBConnectionMgr(DB����,����), BoardDTO(�Ű�����,��ȯ��)
import java.sql.*;//DB���
import java.util.*;//ArrayList,List�� ����ϱ� ���ؼ�

public class BoardDAO {  //MemberDAO
	
	   private DBConnectionMgr pool=null;//1.����
	//�߰�
	//�������� ������ ��� �ʿ��� �������
		private Connection con=null;
		private PreparedStatement pstmt=null;
		private ResultSet rs=null;
		private String sql="";//�����ų SQL���� ����
	//2.�����ڸ� ���ؼ� ����=>������
	public BoardDAO() {
		try {
			pool=DBConnectionMgr.getInstance();
			System.out.println("pool=>"+pool);
		}catch(Exception e) {
			System.out.println("DB���ӿ���=>"+e);
		}
	}//������

	//1.����¡ ó���� ���ؼ� ��ü ���ڵ���� ���ؿ;��Ѵ�.
	//select count(*) from board->select count(*) from member; ->getMemberCount()
	
	public String getTitle(String url) {
		String title=""; //Ÿ��Ʋ �̸�
		try {
			con=pool.getConnection();
			System.out.println("con="+con);
			sql="select title from blog where url=?"; //url�� �⺻Ű�� �ش��α� title �̸��� ���
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, url);
			rs=pstmt.executeQuery();
			if(rs.next()) { //�����ִ� ����� �ִٸ�
				title=rs.getString(1);// ������=rs.get�ڷ���(�ʵ�� �Ǵ� �ε�����ȣ)
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("getTitle()�޼��� ����"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return title;
	}
			
	public int getB_numCount(String url) {
		int b_numCount=0; //��ܰԽ��� ����
		try {
			con=pool.getConnection();
			System.out.println("con="+con);
			sql="select count(*) from board where url=?"; //url�� �⺻Ű�� �ش��α� board ������ ���
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, url);
			rs=pstmt.executeQuery();
			if(rs.next()) { //�����ִ� ����� �ִٸ�
				b_numCount=rs.getInt(1);// ������=rs.get�ڷ���(�ʵ�� �Ǵ� �ε�����ȣ)
				                       //�ʵ���� �ƴϱ⶧���� select ~ from ���̿� ������ ����
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("getB_numCount()�޼��� ����"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return b_numCount;
	}
	
	private BoardDTO makeArticle() throws Exception{
		BoardDTO article=new BoardDTO();
		
		article.setB_num(rs.getInt("b_num"));
		article.setB_title(rs.getString("b_title"));
		article.setB_order(rs.getInt("b_order"));
		
//		article.setNum(rs.getInt("num"));
//		article.setWriter(rs.getString("writer"));
//		article.setEmail(rs.getString("email"));
//		article.setSubject(rs.getString("subject"));
//		article.setPasswd(rs.getString("passwd"));
//		article.setReg_date(rs.getTimestamp("reg_date"));//���ó�¥->�ڵ� now()
//		article.setReadcount(rs.getInt("readcount"));//default->0
//		article.setRef(rs.getInt("ref"));//�׷��ȣ->�űԱ۰� �亯�� �����ִ� ��ȣ
//		article.setRe_step(rs.getInt("re_step"));//�亯���� ����
//		article.setRe_level(rs.getInt("re_level"));//�鿩����(�亯�� ����)
//		article.setContent(rs.getString("content"));//�۳���
//		article.setIp(rs.getString("ip"));
		return article;
	}
	
	public List getArticles(String url) { 
		List articleList=null;		
		try {
		con=pool.getConnection();
		sql="select * from board where url=?"; //1,10
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, url);
		rs=pstmt.executeQuery();
		if(rs.next()) {
			articleList=new ArrayList();
			do {
				BoardDTO article=makeArticle();
				articleList.add(article);
			}while(rs.next());
		}
		}catch(Exception e) {
			System.out.println("getArticles()�޼��� ��������"+e);
		}finally {
			pool.freeConnection(con, pstmt,rs);
		}
		return articleList;
	}
	
	
//	public List getArticles2(String url) { 
//		List articleList=null;		
//		try {
//		con=pool.getConnection();
//		sql="select * from post where url=?"; //1,10
//		pstmt=con.prepareStatement(sql);
//		pstmt.setString(1, url);
//		rs=pstmt.executeQuery();
//		if(rs.next()) {
//			articleList=new ArrayList();
//			do {
//				BoardDTO article=makeArticle();
//				articleList.add(article);
//			}while(rs.next());
//		}
//		}catch(Exception e) {
//			System.out.println("getArticles2()�޼��� ��������"+e);
//		}finally {
//			pool.freeConnection(con, pstmt,rs);
//		}
//		return articleList;
//	}
	
	
	public int getP_numCount(String url) { //��ü �Խù� ����
		int p_numCount=0; 
		try {
			con=pool.getConnection();
			System.out.println("con="+con);
			sql="select count(*) from post where url=?"; 
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, url);
			rs=pstmt.executeQuery();
			if(rs.next()) { 
				p_numCount=rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("getP_numCount()�޼��� ����"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return p_numCount;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int getArticleCount() { //->getMemberCount()
		int x=0;//���ڵ尹��
		
		try {
			con=pool.getConnection();
			System.out.println("con="+con);
			sql="select count(*) from board";  //select count(*) from member
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) { //�����ִ� ����� �ִٸ�
				x=rs.getInt(1);// ������=rs.get�ڷ���(�ʵ�� �Ǵ� �ε�����ȣ)
				                       //�ʵ���� �ƴϱ⶧���� select ~ from ���̿� ������ ����
			}
		}catch(Exception e) {
			System.out.println("getArticleCount()�޼��� ��������"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return x;
	}
	
	//2.�۸�Ϻ��⿡ ���� �޼��� ����->���ڵ尡 �Ѱ��̻�=>���������� 10���� ��� �����ش�
	//1.���ڵ��� ���۹�ȣ   2.�ҷ��� ���ڵ��� ����
	public List getArticles(int start,int end) { //getMemberArticle(int start,int end)
		                                                          //id asc name desc
		List articleList=null;//ArrayList articleList=null;
		
		try {
			con=pool.getConnection();
			//�׷��ȣ�� ���� �ֽ��� ���� �߽����� �����ϵ�,���࿡ level�� ���� ��쿡��
			//step������ ���������� ���ؼ� ���°���ڵ��ȣ�� �����ؼ� �����϶�.
			sql="select * from board order by ref desc,re_step asc limit ?,?"; //1,10
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, start-1);//mysql�� ���ڵ������ ���������� 0���� ����
			pstmt.setInt(2, end);
			rs=pstmt.executeQuery();
			//������ ���ڵ�ܿ� �߰��� ���ڵ带 ÷���ؼ� �ٰ��� �����ִ� ����->��������(����)
			if(rs.next()) {//���ڵ尡 �����Ѵٸ�(�ּҸ��� 1��)
				//articleList=new List();//X
				//����)articleList=new �ڽ�Ŭ������();
				articleList=new ArrayList(end);//10->end������ŭ �����͸� ���� ���������϶�
				do {
					BoardDTO article=makeArticleFromResult();
					/*
					BoardDTO article=new BoardDTO();//MemberDTO mem=new MemberDTO()
					article.setNum(rs.getInt("num"));
					article.setWriter(rs.getString("writer"));
					article.setEmail(rs.getString("email"));
					article.setSubject(rs.getString("subject"));
					article.setPasswd(rs.getString("passwd"));
					article.setReg_date(rs.getTimestamp("reg_date"));//���ó�¥->�ڵ� now()
					article.setReadcount(rs.getInt("readcount"));//default->0
					article.setRef(rs.getInt("ref"));//�׷��ȣ->�űԱ۰� �亯�� �����ִ� ��ȣ
					article.setRe_step(rs.getInt("re_step"));//�亯���� ����
					article.setRe_level(rs.getInt("re_level"));//�鿩����(�亯�� ����)
					article.setContent(rs.getString("content"));//�۳���
					article.setIp(rs.getString("ip"));//�۾����� ip�ּ�->request.getRemoteAddr()
					*/
					//�߰�
					articleList.add(article);
				}while(rs.next());
			}
		}catch(Exception e) {
			System.out.println("getArticles()�޼��� ��������"+e);
		}finally {
			pool.freeConnection(con, pstmt,rs);
		}
		return articleList;
	}
	//----------�Խ����� �۾��� �� �� �亯�ޱ�---------------------------------------------------------------------
	//insert into board values(?,,,
	public void insertArticle(BoardDTO article) { //~(MemberDTO mem)
		
		//1.article->�űԱ����� �亯������ ����
		int num=article.getNum();//0(�űԱ�����) 0�� �ƴѰ��(�亯��)
		int ref=article.getRef();
		int re_step=article.getRe_step();
		int re_level=article.getRe_level();
		//���̺� �Է��� �Խù� ��ȣ�� ������ ����
		int number=0;
		System.out.println("insertArticle �޼����� ������ num=>"+num);
		System.out.println("ref="+ref+",re_step=>"+re_step+",re_level=>"+re_level);
		
		try {
			con=pool.getConnection();
			sql="select max(num) from board"; //�ִ밪+1=���� ������ �Խù���ȣ
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {//���� ���̺��� �����Ͱ� �Ѱ��� �����Ѵٸ�
				number=rs.getInt(1)+1;
			}else { //�� ó���� ���ڵ尡 �Ѱ��� ���ٸ� ������ number=1
				number=1;
			}
			//���࿡ �亯���ΰ��
			if(num!=0) {
				//���� �׷��ȣ�� ������ �����鼭 ������ step���� ū ���� ã�Ƽ� �� step����
				sql="update board set re_step=re_step+1 where ref=? and re_step > ?";
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setInt(2, re_step);
				int update=pstmt.executeUpdate();
				System.out.println("��ۼ�������(update)=>"+update);//1 or 0
				//�亯��
				re_step=re_step+1;
				re_level=re_level+1;
			}else {//num=0�� ����̱⿡ �űԱ����� �� ���� �ִ�.
				ref=number;
				re_step=0;
				re_level=0;
			}
			//12��->num,reg_date,reacount(����)->default->sysdate,now()<-mysql (?��ſ�)
			sql="insert into board(writer,email,subject,passwd,reg_date,";
			sql+=" ref,re_step,re_level,content,ip)values(?,?,?,?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, article.getWriter());//�������� Setter Method�� �޸𸮿� ����
			pstmt.setString(2, article.getEmail());
			pstmt.setString(3, article.getSubject());
			pstmt.setString(4, article.getPasswd());
			pstmt.setTimestamp(5, article.getReg_date());//������ ����ؼ� ����
			//-------ref,re_step,re_level---------------------------------
			pstmt.setInt(6, ref);//pstmt.setInt(6,article,getRef());(X) 5
			pstmt.setInt(7, re_step);//0
			pstmt.setInt(8, re_level);//0
			//------------------------------------------
			pstmt.setString(9, article.getContent());//�۳���
			pstmt.setString(10, article.getIp());//request.getRemoteAddr();//jsp
			int insert=pstmt.executeUpdate();
			System.out.println("�Խ����� �۾��� ��������(insert)=>"+insert);
		}catch(Exception e) {
			System.out.println("insertArticle()�޼��� ��������=>"+e);
		}finally {
			pool.freeConnection(con, pstmt,rs);
		}//finally
	}
	
	//�ۻ󼼺���->list.jsp
	// <a href="content.jsp?num=3&pageNum=1">�Խ����̶�?</a>
	//����) select * from board where num=3;
	//����2) update board set readcount=readcount+1 where num=3
	public BoardDTO getArticle(int num) {
		BoardDTO article=null;
		
		try {
			con=pool.getConnection();
			sql="update board set readcount=readcount+1 where num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);
			int update=pstmt.executeUpdate();
			System.out.println("��ȸ�� ��������(update)=>"+update);
			
			sql="select * from board where num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {//���ڵ尡 �����Ѵٸ�
				article=makeArticleFromResult();
				/*
			    article=new BoardDTO();//MemberDTO mem=new MemberDTO()
				article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
				article.setEmail(rs.getString("email"));
				article.setSubject(rs.getString("subject"));
				article.setPasswd(rs.getString("passwd"));
				article.setReg_date(rs.getTimestamp("reg_date"));//���ó�¥->�ڵ� now()
				article.setReadcount(rs.getInt("readcount"));//default->0
				article.setRef(rs.getInt("ref"));//�׷��ȣ->�űԱ۰� �亯�� �����ִ� ��ȣ
				article.setRe_step(rs.getInt("re_step"));//�亯���� ����
				article.setRe_level(rs.getInt("re_level"));//�鿩����(�亯�� ����)
				article.setContent(rs.getString("content"));//�۳���
				article.setIp(rs.getString("ip"));
				*/
			}
		}catch(Exception e) {
			System.out.println("getArticle()�޼��� ��������"+e);
		}finally {
			pool.freeConnection(con, pstmt,rs);
		}
		return article;
	}
	//--�ߺ��� ���ڵ� �Ѱ��� ���� �� �ִ� �޼��带 ���� ���� ó��-------
	private BoardDTO makeArticleFromResult() throws Exception{
		BoardDTO article=new BoardDTO();
		article.setNum(rs.getInt("num"));
		article.setWriter(rs.getString("writer"));
		article.setEmail(rs.getString("email"));
		article.setSubject(rs.getString("subject"));
		article.setPasswd(rs.getString("passwd"));
		article.setReg_date(rs.getTimestamp("reg_date"));//���ó�¥->�ڵ� now()
		article.setReadcount(rs.getInt("readcount"));//default->0
		article.setRef(rs.getInt("ref"));//�׷��ȣ->�űԱ۰� �亯�� �����ִ� ��ȣ
		article.setRe_step(rs.getInt("re_step"));//�亯���� ����
		article.setRe_level(rs.getInt("re_level"));//�鿩����(�亯�� ����)
		article.setContent(rs.getString("content"));//�۳���
		article.setIp(rs.getString("ip"));
		return article;
	}
	
	//------------------------------------------------
	//�Խ����� �ۼ����ϱ�
	//select * from board where num=? ->��ȸ���� ����X
	
	public BoardDTO updateGetArticle(int num) { //updateForm.jsp���� ���
         BoardDTO article=null;
		try {
			con=pool.getConnection();
			sql="select * from board where num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {//���ڵ尡 �����Ѵٸ�
				article=makeArticleFromResult();
			}
		}catch(Exception e) {
			System.out.println("updateGetArticle()�޼��� ��������"+e);
		}finally {
			pool.freeConnection(con, pstmt,rs);
		}
		return article;
	}
	
	//�� ���������ִ� �޼���->insertArticle�� ���� ����=>��ȣ�� �����.
	
	public int updateArticle(BoardDTO article) {
		 String dbpasswd=null;//db���� ã�� ��ȣ�� ����
		 int x=-1;//�Խù��� ������������
		 
		 try {
			 con=pool.getConnection();
			 sql="select passwd from board where num=?";
			 pstmt=con.prepareStatement(sql);
			 pstmt.setInt(1, article.getNum());//�Ű������� �ٸ� �޼����� �������� ���� ���ִ�
		     rs=pstmt.executeQuery();
		     if(rs.next()) {
		    	 dbpasswd=rs.getString("passwd");
		    	 System.out.println("dbpasswd=>"+dbpasswd);//Ȯ�ε� �ڿ��� �����Ұ�.
		    	 //db���� ��ȣ=���� �Է��� ��ȣ�� �´ٸ�
		    	 if(dbpasswd.equals(article.getPasswd())) {
		    		 sql="update board set writer=?,email=?,subject=?,passwd=?,";
		    		 sql+=" content=?  where num=?";
		    		 pstmt=con.prepareStatement(sql);
		    		 pstmt.setString(1, article.getWriter());//�ۼ���
		    		 pstmt.setString(2, article.getEmail());
		    		 pstmt.setString(3, article.getSubject());
		    		 pstmt.setString(4, article.getPasswd());
		    		 pstmt.setString(5, article.getContent());
		    		 pstmt.setInt(6, article.getNum());
		    		 
		    		 int update=pstmt.executeUpdate();
		    		 System.out.println("�Խ����� �ۼ��� ��������(update)="+update);//1����
		    		 x=1;
		    	 }else {
		    		 x=0;//���� ����
		    	 }
		     }//if(rs.next())->x=-1;
		 }catch(Exception e) {
			 System.out.println("updateArticle()�޼��� ��������=>"+e);
		 }finally {
			pool.freeConnection(con, pstmt, rs); //��ȣ�� ã�� ������
		 }
		 return x;
	}
	
	//�� ���������ִ� �޼���->ȸ��Ż��(����)=>��ȣ�� �����.=>deleteArticle
}









