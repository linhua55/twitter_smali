package defpackage;

import android.content.Context;
import boq;
import com.twitter.library.client.Session;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.model.core.TwitterUser;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: boe */
public class boe extends x {
    public final int a;
    private final List<TwitterUser> b;
    private long c;
    private int g;
    private int h;
    private int i;
    private String j;

    public boe(Context context, Session session, int i) {
        this(context, new ab(session), i);
    }

    public boe(Context context, ab abVar, int i) {
        super(context, boe.class.getName(), abVar);
        this.b = new ArrayList();
        this.g = 0;
        this.a = i;
        this.c = abVar.c;
    }

    public boe a(int i) {
        this.h = i;
        return this;
    }

    public boe c(int i) {
        this.g = i;
        return this;
    }

    public boe a(String str, long j) {
        this.j = str;
        this.c = j;
        return this;
    }

    protected void a_(aa aaVar) {
        int a;
        int i = this.h;
        if (i > 0) {
            a = an.a(i, 20);
        } else {
            a = 1;
        }
        String a2 = S().a(1, this.a, this.c, this.g);
        int i2 = 0;
        while (i2 < a) {
            boq boq = (boq) new boq(this.p, N(), this.c, this.a, a2).a(this.j).a(this);
            aa P = boq.P();
            aaVar.a(P);
            if (P.b()) {
                this.b.addAll(boq.a);
                this.i += boq.c;
                a2 = boq.b;
                if ((this.h <= 0 || this.b.size() < this.h) && !"0".equals(a2)) {
                    i2++;
                } else {
                    return;
                }
            }
            return;
        }
    }

    public List<TwitterUser> a() {
        return this.b;
    }
}
