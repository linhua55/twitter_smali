package com.twitter.android.moments.ui.fullscreen;

import android.content.res.Resources;
import android.support.v4.app.FragmentManager;
import com.twitter.android.util.bo;
import com.twitter.model.core.p;
import com.twitter.model.moments.a;
import cyw;
import rx.w;

/* compiled from: Twttr */
class ag implements cyw<Integer, w<Boolean>> {
    final /* synthetic */ Resources a;
    final /* synthetic */ a b;
    final /* synthetic */ FragmentManager c;
    final /* synthetic */ af d;

    ag(af afVar, Resources resources, a aVar, FragmentManager fragmentManager) {
        this.d = afVar;
        this.a = resources;
        this.b = aVar;
        this.c = fragmentManager;
    }

    public w<Boolean> a(Integer num) {
        if (p.e(num.intValue())) {
            return bo.a(this.d.a(this.a, this.b.e), this.c);
        }
        if (p.d(num.intValue())) {
            return bo.a(this.d.b(this.a, this.b.e), this.c);
        }
        return w.a(Boolean.valueOf(true));
    }
}
