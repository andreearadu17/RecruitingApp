/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ulbs17.ejb;

import com.ulbs17.common.UserDetails;
import com.ulbs17.entity.Job;
import com.ulbs17.entity.Users;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Iuliana
 */
@Stateless
public class UserBean {

    private static final Logger LOG = Logger.getLogger(UserBean.class.getName());
    @PersistenceContext
    private EntityManager em;

    public List<UserDetails> getAllUsers() {
        LOG.info("getAllUsers");
        try {
            Query query = em.createQuery("SELECT u FROM Users u");
            List<Users> users = (List<Users>) query.getResultList();
            return copyUsersToDetails(users);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }

    private List<UserDetails> copyUsersToDetails(List<Users> users) {
        List<UserDetails> detailsList = new ArrayList<>();
        for (Users iduser : users) {
            UserDetails userDetails = new UserDetails(iduser.getId(), iduser.getFirst_name(), iduser.getLast_name(), iduser.getUsername(), iduser.getEmail(), iduser.getPassword(), iduser.getUsertype(), iduser.getDescription());
            detailsList.add(userDetails);
        }
        return detailsList;
    }

    public void addUser(String first_name, String last_name, String username, String email, String password, String usertype, String description) {
        LOG.info("addUser");
        Users user = new Users();
        user.setFirst_name(first_name);
        user.setLast_name(last_name);
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setUsertype(usertype);
        user.setDescription(description);

        em.persist(user);
    }

    public void editUser(Integer iduser, String first_name, String last_name/*, String username*/, String email, String password, String usertype, String description) {
        LOG.info("editUser");
        Users user = em.find(Users.class, iduser);
        user.setFirst_name(first_name);
        user.setLast_name(last_name);
        user.setEmail(email);
        user.setPassword(password);
        user.setUsertype(usertype);
        user.setDescription(description);

    }

    public UserDetails findById(Integer userId) {
        Users userid = em.find(Users.class, userId);
        return new UserDetails(userid.getId(), userid.getFirst_name(), userid.getLast_name(), userid.getUsername(), userid.getEmail(), userid.getPassword(), userid.getUsertype(), userid.getDescription());
    }

    public void deleteUsersByIds(Collection<Integer> ids) {
        LOG.info("deleteUsersByIds");

        for (Integer id : ids) {
            Users user = em.find(Users.class, id);
            em.remove(user);
        }

    }
}
