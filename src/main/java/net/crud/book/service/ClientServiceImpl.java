package net.crud.book.service;


import net.crud.book.dao.ClientDao;

import net.crud.book.model.Client;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ClientServiceImpl implements ClientService {

    private ClientDao clientDao;

    public void setClientDao(ClientDao clientDao) {
        this.clientDao = clientDao;
    }


    @Override
    @Transactional
    public void addClients(Client client) {
        this.clientDao.addClients(client);

    }

    @Override
    @Transactional
    public void updateClients(Client client) {
        this.clientDao.updateClients(client);
    }

    @Override
    @Transactional
    public void removeClients(int id) {
        this.clientDao.removeClients(id);
    }

    @Override
    @Transactional
    public Client getClientsById(int id) {
        return this.clientDao.getClientsById(id);
    }

    @Override
    @Transactional
    public List<Client> listClients() {
        return this.clientDao.listClients();

    }
}

