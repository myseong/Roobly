package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Roobly.*;
import java.sql.Timestamp;

public class UpdateProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
	
	//한글처리
	request.setCharacterEncoding("utf-8");
	String pageNum = request.getParameter("pageNum");
	//BoardDTO->Setter Method(5)+hidden (4)
	//BoardDAO 객체 필요
	BoardDTO article = new BoardDTO();
	article.setNum(Integer.parseInt(request.getParameter("num")));
	article.setWriter(request.getParameter("writer"));
	article.setEmail(request.getParameter("email"));
	article.setSubject(request.getParameter("subject"));
	article.setPasswd(request.getParameter("passwd"));
	article.setContent(request.getParameter("content"));
	//readcount -> default 로 설정한 관계로 자동으로 0이 들어간다.
	BoardDAO dbPro=new BoardDAO();
	int check = dbPro.updateArticle(article);
	
	request.setAttribute("pageNum", pageNum);
	request.setAttribute("check", check);
	
	return "/updatePro.jsp"; 
	
	}

	
	
}
