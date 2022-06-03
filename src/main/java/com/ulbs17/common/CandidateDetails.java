/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ulbs17.common;

import java.io.Serializable;

/**
 *
 * @author andre
 */
public class CandidateDetails implements Serializable {

    private Integer id;
    private String phone;
    private String interview_date;
    private String position;
    private String comments;
    private String first_name;
    private String last_name;
    private String email;
    private String address;

    private String filename;
    private String fileType;
    private byte[] fileContent;

    public CandidateDetails(Integer id, String phone, String interview_date, String position, String comments, String first_name, String last_name, String email, String address, String filename, String fileType, byte[] fileContent) {
        this.id = id;
        this.phone = phone;
        this.interview_date = interview_date;
        this.position = position;
        this.comments = comments;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.address = address;
        this.filename = filename;
        this.fileType = fileType;
        this.fileContent = fileContent;
    }

    public String getFilename() {
        return filename;
    }

    public String getFileType() {
        return fileType;
    }

    public byte[] getFileContent() {
        return fileContent;
    }

    public String getFirst_name() {
        return first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public String getInterview_date() {
        return interview_date;
    }

    public String getPosition() {
        return position;
    }

    public String getComments() {
        return comments;
    }

    public Integer getId() {
        return id;
    }

    public String getPhone() {
        return phone;
    }

}
