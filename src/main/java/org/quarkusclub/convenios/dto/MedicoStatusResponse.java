package org.quarkusclub.convenios.dto;

import java.util.UUID;

public record MedicoStatusResponse(UUID idMedico, boolean status){
}
