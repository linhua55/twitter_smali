package com.facebook.imagepipeline.producers;

import com.facebook.common.util.TriState;
import gj;
import javax.annotation.Nullable;

/* compiled from: Twttr */
class cq extends w<gj, gj> {
    final /* synthetic */ cn a;
    private final bx b;
    private TriState c;

    public cq(cn cnVar, o<gj> oVar, bx bxVar) {
        this.a = cnVar;
        super(oVar);
        this.b = bxVar;
        this.c = TriState.UNSET;
    }

    protected void a(@Nullable gj gjVar, boolean z) {
        if (this.c == TriState.UNSET && gjVar != null) {
            this.c = cn.b(gjVar);
        }
        if (this.c == TriState.NO) {
            d().b(gjVar, z);
        } else if (!z) {
        } else {
            if (this.c != TriState.YES || gjVar == null) {
                d().b(gjVar, z);
            } else {
                this.a.a(gjVar, d(), this.b);
            }
        }
    }
}
