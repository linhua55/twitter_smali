package com.twitter.model.businessprofiles;

import cgl;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class h extends f<e> {
    String a;
    String b;
    String c;
    cgl d;

    protected /* synthetic */ Object c() {
        return d();
    }

    public h a(String str) {
        this.a = str;
        return this;
    }

    public h b(String str) {
        this.b = str;
        return this;
    }

    public h c(String str) {
        this.c = str;
        return this;
    }

    public h a(cgl cgl) {
        this.d = cgl;
        return this;
    }

    protected e d() {
        return new e(this);
    }
}
