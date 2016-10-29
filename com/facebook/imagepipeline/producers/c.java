package com.facebook.imagepipeline.producers;

import gj;

/* compiled from: Twttr */
class c extends w<gj, gj> {
    private c(o<gj> oVar) {
        super(oVar);
    }

    protected void a(gj gjVar, boolean z) {
        if (gjVar == null) {
            d().b(null, z);
            return;
        }
        if (!gj.c(gjVar)) {
            gjVar.k();
        }
        d().b(gjVar, z);
    }
}
