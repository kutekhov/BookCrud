package net.crud.book.dao;


import net.crud.book.model.Client;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ClientDaoImpl implements ClientDao {

    private static final Logger logger = LoggerFactory.getLogger(BookDaoImpl.class);


    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Client> listClients() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Client> clientList = session.createQuery("from Client").list();

        for (Client client : clientList) {
            logger.info("Clients list: " + client);
        }

        return clientList;
    }

    @Override
    public void addClients(Client client) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(client);
        logger.info("Client successfully saved. Client details: " + client);
    }

    @Override
    public void updateClients(Client client) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(client);
        logger.info("Client successfully update. Client details: " + client);
    }

    @Override
    public void removeClients(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Client client = (Client) session.load(Client.class, new Integer(id));

        if(client!=null){
            session.delete(client);
        }
        logger.info("Client successfully removed. Client details: " + client);
    }

    @Override
    public Client getClientsById(int id) {
        Session session =this.sessionFactory.getCurrentSession();
        Client client = (Client) session.load(Client.class, new Integer(id));
        logger.info("Client successfully loaded. Client details: " + client);

        return client;
    }
}
