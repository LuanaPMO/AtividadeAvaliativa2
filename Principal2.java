package trabalhoFinal2;

/* Os arquivos entitulados login.jsp, auxilio.html, auxilio2.html e relogin, 
 * devem ser desconsiderados, pois foram utilizados apenas para testes como 
 * com o objetivo de não alterar o projeto principal além do necessário!!
 * 
 */

// Importando classes java
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Principal2
 */
@WebServlet("/Principal2")
public class Principal2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Principal2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nUsuario = request.getParameter("nUsuario"); // Pegando a variável que contém o nome do usuário
		String nSenha = request.getParameter("nSenha");    // Pegando a variável que contém a senha do usuário
		
		// Função para validar o usuário e a senha
		if(nUsuario.equals("Professor") && nSenha.equals("Progweb2021")) {
			//Redirecionamento para a página de menu.
			response.sendRedirect("menu2.jsp");
			

		}else {
			//Redirecionamento para a página de falha de login
			response.sendRedirect("relogue.jsp");
		}
	}
	
	
}
