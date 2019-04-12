package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Roobly.*;
import java.sql.Timestamp;

public class UpdateProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
	
	//�ѱ�ó��
	request.setCharacterEncoding("utf-8");
	String pageNum = request.getParameter("pageNum");
	//BoardDTO->Setter Method(5)+hidden (4)
	//BoardDAO ��ü �ʿ�
	BoardDTO article = new BoardDTO();
	article.setNum(Integer.parseInt(request.getParameter("num")));
	article.setWriter(request.getParameter("writer"));
	article.setEmail(request.getParameter("email"));
	article.setSubject(request.getParameter("subject"));
	article.setPasswd(request.getParameter("passwd"));
	article.setContent(request.getParameter("content"));
	//readcount -> default �� ������ ����� �ڵ����� 0�� ����.
	BoardDAO dbPro=new BoardDAO();
	int check = dbPro.updateArticle(article);
	
	request.setAttribute("pageNum", pageNum);
	request.setAttribute("check", check);
	
	return "/updatePro.jsp"; 
	
	}

	
	
}
