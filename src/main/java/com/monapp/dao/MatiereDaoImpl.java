package com.monapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.monapp.entity.Matiere;

@Repository
@Transactional
public class MatiereDaoImpl implements MatiereDao{
    
    @PersistenceContext
    EntityManager em;

    @Override
    public Matiere findByPrimaryKey(Integer id) {
        return em.find(Matiere.class, id);
    }

    @Override
    public List<Matiere> findAll() {
        String querystyring ="SELECT c FROM Matiere c";
        Query query = em.createQuery(querystyring);
        List<Matiere> list = query.getResultList();
        return list;
    }

    @Override
    public Matiere save(Matiere entity) {
        em.persist(entity);
        return entity;
    }

    @Override
    public void delete(Matiere entity) {
        Matiere eMerged = em.merge(entity);
        em.remove(eMerged);
        
    }

    @Override
    public Matiere update(Matiere entity) {
        return em.merge(entity);
    }

}