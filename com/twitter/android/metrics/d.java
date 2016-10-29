package com.twitter.android.metrics;

import com.twitter.library.metrics.f;
import defpackage.arj;
import defpackage.ark;
import defpackage.arq;
import defpackage.aru;

/* compiled from: Twttr */
public class d extends f {
    private int a;

    public static d a(long j, aru aru, boolean z) {
        d dVar = (d) aru.a(arj.a("BellbirdProfileMetric", "bellbird_profile_tweets_tab:complete"));
        if (dVar != null || !z) {
            return dVar;
        }
        arj dVar2 = new d(aru);
        dVar2.b(j);
        aru.d(dVar2);
        return dVar2;
    }

    public d(arq arq) {
        super("bellbird_profile_tweets_tab:complete", ark.n, arj.a("BellbirdProfileMetric", "bellbird_profile_tweets_tab:complete"), arq);
        this.p = "BellbirdProfileMetric";
    }

    public void a(int i) {
        this.a |= i;
        if (this.a == 3) {
            j();
        }
    }
}
