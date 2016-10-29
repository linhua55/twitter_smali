package com.squareup.okhttp.ws;

import com.squareup.okhttp.Call;
import com.squareup.okhttp.Callback;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.StreamAllocation;
import com.squareup.okhttp.internal.ws.RealWebSocket;
import com.squareup.okhttp.internal.ws.WebSocketProtocol;
import defpackage.bdd;
import java.io.IOException;
import java.net.ProtocolException;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okio.ByteString;

/* compiled from: Twttr */
public final class WebSocketCall {
    private final Call call;
    private final String key;
    private final Random random;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.ws.WebSocketCall.1 */
    class AnonymousClass1 implements Callback {
        final /* synthetic */ WebSocketListener val$listener;

        AnonymousClass1(WebSocketListener webSocketListener) {
            this.val$listener = webSocketListener;
        }

        public void onResponse(Response response) throws IOException {
            try {
                WebSocketCall.this.createWebSocket(response, this.val$listener);
            } catch (IOException e) {
                this.val$listener.onFailure(e, response);
            }
        }

        public void onFailure(Request request, IOException iOException) {
            this.val$listener.onFailure(iOException, null);
        }
    }

    /* compiled from: Twttr */
    class StreamWebSocket extends RealWebSocket {
        private final ExecutorService replyExecutor;
        private final StreamAllocation streamAllocation;

        static RealWebSocket create(StreamAllocation streamAllocation, Response response, Random random, WebSocketListener webSocketListener) {
            String urlString = response.request().urlString();
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 1, TimeUnit.SECONDS, new LinkedBlockingDeque(), Util.threadFactory(String.format("OkHttp %s WebSocket", new Object[]{urlString}), true));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            return new StreamWebSocket(streamAllocation, random, threadPoolExecutor, webSocketListener, urlString);
        }

        private StreamWebSocket(StreamAllocation streamAllocation, Random random, ExecutorService executorService, WebSocketListener webSocketListener, String str) {
            super(true, streamAllocation.connection().source, streamAllocation.connection().sink, random, executorService, webSocketListener, str);
            this.streamAllocation = streamAllocation;
            this.replyExecutor = executorService;
        }

        protected void close() throws IOException {
            this.replyExecutor.shutdown();
            this.streamAllocation.noNewStreams();
            this.streamAllocation.streamFinished(this.streamAllocation.stream());
        }
    }

    public static WebSocketCall create(OkHttpClient okHttpClient, Request request) {
        return new WebSocketCall(okHttpClient, request);
    }

    WebSocketCall(OkHttpClient okHttpClient, Request request) {
        this(okHttpClient, request, new SecureRandom());
    }

    WebSocketCall(OkHttpClient okHttpClient, Request request, Random random) {
        if ("GET".equals(request.method())) {
            this.random = random;
            byte[] bArr = new byte[16];
            random.nextBytes(bArr);
            this.key = ByteString.a(bArr).b();
            OkHttpClient clone = okHttpClient.clone();
            clone.setProtocols(Collections.singletonList(Protocol.HTTP_1_1));
            this.call = clone.newCall(request.newBuilder().header("Upgrade", "websocket").header("Connection", "Upgrade").header("Sec-WebSocket-Key", this.key).header("Sec-WebSocket-Version", "13").build());
            return;
        }
        throw new IllegalArgumentException("Request must be GET: " + request.method());
    }

    public void enqueue(WebSocketListener webSocketListener) {
        Internal.instance.callEnqueue(this.call, new AnonymousClass1(webSocketListener), true);
    }

    public void cancel() {
        this.call.cancel();
    }

    private void createWebSocket(Response response, WebSocketListener webSocketListener) throws IOException {
        if (response.code() != bdd.AppCompatTheme_buttonStyleSmall) {
            Util.closeQuietly(response.body());
            throw new ProtocolException("Expected HTTP 101 response but was '" + response.code() + " " + response.message() + "'");
        }
        String header = response.header("Connection");
        if ("Upgrade".equalsIgnoreCase(header)) {
            header = response.header("Upgrade");
            if ("websocket".equalsIgnoreCase(header)) {
                header = response.header("Sec-WebSocket-Accept");
                String shaBase64 = Util.shaBase64(this.key + WebSocketProtocol.ACCEPT_MAGIC);
                if (shaBase64.equals(header)) {
                    Object create = StreamWebSocket.create(Internal.instance.callEngineGetStreamAllocation(this.call), response, this.random, webSocketListener);
                    webSocketListener.onOpen(create, response);
                    do {
                    } while (create.readMessage());
                    return;
                }
                throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + shaBase64 + "' but was '" + header + "'");
            }
            throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + header + "'");
        }
        throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + header + "'");
    }
}
