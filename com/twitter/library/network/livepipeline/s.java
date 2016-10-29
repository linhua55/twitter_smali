package com.twitter.library.network.livepipeline;

import cfb;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.twitter.model.livepipeline.a;
import cys;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
class s implements cys<a> {
    final /* synthetic */ b a;

    s(b bVar) {
        this.a = bVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((a) obj);
    }

    public void a(a aVar) {
        this.a.i = aVar.a;
        this.a.j = aVar.b;
        this.a.k = Long.valueOf(Math.max((long) (((float) aVar.b.longValue()) * AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION), b.b));
        this.a.l = Long.valueOf(HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS);
        if (this.a.o != null) {
            this.a.o.K_();
        }
        if (this.a.l.longValue() > 0) {
            this.a.o = this.a.d.a(this.a.l.longValue(), TimeUnit.MILLISECONDS).c(new t(this));
        }
        for (String b : this.a.q) {
            this.a.d(b);
        }
        this.a.q.clear();
        cfb.b("LivePipeline", "Processing config control frame: " + aVar);
        cfb.b("LivePipeline", "Resubscribe interval: " + this.a.k);
        this.a.c();
    }
}
