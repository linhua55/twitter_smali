package com.google.android.gms.clearcut;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.t;
import com.google.android.gms.internal.ya;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import java.util.ArrayList;

public class d {
    final /* synthetic */ b a;
    private int b;
    private String c;
    private String d;
    private String e;
    private int f;
    private final e g;
    private e h;
    private ArrayList<Integer> i;
    private final ya j;
    private boolean k;

    private d(b bVar, byte[] bArr) {
        this(bVar, bArr, null);
    }

    private d(b bVar, byte[] bArr, e eVar) {
        this.a = bVar;
        this.b = b.a(this.a);
        this.c = b.b(this.a);
        this.d = b.c(this.a);
        this.e = b.d(this.a);
        this.f = b.e(this.a);
        this.i = null;
        this.j = new ya();
        this.k = false;
        this.d = b.c(bVar);
        this.e = b.d(bVar);
        this.j.b = b.f(bVar).a();
        this.j.c = b.f(bVar).b();
        this.j.u = (long) b.h(bVar).a(b.g(bVar));
        this.j.p = b.i(bVar).a(this.j.b);
        if (bArr != null) {
            this.j.k = bArr;
        }
        this.g = eVar;
    }

    public LogEventParcelable a() {
        return new LogEventParcelable(new PlayLoggerContext(b.k(this.a), b.l(this.a), this.b, this.c, this.d, this.e, b.j(this.a), this.f), this.j, this.g, this.h, b.a(this.i));
    }

    public d a(int i) {
        this.j.f = i;
        return this;
    }

    public t<Status> a(n nVar) {
        if (this.k) {
            throw new IllegalStateException("do not reuse LogEventBuilder");
        }
        this.k = true;
        return b.m(this.a).a(nVar, a());
    }

    public d b(int i) {
        this.j.g = i;
        return this;
    }
}
