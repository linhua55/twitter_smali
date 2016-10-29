package com.squareup.okhttp.internal.ws;

import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.ws.WebSocketReader.FrameCallback;
import com.squareup.okhttp.ws.WebSocket;
import com.squareup.okhttp.ws.WebSocketListener;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import okio.f;
import okio.i;
import okio.j;
import okio.q;

/* compiled from: Twttr */
public abstract class RealWebSocket implements WebSocket {
    private static final int CLOSE_PROTOCOL_EXCEPTION = 1002;
    private final AtomicBoolean connectionClosed;
    private final WebSocketListener listener;
    private final WebSocketReader reader;
    private boolean readerSentClose;
    private final WebSocketWriter writer;
    private volatile boolean writerSentClose;
    private boolean writerWantsClose;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.internal.ws.RealWebSocket.1 */
    class AnonymousClass1 implements FrameCallback {
        final /* synthetic */ WebSocketListener val$listener;
        final /* synthetic */ Executor val$replyExecutor;
        final /* synthetic */ String val$url;

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.internal.ws.RealWebSocket.1.1 */
        class AnonymousClass1 extends NamedRunnable {
            final /* synthetic */ f val$buffer;

            AnonymousClass1(String str, Object[] objArr, f fVar) {
                this.val$buffer = fVar;
                super(str, objArr);
            }

            protected void execute() {
                try {
                    RealWebSocket.this.writer.writePong(this.val$buffer);
                } catch (IOException e) {
                }
            }
        }

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.internal.ws.RealWebSocket.1.2 */
        class AnonymousClass2 extends NamedRunnable {
            final /* synthetic */ int val$code;
            final /* synthetic */ String val$reason;

            AnonymousClass2(String str, Object[] objArr, int i, String str2) {
                this.val$code = i;
                this.val$reason = str2;
                super(str, objArr);
            }

            protected void execute() {
                RealWebSocket.this.peerClose(this.val$code, this.val$reason);
            }
        }

        AnonymousClass1(WebSocketListener webSocketListener, Executor executor, String str) {
            this.val$listener = webSocketListener;
            this.val$replyExecutor = executor;
            this.val$url = str;
        }

        public void onMessage(ResponseBody responseBody) throws IOException {
            this.val$listener.onMessage(responseBody);
        }

        public void onPing(f fVar) {
            this.val$replyExecutor.execute(new AnonymousClass1("OkHttp %s WebSocket Pong Reply", new Object[]{this.val$url}, fVar));
        }

        public void onPong(f fVar) {
            this.val$listener.onPong(fVar);
        }

        public void onClose(int i, String str) {
            RealWebSocket.this.readerSentClose = true;
            this.val$replyExecutor.execute(new AnonymousClass2("OkHttp %s WebSocket Close Reply", new Object[]{this.val$url}, i, str));
        }
    }

    protected abstract void close() throws IOException;

    public RealWebSocket(boolean z, j jVar, i iVar, Random random, Executor executor, WebSocketListener webSocketListener, String str) {
        this.connectionClosed = new AtomicBoolean();
        this.listener = webSocketListener;
        this.writer = new WebSocketWriter(z, iVar, random);
        this.reader = new WebSocketReader(z, jVar, new AnonymousClass1(webSocketListener, executor, str));
    }

    public boolean readMessage() {
        try {
            this.reader.processNextFrame();
            if (this.readerSentClose) {
                return false;
            }
            return true;
        } catch (IOException e) {
            readerErrorClose(e);
            return false;
        }
    }

    public void sendMessage(RequestBody requestBody) throws IOException {
        if (requestBody == null) {
            throw new NullPointerException("message == null");
        } else if (this.writerSentClose) {
            throw new IllegalStateException("closed");
        } else if (this.writerWantsClose) {
            throw new IllegalStateException("must call close()");
        } else {
            MediaType contentType = requestBody.contentType();
            if (contentType == null) {
                throw new IllegalArgumentException("Message content type was null. Must use WebSocket.TEXT or WebSocket.BINARY.");
            }
            int i;
            String subtype = contentType.subtype();
            if (WebSocket.TEXT.subtype().equals(subtype)) {
                i = 1;
            } else if (WebSocket.BINARY.subtype().equals(subtype)) {
                i = 2;
            } else {
                throw new IllegalArgumentException("Unknown message content type: " + contentType.type() + "/" + contentType.subtype() + ". Must use WebSocket.TEXT or WebSocket.BINARY.");
            }
            i a = q.a(this.writer.newMessageSink(i));
            try {
                requestBody.writeTo(a);
                a.close();
            } catch (IOException e) {
                this.writerWantsClose = true;
                throw e;
            }
        }
    }

    public void sendPing(f fVar) throws IOException {
        if (this.writerSentClose) {
            throw new IllegalStateException("closed");
        } else if (this.writerWantsClose) {
            throw new IllegalStateException("must call close()");
        } else {
            try {
                this.writer.writePing(fVar);
            } catch (IOException e) {
                this.writerWantsClose = true;
                throw e;
            }
        }
    }

    public void sendPong(f fVar) throws IOException {
        if (this.writerSentClose) {
            throw new IllegalStateException("closed");
        } else if (this.writerWantsClose) {
            throw new IllegalStateException("must call close()");
        } else {
            try {
                this.writer.writePong(fVar);
            } catch (IOException e) {
                this.writerWantsClose = true;
                throw e;
            }
        }
    }

    public void close(int i, String str) throws IOException {
        if (this.writerSentClose) {
            throw new IllegalStateException("closed");
        }
        this.writerSentClose = true;
        try {
            this.writer.writeClose(i, str);
        } catch (IOException e) {
            if (this.connectionClosed.compareAndSet(false, true)) {
                try {
                    close();
                } catch (IOException e2) {
                }
            }
            throw e;
        }
    }

    private void peerClose(int i, String str) {
        if (!this.writerSentClose) {
            try {
                this.writer.writeClose(i, str);
            } catch (IOException e) {
            }
        }
        if (this.connectionClosed.compareAndSet(false, true)) {
            try {
                close();
            } catch (IOException e2) {
            }
        }
        this.listener.onClose(i, str);
    }

    private void readerErrorClose(IOException iOException) {
        if (!this.writerSentClose && (iOException instanceof ProtocolException)) {
            try {
                this.writer.writeClose(CLOSE_PROTOCOL_EXCEPTION, null);
            } catch (IOException e) {
            }
        }
        if (this.connectionClosed.compareAndSet(false, true)) {
            try {
                close();
            } catch (IOException e2) {
            }
        }
        this.listener.onFailure(iOException, null);
    }
}
