package alcohol.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import alcohol.mvc.dto.NoticeDTO;
import alcohol.mvc.service.NoticeService;
import alcohol.mvc.service.NoticeServiceImpl;


public class NoticeController implements Controller {
	
	private NoticeService noService = new NoticeServiceImpl();
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			return null;
	}
	
	/**
	 * 전체검색하기
	 * */
	public ModelAndView select(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String field = request.getParameter("field");
		
		List<NoticeDTO> noticeList = noService.noticeAll();
		request.setAttribute("noticeList", noticeList);
		for (NoticeDTO n : noticeList) {
			System.out.println(n.getNoContent());
		}
		System.out.println(noticeList.size());
		return new ModelAndView("board/notice.jsp");
	}
	
	/**
	 * 전체검색하기
	 * */
	public ModelAndView getNoticesView(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String user = request.getParameter("user");
		boolean isAdmin = false;
		if (user.equals("admin"))  {
			isAdmin = true;
		}
		List<NoticeDTO> noticeList = noService.noticeAll();
		request.setAttribute("noticeList", noticeList);
		request.setAttribute("isAdmin", isAdmin);
		return new ModelAndView("board/notice.jsp");
	}
	
	/**
	 * 등록하기
	 * */
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		//폼에서 enctype="multipart/form-data" 설정되어 있기 때문에
				//request로는 안되고 MultipartRequest객체를 이용한다.
				//String saveDir= request.getServletContext().getRealPath("/save"); //서버를 한번 내리면 save폴더도 사라진다.
				String saveDir = "C:\\Edu\\log";
				int maxSize =1024*1024*100;//100M
			    String encoding="UTF-8";
				
				MultipartRequest m = 
					new MultipartRequest(request, saveDir,maxSize,encoding , new DefaultFileRenamePolicy());

		
		return new ModelAndView("notice.jsp");
	}

}