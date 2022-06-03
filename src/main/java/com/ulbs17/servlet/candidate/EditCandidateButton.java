/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ulbs17.servlet.candidate;

import com.ulbs17.common.CandidateDetails;
import com.ulbs17.common.JobDetails;
import com.ulbs17.ejb.CandidateBean;
import com.ulbs17.ejb.JobBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.annotation.security.DeclareRoles;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.HttpConstraint;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.ServletSecurity;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author andre
 */
@MultipartConfig
@WebServlet(name = "EditCandidateButton", urlPatterns = {"/EditCandidateButton"})
@DeclareRoles({"AdministratorRole", "ClientRole", "DirectorRole", "DirectorGeneralRole", "DirectorGeneralAndRecruiterRole"})
@ServletSecurity(
        value = @HttpConstraint(rolesAllowed = {"DirectorGeneralAndRecruiterRole"}))
public class EditCandidateButton extends HttpServlet {

    @Inject
    CandidateBean candidateBean;

    @Inject
    JobBean jobBean;

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
            out.println("<title>Servlet EditCandidateButton</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditCandidateButton at " + request.getContextPath() + "</h1>");
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

        List<JobDetails> jobs = jobBean.getAllJobs();
        request.setAttribute("jobs", jobs);

        int candId = Integer.parseInt(request.getParameter("id"));
        CandidateDetails candidates = candidateBean.findById(candId);
        request.setAttribute("candidates", candidates);
        request.getRequestDispatcher("/WEB-INF/Pages/editCandidateButton.jsp").forward(request, response);
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
        int candidateId = Integer.parseInt(request.getParameter("candidate_id"));
        String phone = request.getParameter("mobile");
        String interview_date = request.getParameter("interview");
        int position = Integer.parseInt(request.getParameter("job_position"));
        String comments = request.getParameter("comments");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");

        candidateBean.editCandidate(candidateId, first_name, last_name, email, address, phone, interview_date, position, comments);
        response.sendRedirect(request.getContextPath() + "/email");

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
