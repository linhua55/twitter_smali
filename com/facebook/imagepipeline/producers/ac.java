package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.cache.common.a;
import com.facebook.imagepipeline.request.ImageRequest$RequestLevel;
import eg;
import gj;

/* compiled from: Twttr */
public class ac extends bc<Pair<a, ImageRequest$RequestLevel>, gj> {
    private final eg b;

    protected /* synthetic */ Object b(bx bxVar) {
        return a(bxVar);
    }

    public ac(eg egVar, bw bwVar) {
        super(bwVar);
        this.b = egVar;
    }

    protected Pair<a, ImageRequest$RequestLevel> a(bx bxVar) {
        return Pair.create(this.b.c(bxVar.a()), bxVar.e());
    }

    public gj a(gj gjVar) {
        return gj.a(gjVar);
    }
}
