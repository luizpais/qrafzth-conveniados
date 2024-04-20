package org.quarkusclub.convenios;

import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;

import java.util.UUID;

public interface MedicosResource extends PanacheEntityResource<MedicoEntity, UUID> {
}