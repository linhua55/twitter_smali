package defpackage;

import android.content.Context;
import cgu;
import com.twitter.android.client.bu;
import com.twitter.android.provider.m;
import sw;
import tq;

/* compiled from: Twttr */
/* renamed from: sp */
public class sp implements sw<tq, m> {
    private final ss a;
    private final su b;

    public sp(Context context, te teVar) {
        int g = bu.g();
        this.a = new ss(context, g, teVar);
        this.b = new su(context, g, teVar);
    }

    public void a(tq tqVar, sx<tq, m> sxVar) {
        if (tqVar.b == 1) {
            this.a.a((Object) tqVar.a, new sq(this, sxVar, tqVar));
        } else if (tqVar.b != 2) {
        } else {
            if (tqVar.a.contains(" ")) {
                sxVar.a(tqVar, cgu.f());
            } else {
                this.b.a((Object) tqVar.a, new sr(this, sxVar, tqVar));
            }
        }
    }

    public void a() {
        this.a.a();
        this.b.a();
    }
}
