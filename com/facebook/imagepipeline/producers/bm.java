package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import ew;
import gh;

/* compiled from: Twttr */
public class bm extends w<a<gh>, a<gh>> {
    private final com.facebook.cache.common.a a;
    private final boolean b;
    private final String c;
    private final ew<com.facebook.cache.common.a, gh> d;

    public bm(o<a<gh>> oVar, com.facebook.cache.common.a aVar, boolean z, String str, ew<com.facebook.cache.common.a, gh> ewVar) {
        super(oVar);
        this.a = aVar;
        this.b = z;
        this.c = str;
        this.d = ewVar;
    }

    protected void a(a<gh> aVar, boolean z) {
        a<gh> a;
        if (!z && !this.b) {
            return;
        }
        if (aVar == null) {
            d().b(null, z);
            return;
        }
        if (this.a != null) {
            this.d.a(new bn(this));
            a = this.d.a(this.a, aVar);
        } else {
            a = aVar;
        }
        try {
            d().b(1.0f);
            o d = d();
            if (a != null) {
                aVar = a;
            }
            d.b(aVar, z);
        } finally {
            a.c(a);
        }
    }
}
