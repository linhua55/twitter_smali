package com.twitter.android;

import com.twitter.android.timeline.aw;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.timeline.i;
import com.twitter.model.timeline.l;

/* compiled from: Twttr */
class hs extends z {
    final /* synthetic */ long a;
    final /* synthetic */ aw b;
    final /* synthetic */ ho c;

    hs(ho hoVar, long j, aw awVar) {
        this.c = hoVar;
        this.a = j;
        this.b = awVar;
    }

    public void a(x xVar) {
        l b = this.c.b(this.a);
        i f = this.c.f(this.a);
        this.c.d(this.a);
        if (b != null) {
            if (f == null) {
                f = b.b;
            }
            r0.a(r1, r2, r3);
        }
    }
}
