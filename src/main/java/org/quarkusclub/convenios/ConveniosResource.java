package org.quarkusclub.convenios;

import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;

import java.util.UUID;

public interface ConveniosResource extends PanacheEntityResource<ConvenioEntity, UUID> {
}
