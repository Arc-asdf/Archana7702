
import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


/**
 * Servlet implementation class register
 */
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
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
		// TODO Auto-generated method stub
		
				response.setContentType("text/html");
				PrintWriter out=response.getWriter();
				String name=request.getParameter("name");
				String email=request.getParameter("email");
				String phone=request.getParameter("phone");
				String college=request.getParameter("college");
				String course=request.getParameter("course");
				
				try {
					
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/course","root","Archana@123");
					PreparedStatement ps=con.prepareStatement("insert into course  values(?,?,?,?,?)");

					ps.setString(1, name);
					ps.setString(2, email);
					ps.setString(3,phone);
					ps.setString(4, college);
					ps.setString(5, course);
					
					int i=ps.executeUpdate();
					if(i>0)
					{
						out.print("<h1 >You are Successfully Registered</h1>");
			
						
						out.println("<!DOCTYPE html>");
						out.println("<html>");
						out.println("<head>");
						out.println("<style>");
						out.println("body {");
						out.println("background-image:url(\"https://cdn.pixabay.com/photo/2017/02/26/04/02/woman-2099465_1280.jpg\");");
							
						out.println("background-position:cover;");
						out.println("background-size:100%;");
						out.println("backgrount-repeat:no-repeat");
						out.println("}");
						out.println("</style>");
						out.println("</head>");
						out.println("<body>");
						out.println("</body>");
						out.println("</html>");
					}
					

					
				}catch(Exception e) {
			System.out.println(e);
				}
				
				
	}
}
					
				
				
				
				
				
