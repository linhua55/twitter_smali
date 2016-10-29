package com.squareup.okhttp;

import java.net.Socket;

/* compiled from: Twttr */
public interface Connection {
    Handshake getHandshake();

    Protocol getProtocol();

    Route getRoute();

    Socket getSocket();
}
