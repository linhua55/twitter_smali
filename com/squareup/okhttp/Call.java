package com.squareup.okhttp;

import com.squareup.okhttp.Interceptor.Chain;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.http.HttpEngine;
import java.io.IOException;
import java.util.logging.Level;

/* compiled from: Twttr */
public class Call {
    volatile boolean canceled;
    private final OkHttpClient client;
    HttpEngine engine;
    private boolean executed;
    Request originalRequest;

    /* compiled from: Twttr */
    class ApplicationInterceptorChain implements Chain {
        private final boolean forWebSocket;
        private final int index;
        private final Request request;

        ApplicationInterceptorChain(int i, Request request, boolean z) {
            this.index = i;
            this.request = request;
            this.forWebSocket = z;
        }

        public Connection connection() {
            return null;
        }

        public Request request() {
            return this.request;
        }

        public Response proceed(Request request) throws IOException {
            if (this.index >= Call.this.client.interceptors().size()) {
                return Call.this.getResponse(request, this.forWebSocket);
            }
            Interceptor interceptor = (Interceptor) Call.this.client.interceptors().get(this.index);
            Response intercept = interceptor.intercept(new ApplicationInterceptorChain(this.index + 1, request, this.forWebSocket));
            if (intercept != null) {
                return intercept;
            }
            throw new NullPointerException("application interceptor " + interceptor + " returned null");
        }
    }

    /* compiled from: Twttr */
    final class AsyncCall extends NamedRunnable {
        private final boolean forWebSocket;
        private final Callback responseCallback;

        private AsyncCall(Callback callback, boolean z) {
            super("OkHttp %s", r5.originalRequest.urlString());
            this.responseCallback = callback;
            this.forWebSocket = z;
        }

        String host() {
            return Call.this.originalRequest.httpUrl().host();
        }

        Request request() {
            return Call.this.originalRequest;
        }

        Object tag() {
            return Call.this.originalRequest.tag();
        }

        void cancel() {
            Call.this.cancel();
        }

        Call get() {
            return Call.this;
        }

        protected void execute() {
            Throwable e;
            Request request;
            Object obj = 1;
            Object obj2 = null;
            try {
                Response access$100 = Call.this.getResponseWithInterceptorChain(this.forWebSocket);
                if (Call.this.canceled) {
                    try {
                        this.responseCallback.onFailure(Call.this.originalRequest, new IOException("Canceled"));
                    } catch (IOException e2) {
                        e = e2;
                        if (obj == null) {
                            if (Call.this.engine != null) {
                                request = Call.this.engine.getRequest();
                            } else {
                                request = Call.this.originalRequest;
                            }
                            this.responseCallback.onFailure(request, e);
                        } else {
                            try {
                                Internal.logger.log(Level.INFO, "Callback failure for " + Call.this.toLoggableString(), e);
                            } catch (Throwable th) {
                                Call.this.client.getDispatcher().finished(this);
                            }
                        }
                        Call.this.client.getDispatcher().finished(this);
                    }
                }
                this.responseCallback.onResponse(access$100);
                Call.this.client.getDispatcher().finished(this);
            } catch (IOException e3) {
                e = e3;
                obj = obj2;
                if (obj == null) {
                    Internal.logger.log(Level.INFO, "Callback failure for " + Call.this.toLoggableString(), e);
                } else {
                    if (Call.this.engine != null) {
                        request = Call.this.originalRequest;
                    } else {
                        request = Call.this.engine.getRequest();
                    }
                    this.responseCallback.onFailure(request, e);
                }
                Call.this.client.getDispatcher().finished(this);
            }
        }
    }

    protected Call(OkHttpClient okHttpClient, Request request) {
        this.client = okHttpClient.copyWithDefaults();
        this.originalRequest = request;
    }

    public Response execute() throws IOException {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        try {
            this.client.getDispatcher().executed(this);
            Response responseWithInterceptorChain = getResponseWithInterceptorChain(false);
            if (responseWithInterceptorChain != null) {
                return responseWithInterceptorChain;
            }
            throw new IOException("Canceled");
        } finally {
            this.client.getDispatcher().finished(this);
        }
    }

    Object tag() {
        return this.originalRequest.tag();
    }

    public void enqueue(Callback callback) {
        enqueue(callback, false);
    }

    void enqueue(Callback callback, boolean z) {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        this.client.getDispatcher().enqueue(new AsyncCall(callback, z, null));
    }

    public void cancel() {
        this.canceled = true;
        if (this.engine != null) {
            this.engine.cancel();
        }
    }

    public synchronized boolean isExecuted() {
        return this.executed;
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    private String toLoggableString() {
        return (this.canceled ? "canceled call" : "call") + " to " + this.originalRequest.httpUrl().resolve("/...");
    }

    private Response getResponseWithInterceptorChain(boolean z) throws IOException {
        return new ApplicationInterceptorChain(0, this.originalRequest, z).proceed(this.originalRequest);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    com.squareup.okhttp.Response getResponse(com.squareup.okhttp.Request r11, boolean r12) throws java.io.IOException {
        /*
        r10 = this;
        r0 = r11.body();
        if (r0 == 0) goto L_0x010b;
    L_0x0006:
        r1 = r11.newBuilder();
        r2 = r0.contentType();
        if (r2 == 0) goto L_0x001a;
    L_0x0010:
        r3 = "Content-Type";
        r2 = r2.toString();
        r1.header(r3, r2);
    L_0x001a:
        r2 = r0.contentLength();
        r4 = -1;
        r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r0 == 0) goto L_0x005a;
    L_0x0024:
        r0 = "Content-Length";
        r2 = java.lang.Long.toString(r2);
        r1.header(r0, r2);
        r0 = "Transfer-Encoding";
        r1.removeHeader(r0);
    L_0x0034:
        r2 = r1.build();
    L_0x0038:
        r0 = new com.squareup.okhttp.internal.http.HttpEngine;
        r1 = r10.client;
        r3 = 0;
        r4 = 0;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r5 = r12;
        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8);
        r10.engine = r0;
        r0 = 0;
    L_0x0048:
        r1 = r10.canceled;
        if (r1 == 0) goto L_0x006a;
    L_0x004c:
        r0 = r10.engine;
        r0.releaseStreamAllocation();
        r0 = new java.io.IOException;
        r1 = "Canceled";
        r0.<init>(r1);
        throw r0;
    L_0x005a:
        r0 = "Transfer-Encoding";
        r2 = "chunked";
        r1.header(r0, r2);
        r0 = "Content-Length";
        r1.removeHeader(r0);
        goto L_0x0034;
    L_0x006a:
        r2 = 1;
        r1 = r10.engine;	 Catch:{ RequestException -> 0x008b, RouteException -> 0x009f, IOException -> 0x00b3 }
        r1.sendRequest();	 Catch:{ RequestException -> 0x008b, RouteException -> 0x009f, IOException -> 0x00b3 }
        r1 = r10.engine;	 Catch:{ RequestException -> 0x008b, RouteException -> 0x009f, IOException -> 0x00b3 }
        r1.readResponse();	 Catch:{ RequestException -> 0x008b, RouteException -> 0x009f, IOException -> 0x00b3 }
        r1 = r10.engine;
        r8 = r1.getResponse();
        r1 = r10.engine;
        r2 = r1.followUpRequest();
        if (r2 != 0) goto L_0x00c2;
    L_0x0083:
        if (r12 != 0) goto L_0x008a;
    L_0x0085:
        r0 = r10.engine;
        r0.releaseStreamAllocation();
    L_0x008a:
        return r8;
    L_0x008b:
        r0 = move-exception;
        r0 = r0.getCause();	 Catch:{ all -> 0x0091 }
        throw r0;	 Catch:{ all -> 0x0091 }
    L_0x0091:
        r0 = move-exception;
        r1 = r2;
    L_0x0093:
        if (r1 == 0) goto L_0x009e;
    L_0x0095:
        r1 = r10.engine;
        r1 = r1.close();
        r1.release();
    L_0x009e:
        throw r0;
    L_0x009f:
        r1 = move-exception;
        r3 = r10.engine;	 Catch:{ all -> 0x0091 }
        r3 = r3.recover(r1);	 Catch:{ all -> 0x0091 }
        if (r3 == 0) goto L_0x00ae;
    L_0x00a8:
        r1 = 0;
        r10.engine = r3;	 Catch:{ all -> 0x00ac }
        goto L_0x0048;
    L_0x00ac:
        r0 = move-exception;
        goto L_0x0093;
    L_0x00ae:
        r0 = r1.getLastConnectException();	 Catch:{ all -> 0x0091 }
        throw r0;	 Catch:{ all -> 0x0091 }
    L_0x00b3:
        r1 = move-exception;
        r3 = r10.engine;	 Catch:{ all -> 0x0091 }
        r4 = 0;
        r3 = r3.recover(r1, r4);	 Catch:{ all -> 0x0091 }
        if (r3 == 0) goto L_0x00c1;
    L_0x00bd:
        r1 = 0;
        r10.engine = r3;	 Catch:{ all -> 0x00ac }
        goto L_0x0048;
    L_0x00c1:
        throw r1;	 Catch:{ all -> 0x0091 }
    L_0x00c2:
        r1 = r10.engine;
        r6 = r1.close();
        r9 = r0 + 1;
        r0 = 20;
        if (r9 <= r0) goto L_0x00eb;
    L_0x00ce:
        r6.release();
        r0 = new java.net.ProtocolException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Too many follow-up requests: ";
        r1 = r1.append(r2);
        r1 = r1.append(r9);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x00eb:
        r0 = r10.engine;
        r1 = r2.httpUrl();
        r0 = r0.sameConnection(r1);
        if (r0 != 0) goto L_0x00fb;
    L_0x00f7:
        r6.release();
        r6 = 0;
    L_0x00fb:
        r0 = new com.squareup.okhttp.internal.http.HttpEngine;
        r1 = r10.client;
        r3 = 0;
        r4 = 0;
        r7 = 0;
        r5 = r12;
        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8);
        r10.engine = r0;
        r0 = r9;
        goto L_0x0048;
    L_0x010b:
        r2 = r11;
        goto L_0x0038;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.Call.getResponse(com.squareup.okhttp.Request, boolean):com.squareup.okhttp.Response");
    }
}
