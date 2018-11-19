package com.slavisa.misic.repository.datajpa;

import com.slavisa.misic.model.Emaildb;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

public interface CrudEmaildbRepository extends JpaRepository<Emaildb, Integer> {
    @Transactional
    @Modifying
    @Query("DELETE FROM Emaildb e WHERE e.id=:id")
    int delete(@Param("id") int id);

    List<Emaildb> getBySender(String sender);

    List<Emaildb> getByRegisteredBetween(Date from, Date to);

    @Override
    @Transactional
    Emaildb saveAndFlush(Emaildb e);

    @Override
    List<Emaildb> findAll(Sort sort);

}
