/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ulbs17.ejb;

import com.ulbs17.common.CandidateDetails;
import com.ulbs17.entity.Candidates;
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
 * @author andre
 */
@Stateless
public class CandidateBean {

    private static final Logger LOG = Logger.getLogger(CandidateBean.class.getName());
    @PersistenceContext
    private EntityManager em;

    public List<CandidateDetails> getAllCandidates() {
        LOG.info("getAllCand");
        try {
            Query query = em.createQuery("SELECT c FROM Candidates c");
            List<Candidates> cand = (List<Candidates>) query.getResultList();
            return copyCandidatesToDetails(cand);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }

    private List<CandidateDetails> copyCandidatesToDetails(List<Candidates> cand) {
        List<CandidateDetails> detailsList = new ArrayList<>();
        for (Candidates candid : cand) {
            CandidateDetails candDetails = new CandidateDetails(candid.getId(), candid.getPhone(), candid.getInterview_date(), candid.getJob().getJobName(), candid.getComments(), candid.getFirst_name(), candid.getLast_name(), candid.getEmail(), candid.getAddress(), candid.getFilename(), candid.getFileType(), candid.getFileContent());
            detailsList.add(candDetails);
        }
        return detailsList;
    }

    public CandidateDetails findById(Integer candId) {
        Candidates candid = em.find(Candidates.class, candId);
        return new CandidateDetails(candid.getId(), candid.getPhone(), candid.getInterview_date(), candid.getJob().getJobName(), candid.getComments(), candid.getFirst_name(), candid.getLast_name(), candid.getEmail(), candid.getAddress(), candid.getFilename(), candid.getFileType(), candid.getFileContent());
    }

    public void addCandidate(String first_name, String last_name, String email, String address, String phone, String interview_date, Integer positionId, String comments, String filename, String fileType, byte[] fileContent) {
        LOG.info("addCandidate");
        Candidates candidate = new Candidates();
        candidate.setPhone(phone);
        candidate.setInterview_date(interview_date);
        candidate.setComments(comments);
        candidate.setAddress(address);
        candidate.setEmail(email);
        candidate.setFirst_name(first_name);
        candidate.setLast_name(last_name);
        candidate.setFilename(filename);
        candidate.setFileContent(fileContent);
        candidate.setFileType(fileType);

        Job job = em.find(Job.class, positionId);
        job.getCandidates().add(candidate);
        candidate.setJob(job);
        em.persist(job);

        em.persist(candidate);
    }

    public void addComment(Integer candidateId, String comment) {
        LOG.info("addComment");
        Candidates candidate = em.find(Candidates.class, candidateId);
        String com = candidate.getComments();
        com += "\n" + comment;
        candidate.setComments(com);
    }

    public void editCandidate(Integer candidateId, String first_name, String last_name, String email, String address, String phone, String interview_date, Integer positionId, String comments) {
        LOG.info("editCandidate");
        Candidates candidate = em.find(Candidates.class, candidateId);

        candidate.setPhone(phone);
        candidate.setInterview_date(interview_date);
        candidate.setComments(comments);
        candidate.setAddress(address);
        candidate.setEmail(email);
        candidate.setFirst_name(first_name);
        candidate.setLast_name(last_name);

        //remove this candidate from job
        Job oldJob = candidate.getJob();
        oldJob.getCandidates().remove(candidate);

        //add the candidate to the new job
        Job job = em.find(Job.class, positionId);
        job.getCandidates().add(candidate);
        candidate.setJob(job);

    }

    public void deleteCandidatesByIds(Collection<Integer> ids) {
        LOG.info("deleteCandidatesByIds");

        for (Integer id : ids) {
            Candidates candidate = em.find(Candidates.class, id);
            em.remove(candidate);
        }
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
