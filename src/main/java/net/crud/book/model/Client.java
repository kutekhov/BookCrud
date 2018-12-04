package net.crud.book.model;


import javax.persistence.*;

@Entity
@Table (name = "client")
public class Client {

    @Id
    @Column(name = "id_client")
    @GeneratedValue(strategy = GenerationType.IDENTITY)


    private int id;

    @Column(name = "name_clien")
    private String clientName;

    @Column(name = "family_name_client")
    private String clientFamily;

    @Column(name = "data_birth")
    private int data_birth;

    @Column(name = "passpor")
    private int clientPasspor;

    @Column(name = "address")
    private String clientAddress;

    @Column(name = "number_contract")
    private int numberContract;

    @Column(name = "email_client")
    private String emailClient;

    @Column(name = "password_client")
    private String passwordClient;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public String getClientFamily() {
        return clientFamily;
    }

    public void setClientFamily(String clientFamily) {
        this.clientFamily = clientFamily;
    }

    public int getData_birth() {
        return data_birth;
    }

    public void setData_birth(int data_birth) {
        this.data_birth = data_birth;
    }

    public int getClientPasspor() {
        return clientPasspor;
    }

    public void setClientPasspor(int clientPasspor) {
        this.clientPasspor = clientPasspor;
    }

    public String getClientAddress() {
        return clientAddress;
    }

    public void setClientAddress(String clientAddress) {
        this.clientAddress = clientAddress;
    }

    public int getNumberContract() {
        return numberContract;
    }

    public void setNumberContract(int numberContract) {
        this.numberContract = numberContract;
    }

    public String getEmailClient() {
        return emailClient;
    }

    public void setEmailClient(String emailClient) {
        this.emailClient = emailClient;
    }

    public String getPasswordClient() {
        return passwordClient;
    }

    public void setPasswordClient(String passwordClient) {
        this.passwordClient = passwordClient;
    }

    @Override
    public String toString() {
        return "Client{" +
                "id=" + id +
                ", clientName='" + clientName + '\'' +
                ", clientFamily='" + clientFamily + '\'' +
                ", data_birth=" + data_birth +
                ", clientPasspor=" + clientPasspor +
                ", clientAddress='" + clientAddress + '\'' +
                ", numberContract=" + numberContract +
                ", emailClient='" + emailClient + '\'' +
                ", passwordClient='" + passwordClient + '\'' +
                '}';
    }
}
