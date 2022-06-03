package com.ulbs17.ejb;

import com.ulbs17.common.JobDetails;
import com.ulbs17.entity.Job;
import com.ulbs17.entity.Users;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Denisa
 */
@Stateless
public class JobBean {

    private static final Logger LOG = Logger.getLogger(JobBean.class.getName());

    @PersistenceContext
    private EntityManager em;

    public void addJob(String jobName, String jobDescription, String availability, Integer numberInNeed, Integer userId, String approval, String department) {
        LOG.info("addJob");
        Job job = new Job();
        job.setJobName(jobName);
        job.setJobDescription(jobDescription);
        job.setAvailability(availability);
        job.setNumberInNeed(numberInNeed);
        job.setApproval(approval);
        job.setDepartment(department);

        Users user = em.find(Users.class, userId);
        user.getJobs().add(job);
        job.setUser(user);
        em.persist(job);

    }

    public List<JobDetails> getAllJobs() {
        LOG.info("getAllJobs");
        try {
            Query query = em.createQuery("SELECT j FROM Job j");
            List<Job> jobs = (List<Job>) query.getResultList();
            return copyJobsToDetails(jobs);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }

    public List<JobDetails> copyJobsToDetails(List<Job> jobs) {
        List<JobDetails> detailsList = new ArrayList<>();
        for (Job job : jobs) {
            JobDetails jobDetails = new JobDetails(job.getId(),
                    job.getJobName(),
                    job.getJobDescription(),
                    job.getAvailability(),
                    job.getNumberInNeed(),
                    job.getUser().getUsername(),
                    job.getApproval(),
                    job.getDepartment());

            detailsList.add(jobDetails);

        }
        return detailsList;
    }

    public void updateJob(Integer jobId, String jobName, String jobDescription, String availability, Integer numberInNeed, Integer userId, String approval, String department) {
        LOG.info("updateJob");
        Job job = em.find(Job.class, jobId);
        job.setJobName(jobName);
        job.setJobDescription(jobDescription);
        job.setAvailability(availability);
        job.setNumberInNeed(numberInNeed);
        job.setApproval(approval);
        job.setDepartment(department);

        //remove this job from the old owner
        Users oldUser = job.getUser();
        oldUser.getJobs().remove(job);

        //add the job to its new user
        Users user = em.find(Users.class, userId);
        user.getJobs().add(job);
        job.setUser(user);

    }

    public JobDetails findById(Integer jobId) {
        Job job = em.find(Job.class, jobId);
        return new JobDetails(job.getId(), job.getJobName(), job.getJobDescription(), job.getAvailability(), job.getNumberInNeed(), job.getUser().getUsername(), job.getApproval(), job.getDepartment());
    }

    public void deleteJobById(Integer id) {
        LOG.info("deleteJobdById");
        Job job = em.find(Job.class, id);
        em.remove(job);

    }

}
