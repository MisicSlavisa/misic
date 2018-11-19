package com.slavisa.misic.to;

import org.hibernate.validator.constraints.SafeHtml;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.io.Serializable;

public class EmailDB extends BaseTo implements Serializable {

    @Email
    @NotBlank
    @Size(max = 100)
    @SafeHtml
    private String sender;

    @NotBlank
    @Size(min = 1, max = 100, message = "{validation.subject}")
    @SafeHtml
    private String subject;

    @NotBlank
    @Size(min = 2, max = 250, message = "{validation.message}")
    @SafeHtml
    private String message;

    private String result;

    public EmailDB(Integer id, String sender, String subject, String message) {
        super(id);
        this.sender = sender;
        this.subject = subject;
        this.message = message;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String success) {
        this.result = success;
    }

    @Override
    public String toString() {
        return "EmailDB{" +
                ", id=" + id +
                "sender='" + sender + '\'' +
                ", subject='" + subject + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}
