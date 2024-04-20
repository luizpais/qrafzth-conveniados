package org.quarkusclub.convenios;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.util.UUID;

@Entity
@Table(name = "medico")
public class MedicoEntity extends PanacheEntityBase {

    @Id
    @Column(name = "id_medico")
    public UUID idMedico = UUID.randomUUID();

    @Column(name = "nome_medico")
    public String nomeMedico;

    @Column(name = "cpf_medico")
    public String cpfMedico;

    @Column(name = "endereco_medico")
    public String EnderecoMedico;

    @Column(name = "telefone_medico")
    public String telefoneMedico;

    @Column(name = "especialidade")
    public String especialidade;

    @Column(name = "crm")
    public String crm;

    @Column(name = "ativo")
    public boolean ativo;

}
