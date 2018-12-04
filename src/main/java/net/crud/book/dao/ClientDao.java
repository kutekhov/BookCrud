package net.crud.book.dao;

import net.crud.book.model.Client;

import java.util.List;

public interface ClientDao {
    List<Client> listClients();

    void addClients(Client client);

    void updateClients(Client client);

    void removeClients(int id);

    Client getClientsById(int id);
}
