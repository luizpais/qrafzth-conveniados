package org.quarkusclub.convenios;

import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import org.quarkusclub.convenios.dto.ClienteStstusResponse;

import java.util.Collections;
import java.util.UUID;


public interface ConveniadosResource extends PanacheEntityResource<ConveniadoEntity, UUID> {
    @GET
    @Path("/status/{idConveniado}")
    @Produces("application/json")
    default ClienteStstusResponse findByName(@PathParam("idConveniado") UUID idConveniado) {
        ConveniadoEntity conveniadoEntity  = ConveniadoEntity.find("idConveniado = :idConveniado", Collections.singletonMap("idConveniado", idConveniado)).singleResult();
        if(conveniadoEntity == null){
            return null;
        }
        ConvenioEntity convenioEntity = ConvenioEntity.findAll().firstResult();
        ClienteStstusResponse clienteStstusResponse = new ClienteStstusResponse(conveniadoEntity.idConveniado, convenioEntity.idConvenio, conveniadoEntity.statusConveniado);
        return clienteStstusResponse;
    }
}