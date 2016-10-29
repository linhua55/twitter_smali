package com.squareup.okhttp.ws;

import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.RequestBody;
import java.io.IOException;
import okio.f;

/* compiled from: Twttr */
public interface WebSocket {
    public static final MediaType BINARY;
    public static final MediaType TEXT;

    void close(int i, String str) throws IOException;

    void sendMessage(RequestBody requestBody) throws IOException;

    void sendPing(f fVar) throws IOException;

    static {
        TEXT = MediaType.parse("application/vnd.okhttp.websocket+text; charset=utf-8");
        BINARY = MediaType.parse("application/vnd.okhttp.websocket+binary");
    }
}
