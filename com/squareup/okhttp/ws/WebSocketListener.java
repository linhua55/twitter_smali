package com.squareup.okhttp.ws;

import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.IOException;
import okio.f;

/* compiled from: Twttr */
public interface WebSocketListener {
    void onClose(int i, String str);

    void onFailure(IOException iOException, Response response);

    void onMessage(ResponseBody responseBody) throws IOException;

    void onOpen(WebSocket webSocket, Response response);

    void onPong(f fVar);
}
