package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.util.InvalidDataException;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;
import com.twitter.util.collection.n;
import defpackage.bbn;
import java.util.Locale;

/* compiled from: Twttr */
public abstract class a extends af<t<cm, cd>> {
    private final long b;
    private final boolean c;
    private final String g;
    private final di h;
    private final t<cm, cd> i;
    private int[] j;
    private int k;

    protected /* synthetic */ c f() {
        return b();
    }

    protected a(Context context, ab abVar, long j, boolean z, di diVar, t<cm, cd> tVar) {
        super(context, d.class.getName(), abVar);
        this.j = cd.b;
        this.h = diVar;
        this.i = tVar;
        this.c = z;
        this.b = j;
        this.g = String.format(Locale.ENGLISH, "request_favorite_%d_%d", new Object[]{Long.valueOf(N().c), Long.valueOf(j)});
    }

    protected t<cm, cd> b() {
        return this.i;
    }

    public Runnable c(AsyncOperation asyncOperation) {
        if (asyncOperation != null) {
            asyncOperation.cancel(true);
        }
        return new b(this);
    }

    public void a(com.twitter.internal.android.service.ab<aa> abVar) {
        super.a((com.twitter.internal.android.service.ab) abVar);
        boolean U = U();
        long j = N().c;
        if (U) {
            Object obj = (cm) this.i.b();
            if (obj != null) {
                obj.D = this.c;
                obj.E = Math.max(obj.E, this.k);
                this.k = obj.E;
                e T = T();
                this.h.a(n.b(obj), j, this.c ? 2 : -1, -1, true, false, true, null, true, T, true);
                T.a();
                return;
            }
            bbn.a(new InvalidDataException("Received null status."));
            return;
        }
        this.j = cd.a((cd) this.i.c());
    }

    public long g() {
        return this.b;
    }

    public int h() {
        return this.k;
    }

    public int[] s() {
        return this.j;
    }

    protected String o() {
        return this.g;
    }
}
