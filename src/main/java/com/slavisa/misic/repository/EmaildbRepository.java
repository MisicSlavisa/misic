package com.slavisa.misic.repository;

import com.slavisa.misic.model.Emaildb;

import java.util.Date;
import java.util.List;

public interface EmaildbRepository {

    boolean delete(int id);

    List<Emaildb> getBySender(String sender);

    List<Emaildb> getByRegisteredBetween(Date from, Date to);

    Emaildb saveAndFlush(Emaildb e);

    List<Emaildb> getAll();
}
