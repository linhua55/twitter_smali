package com.twitter.android.timeline;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.service.ac;
import defpackage.cdw;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class an {
    private final WeakReference<Context> a;
    private final az b;
    private final bg c;
    private final ap d;

    public an(Context context, az azVar, bg bgVar, ap apVar) {
        this.a = new WeakReference(context);
        this.b = azVar;
        this.c = bgVar;
        this.d = apVar;
    }

    public void a(long j, int i) {
        Context a = a();
        if (a != null) {
            this.b.a(a(a, this.c.c(), j, i, true));
        }
    }

    @VisibleForTesting
    cdw a(Context context, Session session, long j, int i, boolean z) {
        return (cdw) cdw.a(context, session, j, i, z).a(a(j));
    }

    @VisibleForTesting
    ac<Void, cdw> a(long j) {
        return new ao(this, j);
    }

    private void b(long j) {
        if (this.d != null) {
            this.d.a(j);
        }
    }

    private Context a() {
        Context context = (Context) this.a.get();
        if (context != null) {
            return context.getApplicationContext();
        }
        return context;
    }
}
