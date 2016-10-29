package com.twitter.android.av.watchmode.view;

import com.twitter.util.collection.n;
import defpackage.cqp;
import java.util.List;

/* compiled from: Twttr */
public class b implements cqp {
    private List<cqp> a;

    public b(cqp... cqpArr) {
        this.a = n.a((Object[]) cqpArr);
    }

    public void e() {
        for (cqp e : this.a) {
            e.e();
        }
    }

    public void a(float f) {
        for (cqp a : this.a) {
            a.a(f);
        }
    }
}
