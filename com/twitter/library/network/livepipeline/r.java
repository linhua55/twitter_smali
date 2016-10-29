package com.twitter.library.network.livepipeline;

import cyw;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.o;

/* compiled from: Twttr */
final class r implements cyw<o<String>, o<List<String>>> {
    final /* synthetic */ long a;

    r(long j) {
        this.a = j;
    }

    public o<List<String>> a(o<String> oVar) {
        return oVar.a(oVar.a(this.a, TimeUnit.MILLISECONDS), 4);
    }
}
