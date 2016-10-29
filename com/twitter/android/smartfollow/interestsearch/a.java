package com.twitter.android.smartfollow.interestsearch;

import android.content.Context;
import com.twitter.android.interestpicker.ap;
import com.twitter.app.common.di.d;
import com.twitter.library.client.Session;
import cxj;
import dagger.internal.b;
import dagger.internal.e;
import java.util.Set;
import te;

/* compiled from: Twttr */
public final class a implements j {
    static final /* synthetic */ boolean a;
    private cxj<Context> b;
    private cxj<Session> c;
    private cxj<te> d;
    private cxj<ap> e;

    static {
        a = !a.class.desiredAssertionStatus();
    }

    private a(d dVar) {
        if (a || dVar != null) {
            a(dVar);
            return;
        }
        throw new AssertionError();
    }

    public static d a() {
        return new d();
    }

    private void a(d dVar) {
        this.b = new b(this, dVar);
        this.c = new c(this, dVar);
        this.d = b.a(i.a(this.b, this.c));
        this.e = b.a(h.a(this.b, this.c, this.d));
    }

    public Set<d> b() {
        return (Set) e.a().b();
    }

    public ap c() {
        return (ap) this.e.b();
    }
}
