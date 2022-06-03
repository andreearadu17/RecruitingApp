package com.ulbs17.common;

import java.io.Serializable;

/**
 *
 * @author Denisa
 */
public class JobDetails implements Serializable {

    private Integer id;
    private String jobName;
    private String jobDescription;
    private String availability;
    private Integer numberInNeed;
    private String username;
    private String approval;
    private String department;

    public JobDetails(Integer id, String jobName, String jobDescription, String availability, Integer numberInNeed, String username, String approval, String department) {
        this.id = id;
        this.jobName = jobName;
        this.jobDescription = jobDescription;
        this.availability = availability;
        this.numberInNeed = numberInNeed;
        this.username = username;
        this.approval = approval;
        this.department = department;
    }

    public Integer getId() {
        return id;
    }

    public String getJobName() {
        return jobName;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public String getAvailability() {
        return availability;
    }

    public Integer getNumberInNeed() {
        return numberInNeed;
    }

    public String getUsername() {
        return username;
    }

    public String getApproval() {
        return approval;
    }

    public String getDepartment() {
        return department;
    }

}
