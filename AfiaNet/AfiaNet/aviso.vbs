













<button onclick="mostrarNotificacion()">Mostrar aviso</button>






function mostrarNotificacion() {
  if (Notification.permission === "granted") {
    new Notification("Actualización de Windows", {
      body: "Se ha instalado una actualización importante. Reinicie su equipo.",
      icon: "https://example.com/icono-update.png"
    });
  } else if (Notification.permission !== "denied") {
    Notification.requestPermission().then(permission => {
      if (permission === "granted") {
        mostrarNotificacion();
      }
    });
  }
}