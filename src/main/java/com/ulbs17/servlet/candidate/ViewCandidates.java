/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ulbs17.servlet.candidate;

import com.ulbs17.common.CandidateDetails;
import com.ulbs17.ejb.CandidateBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.security.DeclareRoles;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.HttpConstraint;
import javax.servlet.annotation.ServletSecurity;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author andre
 */
@WebServlet(name = "ViewCandidates", urlPatterns = {"/ViewCandidates"})
@DeclareRoles({"AdministratorRole", "DirectorRole"})
@ServletSecurity(
        value = @HttpConstraint(rolesAllowed = {"AdministratorRole", "DirectorRole"}))
public class ViewCandidates extends HttpServlet {

    @Inject
    CandidateBean candidateBean;

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
            out.println("<title>Servlet ViewCandidates</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewCandidates at " + request.getContextPath() + "</h1>");
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
        // processRequest(request, response);
        request.setAttribute("activePage", "ViewCandidates");

        List<CandidateDetails> candidates = candidateBean.getAllCandidates();
        request.setAttribute("candidates", candidates);
        request.getRequestDispatcher("/WEB-INF/Pages/viewCandidates.jsp").forward(request, response);
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

        String[] candidateIdsAsString = request.getParameterValues("candidate_ids");
        if (candidateIdsAsString != null) {
            List<Integer> candidateIds = new ArrayList<>();
            for (String candidateIdAsString : candidateIdsAsString) {
                candidateIds.add(Integer.parseInt(candidateIdAsString));
            }

            candidateBean.deleteCandidatesByIds(candidateIds);
        }
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
