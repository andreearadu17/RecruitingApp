package com.ulbs17.servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.ulbs17.common.JobDetails;
import com.ulbs17.ejb.EmailBean;
import com.ulbs17.ejb.JobBean;
import com.ulbs17.ejb.UserBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ana
 */
@WebServlet(name = "email", urlPatterns = {"/email"})
public class email extends HttpServlet {

    @Inject
    EmailBean email;
    @Inject
    UserBean userBean;
    @Inject
    JobBean jobBean;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditUser</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditUser at " + request.getContextPath() + "</h1>");
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
        /*int userId = Integer.parseInt(request.getParameter("id"));
        UserDetails user = userBean.findById(userId);
        request.setAttribute("user", user);*/

        //int jobId = Integer.parseInt(request.getParameter("id"));
        //JobDetails job = jobBean.findById(jobId);
        //request.setAttribute("job", job);
        request.getRequestDispatcher("/WEB-INF/Pages/emailButton.jsp").forward(request, response);

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
        String toEmail = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        String fromEmail = "directorUlbs17@gmail.com";
        String username = "directorUlbs17@gmail.com";
        String password = "administratorulbs17";
        email.sendingEmail(fromEmail, username, password, toEmail, subject, message);
        response.sendRedirect(request.getContextPath() + "/aboutProgram.jsp");
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
