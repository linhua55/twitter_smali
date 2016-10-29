package com.twitter.library.api.upload.internal;

import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.library.api.upload.h;
import com.twitter.library.scribe.ScribeItemUploadMedia;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
class i extends z {
    final /* synthetic */ h a;

    i(h hVar) {
        this.a = hVar;
    }

    public void a(x xVar) {
        String str;
        aa aaVar = (aa) xVar.l().b();
        long j = -1;
        if (aaVar.b()) {
            j = ((g) xVar).b();
            this.a.a(AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS, AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
            str = "success";
        } else {
            str = "failure";
        }
        this.a.b(new h(aaVar, this.a.d, j));
        this.a.a("media_uploader", "upload", str, new ScribeItemUploadMedia().a(this.a.d.f).a(this.a.d.d.length()).a(this.a.d.a()).a(this.a.e));
    }
}
