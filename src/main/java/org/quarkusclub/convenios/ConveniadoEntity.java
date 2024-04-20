package org.quarkusclub.convenios;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.util.UUID;

@Entity
@Table(name = "conveniado")
public class ConveniadoEntity extends PanacheEntityBase {

    @Id
    @Column(name = "id_conveniado")
    public UUID idConveniado = UUID.randomUUID();

    @Column(name = "nome_conveniado")
    public String nomeConveniado;

    @Column(name = "cpf_conveniado")
    public String cpfConveniado;

    @Column(name = "endereco_conveniado")
    public String EnderecoConveniado;

    @Column(name = "telefone_conveniado")
    public String telefoneConveniado;

    @Column(name = "status")
    public boolean statusConveniado = true;
}