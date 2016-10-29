package com.twitter.android.revenue;

import android.support.annotation.VisibleForTesting;
import cuj;

@VisibleForTesting
/* compiled from: Twttr */
class i implements cuj<a> {
    private final a a;
    private final float b;

    i(a aVar, float f) {
        this.a = aVar;
        this.b = f;
    }

    public boolean a(a aVar) {
        return ((float) Math.abs(this.a.c - aVar.c)) <= this.b;
    }
}
