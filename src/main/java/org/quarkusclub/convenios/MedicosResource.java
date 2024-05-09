package org.quarkusclub.convenios;

import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import org.quarkusclub.convenios.dto.MedicoStatusResponse;

import java.util.Collections;
import java.util.UUID;

public interface MedicosResource extends PanacheEntityResource<MedicoEntity, UUID> {
    @GET
    @Path("/status/{nomeMedico}")
    @Produces("application/json")
    default MedicoStatusResponse findByIdMedico(@PathParam("nomeMedico") String nomeMedico) {
        MedicoEntity medicoEntity = MedicoEntity.find("nomeMedico = :nomeMedico", Collections.singletonMap("nomeMedico", nomeMedico)).firstResult();
        if (medicoEntity == null) {
            return null;
        }

        MedicoStatusResponse clienteStstusResponse = new MedicoStatusResponse(medicoEntity.idMedico, medicoEntity.ativo);
        return clienteStstusResponse;
    }
}