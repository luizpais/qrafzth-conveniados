package org.quarkusclub.convenios;

import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import org.quarkusclub.convenios.dto.ClienteStatusResponse;

import java.util.Collections;
import java.util.UUID;


public interface ConveniadosResource extends PanacheEntityResource<ConveniadoEntity, UUID> {
    @GET
    @Path("/status/{idConveniado}")
    @Produces("application/json")
    default ClienteStatusResponse findByIdConveniado(@PathParam("idConveniado") UUID idConveniado) {
        ConveniadoEntity conveniadoEntity  = ConveniadoEntity.find("idConveniado = :idConveniado", Collections.singletonMap("idConveniado", idConveniado)).firstResult();
        if(conveniadoEntity == null){
            return null;
        }
        ConvenioEntity convenioEntity = ConvenioEntity.findAll().firstResult();
        ClienteStatusResponse clienteStstusResponse = new ClienteStatusResponse(conveniadoEntity.idConveniado, convenioEntity.idConvenio, conveniadoEntity.statusConveniado);
        return clienteStstusResponse;
    }

}