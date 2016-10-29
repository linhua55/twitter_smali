package com.twitter.library.api.upload.internal;

import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.internal.android.service.ab;
import com.twitter.library.api.upload.h;
import com.twitter.library.service.aa;
import defpackage.cjp;

/* compiled from: Twttr */
class u implements ac {
    final /* synthetic */ p a;

    u(p pVar) {
        this.a = pVar;
    }

    public void a(cjp cjp, ab<aa> abVar) {
        aa aaVar = (aa) abVar.b();
        if (aaVar == null) {
            aaVar = new h(this.a.d, 1005, new Exception("Append request result is null"));
            abVar.a(aaVar);
        }
        if (aaVar.b()) {
            p pVar = this.a;
            pVar.g++;
            this.a.a(this.a.f * this.a.g, AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
            this.a.d();
            return;
        }
        this.a.b(new h(aaVar, this.a.d, this.a.e));
    }
}
