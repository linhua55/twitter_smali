package com.twitter.android.eventtimelines.tv.show;

import cxj;
import java.util.Locale;

/* compiled from: Twttr */
public final class c implements dagger.internal.c<b> {
    static final /* synthetic */ boolean a;
    private final cxj<Locale> b;

    static {
        a = !c.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public c(cxj<Locale> cxj_java_util_Locale) {
        if (a || cxj_java_util_Locale != null) {
            this.b = cxj_java_util_Locale;
            return;
        }
        throw new AssertionError();
    }

    public b a() {
        return new b((Locale) this.b.b());
    }

    public static dagger.internal.c<b> a(cxj<Locale> cxj_java_util_Locale) {
        return new c(cxj_java_util_Locale);
    }
}
