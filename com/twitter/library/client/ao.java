package com.twitter.library.client;

import com.twitter.app.common.base.p;
import com.twitter.app.common.util.s;
import com.twitter.library.service.x;
import com.twitter.util.collection.MutableList;
import defpackage.cto;
import java.util.List;

/* compiled from: Twttr */
public class ao {
    private final az a;
    private final List<aw> b;
    private final bb c;
    private final ar d;
    private as e;

    public static <T extends s & p> ao a(T t, az azVar) {
        ao aoVar = (ao) ((p) t).a_("request_controller");
        if (aoVar == null) {
            return new ao(azVar, t);
        }
        aoVar.a((s) t);
        return aoVar;
    }

    public ao(az azVar, s sVar) {
        this.b = MutableList.a(5);
        this.c = new ap(this);
        this.a = azVar;
        this.d = new ar(sVar, this.c);
    }

    public void a(as asVar) {
        this.e = asVar;
    }

    public boolean a(long j, int i) {
        for (aw awVar : this.b) {
            if (awVar.d == j && awVar.c == i) {
                return true;
            }
        }
        return false;
    }

    public boolean a(long j) {
        for (aw awVar : this.b) {
            if (awVar.d == j && awVar.c != 0) {
                return true;
            }
        }
        return false;
    }

    public Iterable<aw> b(long j) {
        return cto.a(this.b, new aq(this, j));
    }

    public final boolean a(long j, x xVar, int i, int i2) {
        if (!this.a.a(xVar, i, this.d)) {
            return false;
        }
        this.b.add(new aw(xVar.d, xVar, i, i2, j));
        return true;
    }

    public void a(s sVar) {
        this.d.a(sVar, this.c);
    }

    public void c(long j) {
        List<aw> a = MutableList.a();
        for (aw awVar : this.b) {
            if (awVar.d == j && !this.a.a(awVar.a)) {
                a.add(awVar);
            }
        }
        for (aw awVar2 : a) {
            this.b.remove(awVar2);
            if (awVar2.e.isDone() && this.e != null) {
                this.e.a(awVar2);
            }
        }
    }

    private aw a(x xVar) {
        List list = this.b;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((aw) list.get(i)).e == xVar) {
                return (aw) list.remove(i);
            }
        }
        return null;
    }
}
