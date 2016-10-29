package com.twitter.library.api.upload.internal;

import com.google.android.exoplayer.ExoPlayer.Factory;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.internal.android.service.ab;
import com.twitter.library.api.upload.h;
import com.twitter.library.service.aa;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import defpackage.cjp;

/* compiled from: Twttr */
class k implements ac {
    final /* synthetic */ j a;

    k(j jVar) {
        this.a = jVar;
    }

    public void a(cjp cjp, ab<aa> abVar) {
        if (cjp == null) {
            this.a.b(new h(new h(null, 1005, new Exception("no response")), null, this.a.d));
            return;
        }
        aa aaVar = (aa) e.a(abVar.b());
        if (cjp.a == 2) {
            String str = (cjp.f == null || !aj.b(cjp.f.c)) ? "Error: received failure response" : cjp.f.c;
            aaVar.a(1005, str);
        } else if (cjp.b == 0) {
            aaVar.a(1006, "Error: no media id");
        }
        if (aaVar.b()) {
            this.a.d = cjp.b;
            this.a.a(Factory.DEFAULT_MIN_REBUFFER_MS, AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
            this.a.a(0);
            return;
        }
        this.a.b(new h(aaVar, null, this.a.d));
    }
}
