package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import com.facebook.common.util.d;
import com.facebook.imagepipeline.memory.f;
import defpackage.bx;
import fx;
import fz;
import ga;
import gh;
import gj;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class q implements bw<a<gh>> {
    private final f a;
    private final Executor b;
    private final fx c;
    private final fz d;
    private final bw<gj> e;
    private final boolean f;
    private final boolean g;

    public q(f fVar, Executor executor, fx fxVar, fz fzVar, boolean z, boolean z2, bw<gj> bwVar) {
        this.a = (f) bx.a((Object) fVar);
        this.b = (Executor) bx.a((Object) executor);
        this.c = (fx) bx.a((Object) fxVar);
        this.d = (fz) bx.a((Object) fzVar);
        this.f = z;
        this.g = z2;
        this.e = (bw) bx.a((Object) bwVar);
    }

    public void a(o<a<gh>> oVar, bx bxVar) {
        o sVar;
        if (d.a(bxVar.a().b())) {
            sVar = new s(this, oVar, bxVar, new ga(this.a), this.d);
        } else {
            sVar = new r(this, oVar, bxVar);
        }
        this.e.a(sVar, bxVar);
    }
}
