package com.brs.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.brs.entity.Customer;

@Repository
@Scope("singleton")
@Transactional(propagation=Propagation.REQUIRES_NEW)
public class CustomerDaoImpl implements CustomerDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public Customer addUser(Customer customer) {

		System.out.println("\ndao"+customer.getFirstName());
		System.out.println("DAO->AddUser");
		entityManager.persist(customer);
		return customer;
		
	}

	@Override
	public boolean validateUser(String email, String password) {
		Query qry = entityManager.createQuery("FROM Customer WHERE EMAIL = :email AND PASSWORD = :password");
		qry.setParameter("email", email);
		qry.setParameter("password", password);
		System.out.println("Checking Login->DAO");
		try {
		qry.getSingleResult();
		System.out.println("Valid login");
		return true;
		} catch(Exception ex) {
			System.err.println("Invalid login -> Exception: " + ex.getMessage());
			return false;
		}
	}

	@Override
	public Customer refundInWallet(String email, double refundAmt) {
		Customer customer = entityManager.find(Customer.class, email);

		double walletBal = customer.getWallet() + refundAmt;
		customer.setWallet(walletBal);
		/*
		 * String qry0="update Customer set wallet=:walletBal"; Query
		 * qry=manager.createQuery(qry0);
		 */

		// manager.persist(customer);

		return customer;
		
	}
}
