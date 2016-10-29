package tv.periscope.chatman;

import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.ws.WebSocket;
import com.squareup.okhttp.ws.WebSocketCall;
import defpackage.dde;
import defpackage.ddj;
import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import tv.periscope.chatman.api.WireMessage;
import tv.periscope.chatman.model.a;

/* compiled from: Twttr */
class f implements Closeable {
    public final String a;
    public final String b;
    private final h c;
    private final k d;
    private final String e;
    private volatile WebSocket f;
    private volatile i g;
    private volatile boolean h;
    private volatile long i;
    private volatile boolean j;

    private f(h hVar, a aVar, String str) {
        this.c = hVar;
        this.d = new k(this);
        this.a = a(aVar.a());
        this.b = aVar.b();
        this.e = str;
    }

    public static f a(a aVar, String str, Executor executor, h hVar, String str2) {
        f fVar = new f(hVar, aVar, str2);
        executor.execute(new j(fVar, str));
        return fVar;
    }

    private static String a(String str) {
        if (str.equals("127.0.0.1:8088")) {
            str = "10.0.2.2:8088";
        }
        if (str.startsWith("http://")) {
            return "ws://" + str.substring("http://".length());
        }
        if (str.startsWith("https://")) {
            return "wss://" + str.substring("https://".length());
        }
        return "ws://" + str;
    }

    public void a() {
        this.j = true;
        this.h = false;
    }

    private Future<Boolean> c() {
        ddj.e("CM", "open ep=" + this.a);
        this.g = new i(new g(this));
        OkHttpClient okHttpClient = new OkHttpClient();
        okHttpClient.setConnectTimeout(10, TimeUnit.SECONDS);
        okHttpClient.setReadTimeout(60, TimeUnit.SECONDS);
        okHttpClient.setWriteTimeout(10, TimeUnit.SECONDS);
        WebSocketCall.create(okHttpClient, new Builder().url(this.a + "/chatapi/v1/chatnow").addHeader("User-Agent", "ChatMan/1 (Android) " + this.e).build()).enqueue(this.d);
        okHttpClient.getDispatcher().getExecutorService().shutdown();
        return this.g;
    }

    public void close() throws IOException {
        WebSocket webSocket = this.f;
        if (webSocket == null) {
            ddj.e("CM", "already closed");
            return;
        }
        this.f = null;
        ddj.e("CM", "close by self ws=" + webSocket);
        try {
            webSocket.close(1000, "close by self");
        } catch (IllegalStateException e) {
            ddj.e("CM", "the underlying websocket is already closed");
        }
    }

    public void a(WireMessage wireMessage) throws IOException {
        WebSocket webSocket = this.f;
        if (webSocket == null) {
            throw new IOException("websocket closed");
        }
        String a = dde.a.a(wireMessage);
        ddj.e("CM", "send json " + a);
        try {
            webSocket.sendMessage(RequestBody.create(WebSocket.TEXT, a));
            this.c.a(wireMessage);
        } catch (IllegalStateException e) {
            ddj.e("CM", "websocket is closed before sendmessage");
        }
    }

    public void b() throws IOException {
        if (this.f == null) {
            throw new IOException("ping error, socket closed");
        } else if (this.i != 0) {
            throw new IOException("no pong for last ping");
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            this.f.sendPing(new okio.f().h(currentTimeMillis));
            this.i = currentTimeMillis;
            ddj.e("CM", "---> ping");
        }
    }
}
