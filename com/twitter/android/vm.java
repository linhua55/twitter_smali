package com.twitter.android;

import com.twitter.app.common.di.d;
import com.twitter.app.common.inject.a;
import com.twitter.util.collection.ar;
import java.util.Set;

/* compiled from: Twttr */
public class vm implements a {
    private final vl a;

    public vm(vl vlVar) {
        this.a = vlVar;
    }

    public vl a() {
        return this.a;
    }

    public Set<d> b() {
        return ar.g();
    }
}
