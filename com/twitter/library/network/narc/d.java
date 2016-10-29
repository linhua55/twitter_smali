package com.twitter.library.network.narc;

import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.c;

/* compiled from: Twttr */
public final class d implements c {
    private q a;
    private final com.twitter.internal.android.service.d b;

    public d(com.twitter.internal.android.service.d dVar) {
        this.b = dVar;
    }

    public void a(HttpOperation httpOperation) {
        synchronized ("HttpOperationNARCLogger") {
            this.a = new q(httpOperation, this.b);
            i.a(this.a);
        }
    }

    public void b(HttpOperation httpOperation) {
        synchronized ("HttpOperationNARCLogger") {
            this.a.b();
        }
    }

    public void a(HttpOperation httpOperation, Exception exception) {
    }
}
