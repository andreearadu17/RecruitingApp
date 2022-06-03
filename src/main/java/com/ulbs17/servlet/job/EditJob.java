
package com.ulbs17.servlet.job;

import com.ulbs17.common.JobDetails;
import com.ulbs17.common.UserDetails;
import com.ulbs17.ejb.JobBean;
import com.ulbs17.ejb.UserBean;
import java.io.IOException;
import java.io.PrintWriter;
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
 * @author Denisa
 */
@DeclareRoles({"DirectorRole", "DirectorGeneralRole"})
@ServletSecurity(
        value = @HttpConstraint(rolesAllowed = {"DirectorRole", "DirectorGeneralRole"}))
@WebServlet(name = "EditJob", urlPatterns = {"/EditJob"})

public class EditJob extends HttpServlet {

    @Inject
    JobBean jobBean;

    @Inject
    UserBean userBean;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditJob</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditJob at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<UserDetails> users = userBean.getAllUsers();
        request.setAttribute("users", users);

        int jobId = Integer.parseInt(request.getParameter("id"));
        JobDetails job = jobBean.findById(jobId);
        request.setAttribute("job", job);

        request.getRequestDispatcher("/WEB-INF/Pages/editJob.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String jobName = request.getParameter("jobName");
        String jobDescription = request.getParameter("jobDescription");
        String availability = request.getParameter("availability");
        int numberInNeeed = Integer.parseInt(request.getParameter("numberInNeed"));
        String approval = request.getParameter("approval");
        int user = Integer.parseInt(request.getParameter("user"));
        String department = request.getParameter("department");
        int jobId = Integer.parseInt(request.getParameter("job_id"));

        jobBean.updateJob(jobId, jobName, jobDescription, availability, numberInNeeed, user, approval, department);

        response.sendRedirect(request.getContextPath() + "/email");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
