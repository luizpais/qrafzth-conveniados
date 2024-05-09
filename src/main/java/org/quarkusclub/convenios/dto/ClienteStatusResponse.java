package org.quarkusclub.convenios.dto;

import java.util.UUID;

public record ClienteStatusResponse(UUID idConveniado, UUID idConvenio, boolean status){
}
