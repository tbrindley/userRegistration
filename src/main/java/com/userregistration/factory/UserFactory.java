package com.userregistration.factory;

import com.userregistration.models.Users;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Order;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;

/**
 * Created by Travis Brindley on 9/2/2017.
 */
public class UserFactory {
    public static ArrayList<Users> getUsers() {
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sessionFact = cfg.buildSessionFactory();
        Session selectCustomer = sessionFact.openSession();
        selectCustomer.beginTransaction();

        //criteria is used to create the query
        Criteria users = selectCustomer.createCriteria(Users.class);
        users.addOrder(Order.desc("dateEntered"));
        return (ArrayList<Users>) users.list();
    }

    public static void addUser(String firstName, String lastName, String address1, String address2, String city, String state, String zip){
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sessionFact = cfg.buildSessionFactory();
        Session session = sessionFact.openSession();
        Transaction transaction = session.beginTransaction();

        Timestamp submitTime = new Timestamp(System.currentTimeMillis());

        Users newUser = new Users();
        newUser.setFirstName(firstName);
        newUser.setLastName(lastName);
        newUser.setAddress1(address1);
        newUser.setAddress2(address2);
        newUser.setCity(city);
        newUser.setState(state);
        newUser.setZip(zip);
        newUser.setCountry("US");
        newUser.setDateEntered(submitTime);

        System.out.println(newUser.getFirstName());
        session.save(newUser);
        transaction.commit();
        session.close();
    }
}
