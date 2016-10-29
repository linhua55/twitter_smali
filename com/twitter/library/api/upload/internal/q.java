package com.twitter.library.api.upload.internal;

import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.internal.android.service.ab;
import com.twitter.library.api.upload.h;
import com.twitter.library.service.aa;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import defpackage.cjp;

/* compiled from: Twttr */
class q implements ac {
    final /* synthetic */ p a;

    q(p pVar) {
        this.a = pVar;
    }

    public void a(cjp cjp, ab<aa> abVar) {
        if (cjp == null) {
            this.a.b(new h(new h(this.a.d, 1005, new Exception("no response")), this.a.d, this.a.e));
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
            this.a.e = cjp.b;
            this.a.a(ExoPlayerImplInternal.MSG_SEEK_COMPLETE, AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
            this.a.c();
            return;
        }
        this.a.b(new h(aaVar, this.a.d, this.a.e));
    }
}
