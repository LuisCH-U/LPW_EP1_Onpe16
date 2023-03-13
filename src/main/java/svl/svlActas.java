package svl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import javax.swing.plaf.basic.BasicOptionPaneUI.ButtonActionListener;


public class svlActas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public svlActas() {
        super();
        
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		dao.OnpeDAO daoOnpe = new dao.OnpeDAO();

		String id = request.getParameter("id");
		String sbID = null, nMesa = null;
		Object data = null;

		if ( id != null ) {
			
				String aID[] = id.split(",");
				int tID = aID.length;
				boolean bID =aID[0].equals("id");
				nMesa = "nMesa: " + aID[0];
								
				if(tID == 1) sbID = bID ? "id" : "data";
				if(tID == 1) data = daoOnpe.getGrupoVotacion( bID ? "id ":" data "    );
				
		}
				session.setAttribute("id", id);
				session.setAttribute("sbID", sbID);
				session.setAttribute("nMesa", nMesa);
				session.setAttribute("data", data);
				
		response.sendRedirect("actas.jsp");
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
