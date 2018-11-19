package com.slavisa.misic.service;

import com.slavisa.misic.model.Emaildb;
import com.slavisa.misic.to.EmailDB;

import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public interface EmailService {

    boolean delete(int id);

    List<Emaildb> getBySender(String sender);

    List<Emaildb> getByRegisteredBetween(Date from, Date to);

    Emaildb save(Emaildb e);

    Emaildb save(EmailDB e);

    List<Emaildb> getAll();

    boolean sendEmail (final String templateName, final Map<String, Object> model, Locale local);
}
