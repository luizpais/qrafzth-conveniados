package org.quarkusclub.convenios;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.enterprise.event.Observes;

import io.quarkus.runtime.Startup;
import io.quarkus.runtime.StartupEvent;
import org.eclipse.microprofile.config.inject.ConfigProperty;

@Startup
@ApplicationScoped
public class StartupApplicationListener {

    @ConfigProperty(name = "quarkus.datasource.username")
    private String userName;

    public void onApplicationEvent(@Observes StartupEvent event) {
        // Coloque aqui o código que você deseja executar quando a aplicação iniciar
        System.out.printf("A aplicação está subindo...{0}", userName);

    }
}