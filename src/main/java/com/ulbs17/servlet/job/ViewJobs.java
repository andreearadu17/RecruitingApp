
package com.ulbs17.servlet.job;

import com.ulbs17.common.JobDetails;
import com.ulbs17.ejb.JobBean;
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
 * @author theo_
 */
@DeclareRoles({"DirectorGeneralRole","DirectorRole"})


@WebServlet(name = "ViewJobs", urlPatterns = {"/ViewJobs"})
public class ViewJobs extends HttpServlet {

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
            out.println("<title>Servlet ViewJobs</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewJobs at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("activePage", "viewJobs");

        List<JobDetails> jobs = jobBean.getAllJobs();
        request.setAttribute("jobs", jobs);
        request.getRequestDispatcher("/WEB-INF/Pages/viewJobs.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int jobId = Integer.parseInt(request.getParameter("job_id"));
        jobBean.deleteJobById(jobId);

        response.sendRedirect(request.getContextPath() + "/email");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
