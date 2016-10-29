package com.twitter.library.network.livepipeline;

import android.content.Context;
import android.os.Bundle;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.c;
import com.twitter.library.client.az;
import com.twitter.library.service.aa;
import com.twitter.model.livepipeline.e;
import java.util.Set;
import rx.r;

/* compiled from: Twttr */
class ConnectionManager {
    protected w a;
    private final r<e> b;
    private final az c;
    private final Context d;
    private Status e;

    /* compiled from: Twttr */
    public enum Status {
        DISCONNECTED,
        CONNECTING,
        CONNECTED
    }

    static ConnectionManager a(r<e> rVar, Context context) {
        return new ConnectionManager(rVar, context);
    }

    private ConnectionManager(r<e> rVar, Context context) {
        this.e = Status.DISCONNECTED;
        this.b = rVar;
        this.c = az.a(context);
        this.d = context.getApplicationContext();
    }

    public void a(Set<String> set, c<Bundle, AsyncOperation<Bundle, aa>> cVar, long j) {
        synchronized (this) {
            if (a() != Status.DISCONNECTED) {
                return;
            }
            this.e = Status.CONNECTING;
            this.a = new a(this, this.b, this.d, j);
            if (cVar != null) {
                this.a.a(cVar);
            }
            for (String a : set) {
                this.a.a(a);
            }
            this.c.a(this.a);
        }
    }

    public Status a() {
        return this.e;
    }

    public void b() {
        synchronized (this) {
            if (this.a != null) {
                this.a.cancel(true);
            }
            this.e = Status.DISCONNECTED;
            this.a = null;
        }
    }
}
