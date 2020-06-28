package controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoCliente;
import dao.DaoVisita;
import modelo.Clientes;
import modelo.VisitasGeneradas;

/**
 * Servlet implementation class PlanificarVisita
 */
@WebServlet("/PlanificarVisita")
public class PlanificarVisita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlanificarVisita() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		DaoCliente cliDao = new DaoCliente();
		List<Clientes> listacli = new ArrayList<Clientes>();
		listacli = cliDao.listar(); 
		
		
		DaoVisita daovisita = new DaoVisita();
		List<VisitasGeneradas> listavisitagenerada = new ArrayList<VisitasGeneradas>();
		listavisitagenerada = daovisita.listaGenerada();
		
		
		request.setAttribute("listaclientes", listacli);
		request.setAttribute("listagenerada", listavisitagenerada);
		request.getRequestDispatcher("planificarvisita.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
