package org.quarkusclub.convenios;


import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.util.UUID;

@Entity
@Table(name = "convenio")
public class ConvenioEntity extends PanacheEntityBase {

        @Id
        @Column(name = "id_convenio")
        public UUID idConvenio = UUID.randomUUID();

        @Column(name = "nome_convenio")
        public String nomeConvenio;

        @Column(name = "cnpj_convenio")
        public String cnpjConvenio;

        @Column(name = "ativo")
        public boolean ativo;
}
