package com.twitter.app.common.app;

import aog;
import aoh;
import aok;
import com.twitter.app.common.base.c;
import cwk;
import cxj;

/* compiled from: Twttr */
public final class i implements cwk<InjectedApplication> {
    static final /* synthetic */ boolean a;
    private final cxj<aoh> b;
    private final cxj<aog> c;
    private final cxj<aok> d;

    static {
        a = !i.class.desiredAssertionStatus();
    }

    public i(cxj<aoh> cxj_aoh, cxj<aog> cxj_aog, cxj<aok> cxj_aok) {
        if (a || cxj_aoh != null) {
            this.b = cxj_aoh;
            if (a || cxj_aog != null) {
                this.c = cxj_aog;
                if (a || cxj_aok != null) {
                    this.d = cxj_aok;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static cwk<InjectedApplication> a(cxj<aoh> cxj_aoh, cxj<aog> cxj_aog, cxj<aok> cxj_aok) {
        return new i(cxj_aoh, cxj_aog, cxj_aok);
    }

    public void a(InjectedApplication injectedApplication) {
        if (injectedApplication == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        c.a(injectedApplication, this.b);
        c.b(injectedApplication, this.c);
        c.c(injectedApplication, this.d);
    }
}
