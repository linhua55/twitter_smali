package com.twitter.database.internal;

import com.twitter.database.model.b;
import com.twitter.database.model.e;
import com.twitter.database.model.s;
import com.twitter.util.j;

/* compiled from: Twttr */
public abstract class o extends l implements s {
    protected o(f fVar) {
        super(fVar);
    }

    public void h() {
        j.c();
        b d = this.e_.d();
        try {
            d.a();
            super.h();
            for (e a : d()) {
                a.a(d);
            }
            d.c();
        } finally {
            d.b();
        }
    }

    public void m() {
        j.c();
        b d = this.e_.d();
        try {
            d.a();
            for (e b : d()) {
                b.b(d);
            }
            d.a("DROP TABLE IF EXISTS " + a() + ";");
            d.c();
        } finally {
            d.b();
        }
    }

    public void n() {
        j.c();
        b d = this.e_.d();
        try {
            d.a();
            for (e eVar : d()) {
                eVar.b(d);
                eVar.a(d);
            }
            d.c();
        } finally {
            d.b();
        }
    }

    public int o() {
        return a(null, null);
    }

    protected int a(String str, String[] strArr) {
        j.c();
        int b = this.e_.d().b(a(), str, strArr);
        l();
        return b;
    }
}
