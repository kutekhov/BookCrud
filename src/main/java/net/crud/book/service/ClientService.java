package net.crud.book.service;


import net.crud.book.model.Client;

import java.util.List;

public interface ClientService {

    void addClients(Client client);

    void updateClients(Client client);

    void removeClients(int id);

    Client getClientsById(int id);

    List<Client> listClients();



}
