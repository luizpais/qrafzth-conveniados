package org.quarkusclub.convenios;

import io.quarkus.runtime.StartupEvent;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.enterprise.event.Observes;
import org.eclipse.microprofile.config.inject.ConfigProperty;

@ApplicationScoped
public class ApplicationStartup {

    @ConfigProperty(name = "quarkus.datasource.jdbc.url")
    private String database;

    void onStart(@Observes StartupEvent ev) {
        System.out.println("A aplicação está subindo...");
        System.out.printf("Conectando no banco: %s\n", database);

    }
}
