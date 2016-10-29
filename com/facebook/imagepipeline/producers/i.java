package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.cache.common.a;
import com.facebook.imagepipeline.request.ImageRequest$RequestLevel;
import eg;
import gh;

/* compiled from: Twttr */
public class i extends bc<Pair<a, ImageRequest$RequestLevel>, com.facebook.common.references.a<gh>> {
    private final eg b;

    protected /* synthetic */ Object b(bx bxVar) {
        return a(bxVar);
    }

    public i(eg egVar, bw bwVar) {
        super(bwVar);
        this.b = egVar;
    }

    protected Pair<a, ImageRequest$RequestLevel> a(bx bxVar) {
        return Pair.create(this.b.a(bxVar.a()), bxVar.e());
    }

    public com.facebook.common.references.a<gh> a(com.facebook.common.references.a<gh> aVar) {
        return com.facebook.common.references.a.b(aVar);
    }
}
