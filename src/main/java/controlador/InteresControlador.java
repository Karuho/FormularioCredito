package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.InteresModelo;

/**
 *
 * @author Carlos Torres
 */
@WebServlet(name = "InteresControlador", urlPatterns = {"/InteresControlador"})
public class InteresControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InteresControlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InteresControlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String nombreCliente;
        int edadCliente;
        float montoInvertir;
        int cantidadAnos;
        if (request.getParameter("txtCliente") == "") {
            nombreCliente = "";
        } else {
            nombreCliente = request.getParameter("txtCliente");
        }
        if (request.getParameter("txtEdad") == "") {
            edadCliente = 0;
        } else {
            edadCliente = Integer.parseInt(request.getParameter("txtEdad"));
        }
        if (request.getParameter("txtMonto") == "") {
            montoInvertir = 0;
        } else {
            montoInvertir = Float.parseFloat(request.getParameter("txtMonto"));
        }
        if (request.getParameter("lstAnos") == "") {
            cantidadAnos = 0;
        } else {
            cantidadAnos = Integer.parseInt(request.getParameter("lstAnos"));
        }
        InteresModelo calculadoraIntereses = new InteresModelo();
        calculadoraIntereses.setNombreCliente(nombreCliente);
        calculadoraIntereses.setEdadCliente(edadCliente);
        calculadoraIntereses.setmontoInvertir(montoInvertir);
        calculadoraIntereses.setAnosSolicitud(cantidadAnos);

        /*System.out.println( calculadoraIntereses.getCalculoInteres());
        System.out.println( calculadoraIntereses.getResultadoFinal());*/
        request.setAttribute("calculadoraIntereses", calculadoraIntereses);
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
