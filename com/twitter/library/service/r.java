package com.twitter.library.service;

import com.twitter.internal.android.service.u;
import com.twitter.library.network.forecaster.h;

/* compiled from: Twttr */
public class r implements u {
    public final h a;

    public r(h hVar) {
        this.a = hVar;
    }

    public String toString() {
        return "Network condition changed from " + this.a.a + " to " + this.a.b;
    }
}
