package tv.periscope.chatman;

import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.ws.WebSocket;
import com.squareup.okhttp.ws.WebSocketListener;
import defpackage.dde;
import defpackage.ddj;
import java.io.IOException;
import okio.f;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class k implements WebSocketListener {
    final /* synthetic */ f a;

    k(f fVar) {
        this.a = fVar;
    }

    public void onOpen(WebSocket webSocket, Response response) {
        ddj.e("CM", "websocket opened");
        this.a.f = webSocket;
        i e = this.a.g;
        this.a.g = null;
        e.run();
    }

    public void onMessage(ResponseBody responseBody) throws IOException {
        MediaType contentType = responseBody.contentType();
        ddj.e("CM", "got message " + contentType);
        try {
            if (contentType != WebSocket.TEXT) {
                ddj.f("CM", "unexpected binary message");
                throw new IOException("unexpected binary message");
            }
            String r = responseBody.source().r();
            ddj.e("CM", "message payload " + r);
            this.a.c.a((WireMessage) dde.a.a(r, WireMessage.class), r);
            responseBody.close();
        } catch (Throwable th) {
            responseBody.close();
        }
    }

    public void onPong(f fVar) {
        if (fVar == null) {
            ddj.f("CM", "unexpected pong with no payload");
            return;
        }
        long l = fVar.l();
        if (l != this.a.i) {
            ddj.f("CM", "unexpected pong got=" + l + ", want=" + this.a.i);
            return;
        }
        ddj.e("CM", "<--- pong");
        this.a.i = 0;
    }

    public void onClose(int i, String str) {
        ddj.h("CM", "onclose code=" + i + ", reason=" + str + ", ws=" + this.a.f);
        if (this.a.f != null) {
            this.a.f = null;
            this.a.c.a(i);
        }
    }

    public void onFailure(IOException iOException, Response response) {
        ddj.f("CM", "socket i/o failure, ws=" + this.a.f, iOException);
        i e = this.a.g;
        this.a.g = null;
        if (e != null) {
            e.a(iOException);
        }
        if (this.a.f != null) {
            if (response != null) {
                ddj.f("CM", "Connection Failed {Code: " + response.code() + ", " + response.body() + "}", iOException);
            } else {
                ddj.f("CM", "Connection Failed", iOException);
            }
            this.a.f = null;
            this.a.c.a(this.a);
        }
    }
}
