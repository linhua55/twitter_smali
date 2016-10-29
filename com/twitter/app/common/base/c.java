package com.twitter.app.common.base;

import aog;
import aoh;
import aok;
import cwk;
import cxj;

/* compiled from: Twttr */
public final class c implements cwk<BaseApplication> {
    static final /* synthetic */ boolean a;
    private final cxj<aoh> b;
    private final cxj<aog> c;
    private final cxj<aok> d;

    static {
        a = !c.class.desiredAssertionStatus();
    }

    public void a(BaseApplication baseApplication) {
        if (baseApplication == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        baseApplication.a = (aoh) this.b.b();
        baseApplication.b = (aog) this.c.b();
        baseApplication.c = this.d;
    }

    public static void a(BaseApplication baseApplication, cxj<aoh> cxj_aoh) {
        baseApplication.a = (aoh) cxj_aoh.b();
    }

    public static void b(BaseApplication baseApplication, cxj<aog> cxj_aog) {
        baseApplication.b = (aog) cxj_aog.b();
    }

    public static void c(BaseApplication baseApplication, cxj<aok> cxj_aok) {
        baseApplication.c = cxj_aok;
    }
}
