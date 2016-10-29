package com.twitter.database.internal;

import com.twitter.database.model.b;
import com.twitter.database.model.x;
import com.twitter.util.j;

/* compiled from: Twttr */
public abstract class q extends l implements x {
    protected q(f fVar) {
        super(fVar);
    }

    public void m() {
        j.c();
        b d = this.e_.d();
        try {
            d.a();
            d.a("DROP VIEW IF EXISTS " + a() + ";");
            d.c();
        } finally {
            d.b();
        }
    }
}
