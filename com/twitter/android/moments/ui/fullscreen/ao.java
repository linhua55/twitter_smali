package com.twitter.android.moments.ui.fullscreen;

import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentActivity;
import com.twitter.android.client.bo;
import com.twitter.model.moments.a;
import com.twitter.util.collection.x;
import cvq;
import defpackage.adg;
import defpackage.cyw;
import rx.w;

/* compiled from: Twttr */
public class ao {
    private final bo a;
    private final af b;
    private final FragmentActivity c;

    public ao(bo boVar, af afVar, FragmentActivity fragmentActivity) {
        this.a = boVar;
        this.b = afVar;
        this.c = fragmentActivity;
    }

    public static ao a(FragmentActivity fragmentActivity) {
        return new ao(bo.a(fragmentActivity), new af(), fragmentActivity);
    }

    public w<Boolean> a(adg adg, a aVar) {
        return w.a(aVar).a(a(adg)).a(a());
    }

    @VisibleForTesting
    cyw<a, w<Boolean>> a(adg adg) {
        return new ap(this, adg);
    }

    private static w<Integer> c(adg adg, a aVar) {
        return aVar != null ? cvq.a(adg.a(aVar.b), x.a()).a(new aq()) : w.a(Integer.valueOf(0));
    }

    @VisibleForTesting
    cyw<Boolean, w<Boolean>> a() {
        return new ar(this);
    }
}
