package com.twitter.library.api.upload;

import android.content.Context;
import com.twitter.internal.android.service.d;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import defpackage.bmw;
import java.util.UUID;

/* compiled from: Twttr */
public abstract class z extends x {
    private final String a;
    private r b;
    protected final d g;
    protected n h;

    protected abstract void a(aa aaVar);

    protected z(Context context, String str, Session session) {
        super(context, str, session);
        this.a = this.d;
        this.g = new d();
    }

    protected z(Context context, String str, ab abVar) {
        this(null, context, str, abVar);
    }

    protected z(String str, Context context, String str2, ab abVar) {
        super(context, str2, abVar);
        if (str == null) {
            str = UUID.randomUUID().toString();
        }
        this.a = str;
        this.g = new d();
    }

    public String at_() {
        return this.a;
    }

    public int v() {
        return 1;
    }

    public d m() {
        return this.g;
    }

    protected final void a_(aa aaVar) {
        if (this.b != null) {
            this.b.a(this);
        }
        a(aaVar);
        if (this.b != null) {
            if (this.h != null) {
                this.b.a(this, aaVar, this.h);
            }
            this.b.a(this, aaVar);
        }
    }

    protected void w() {
        this.g.a("uploadDuration");
    }

    protected void x() {
        this.g.b("uploadDuration");
    }

    public z a(r rVar) {
        this.b = rVar;
        return this;
    }

    protected aa a(z zVar) {
        aa P = zVar.a(this.o).P();
        a(zVar.o);
        return P;
    }

    public void a(int i) {
        bmw.a().a(at_(), v(), i);
    }
}
