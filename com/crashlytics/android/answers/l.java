package com.crashlytics.android.answers;

import cwq;
import cwr;
import cwt;
import cxb;
import java.io.File;
import java.util.List;

/* compiled from: Twttr */
class l implements cxb {
    private final x a;
    private final u b;

    public static l a(x xVar) {
        return new l(xVar, new u(new cwt(new t(new cwr(1000, 8), 0.1d), new cwq(5))));
    }

    l(x xVar, u uVar) {
        this.a = xVar;
        this.b = uVar;
    }

    public boolean a(List<File> list) {
        long nanoTime = System.nanoTime();
        if (!this.b.a(nanoTime)) {
            return false;
        }
        if (this.a.a(list)) {
            this.b.a();
            return true;
        }
        this.b.b(nanoTime);
        return false;
    }
}
