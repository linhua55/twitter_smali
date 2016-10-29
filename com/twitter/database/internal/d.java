package com.twitter.database.internal;

import com.twitter.database.model.b;
import com.twitter.util.j;

/* compiled from: Twttr */
public abstract class d implements com.twitter.database.model.d {
    protected final f e_;

    protected d(f fVar) {
        this.e_ = fVar;
    }

    public void h() {
        j.c();
        b d = this.e_.d();
        try {
            d.a();
            d.a(b());
            d.c();
        } finally {
            d.b();
        }
    }
}
