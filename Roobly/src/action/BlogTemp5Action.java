package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Roobly.*;
import java.util.*;

public class BlogTemp5Action implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String url = "0";
		List articleList=null;
		String title="0";
		int b_numCount=0;
		int p_numCount=0;
		
		BoardDAO dbPro = new BoardDAO(); 	
		title=dbPro.getTitle(url); //0은 모두 url로 수정
		b_numCount = dbPro.getB_numCount(url);
		p_numCount = 0;//dbPro.getP_numCount("0");
		
	    articleList=dbPro.getArticles("0");
    

	    request.setAttribute("url", url);//int->new Integer(currentPage)
		request.setAttribute("title", title);
		request.setAttribute("b_numCount", b_numCount);
		request.setAttribute("p_numCount", p_numCount);
		request.setAttribute("articleList", articleList);
		
		
		return "/blogTemplate/5/blogTemp5.jsp";
	}

}
