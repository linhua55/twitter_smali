package com.twitter.library.network.livepipeline;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.network.livepipeline.ConnectionManager.Status;
import com.twitter.library.service.aa;
import rx.r;

/* compiled from: Twttr */
class a extends w {
    final /* synthetic */ ConnectionManager b;

    a(ConnectionManager connectionManager, r rVar, Context context, long j) {
        this.b = connectionManager;
        super(rVar, context, j);
    }

    protected void b() {
        this.b.e = Status.CONNECTED;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, aa aaVar2) {
        this.b.e = Status.DISCONNECTED;
        this.b.a = null;
    }
}
