package com.twitter.android.moments.ui.fullscreen;

import cgu;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.util.collection.n;
import cyw;
import java.util.List;
import java.util.Map;
import rx.o;

/* compiled from: Twttr */
class fk implements cyw<cgu<MomentModule>, o<Map<MomentModule, a>>> {
    final /* synthetic */ fh a;

    fk(fh fhVar) {
        this.a = fhVar;
    }

    public o<Map<MomentModule, a>> a(cgu<MomentModule> cgu_com_twitter_android_moments_viewmodels_MomentModule) {
        n d = n.d();
        List<MomentModule> a = n.a(cgu_com_twitter_android_moments_viewmodels_MomentModule);
        for (MomentModule b : a) {
            d.c(this.a.b.a(b.b().b));
        }
        return o.a((Iterable) d.q(), fh.d()).g(fh.b(a));
    }
}
