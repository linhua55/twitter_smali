package com.twitter.android.widget;

import bnq;
import com.twitter.android.nu;
import com.twitter.library.client.bg;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.core.Tweet;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class ed extends z {
    private final long a;
    private final Tweet b;
    private final boolean c;
    private final WeakReference<nu> d;

    public ed(long j, Tweet tweet, boolean z, nu nuVar) {
        this.a = j;
        this.b = tweet;
        this.c = z;
        this.d = new WeakReference(nuVar);
    }

    public void b(x xVar) {
        nu nuVar = (nu) this.d.get();
        if (nuVar != null) {
            nuVar.a(this.a, this.b, this.c);
        }
    }

    public void a(x xVar) {
        nu nuVar = (nu) this.d.get();
        if (nuVar != null) {
            if (xVar.N().c == bg.a().c().g()) {
                nuVar.a(xVar instanceof bnq ? ((bnq) xVar).s() : this.b.u, ((aa) xVar.l().b()).b(), this.c, xVar.isCancelled());
            }
        }
    }
}
