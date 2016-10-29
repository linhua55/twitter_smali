package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException;
import java.io.IOException;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
public abstract class h<V> implements Callable<V> {
    protected abstract V b() throws HttpRequestException, IOException;

    protected abstract void c() throws IOException;

    protected h() {
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public V call() throws io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException {
        /*
        r3 = this;
        r1 = 1;
        r2 = 0;
        r0 = r3.b();	 Catch:{ HttpRequestException -> 0x0011, IOException -> 0x0018, all -> 0x0028 }
        r3.c();	 Catch:{ IOException -> 0x000a }
        return r0;
    L_0x000a:
        r0 = move-exception;
        r1 = new io.fabric.sdk.android.services.network.HttpRequest$HttpRequestException;
        r1.<init>(r0);
        throw r1;
    L_0x0011:
        r0 = move-exception;
        throw r0;	 Catch:{ all -> 0x0013 }
    L_0x0013:
        r0 = move-exception;
    L_0x0014:
        r3.c();	 Catch:{ IOException -> 0x001f }
    L_0x0017:
        throw r0;
    L_0x0018:
        r0 = move-exception;
        r2 = new io.fabric.sdk.android.services.network.HttpRequest$HttpRequestException;	 Catch:{ all -> 0x0013 }
        r2.<init>(r0);	 Catch:{ all -> 0x0013 }
        throw r2;	 Catch:{ all -> 0x0013 }
    L_0x001f:
        r2 = move-exception;
        if (r1 != 0) goto L_0x0017;
    L_0x0022:
        r0 = new io.fabric.sdk.android.services.network.HttpRequest$HttpRequestException;
        r0.<init>(r2);
        throw r0;
    L_0x0028:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0014;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.network.h.call():V");
    }
}
