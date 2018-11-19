package com.slavisa.misic.repository.datajpa;

import com.slavisa.misic.model.Emaildb;
import com.slavisa.misic.repository.EmaildbRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public class DataJpaEmaildbRepositoryImpl implements EmaildbRepository {

    private static final Sort SORT_SENDER_REGISTERED = new Sort(Sort.Direction.DESC, "sender", "registered");

    @Autowired
    private CrudEmaildbRepository crudEmaildbRepository;

    @Override
    public boolean delete(int id) {
        return crudEmaildbRepository.delete(id) != 0;
    }

    @Override
    public List<Emaildb> getBySender(String sender) {
        return crudEmaildbRepository.getBySender(sender);
    }

    @Override
    public List<Emaildb> getByRegisteredBetween(Date from, Date to) {
        return crudEmaildbRepository.getByRegisteredBetween(from, to);
    }

    @Override
    public Emaildb saveAndFlush(Emaildb e) {
        return crudEmaildbRepository.saveAndFlush(e);
    }

    @Override
    public List<Emaildb> getAll() {
        return crudEmaildbRepository.findAll(SORT_SENDER_REGISTERED);
    }
}
