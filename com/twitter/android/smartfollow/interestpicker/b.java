package com.twitter.android.smartfollow.interestpicker;

import com.twitter.android.interestpicker.x;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class b implements c<a> {
    static final /* synthetic */ boolean a;
    private final cwk<a> b;
    private final cxj<x> c;
    private final cxj<Integer> d;

    static {
        a = !b.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public b(cwk<a> cwk_com_twitter_android_smartfollow_interestpicker_a, cxj<x> cxj_com_twitter_android_interestpicker_x, cxj<Integer> cxj_java_lang_Integer) {
        if (a || cwk_com_twitter_android_smartfollow_interestpicker_a != null) {
            this.b = cwk_com_twitter_android_smartfollow_interestpicker_a;
            if (a || cxj_com_twitter_android_interestpicker_x != null) {
                this.c = cxj_com_twitter_android_interestpicker_x;
                if (a || cxj_java_lang_Integer != null) {
                    this.d = cxj_java_lang_Integer;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public a a() {
        return (a) MembersInjectors.a(this.b, new a((x) this.c.b(), ((Integer) this.d.b()).intValue()));
    }

    public static c<a> a(cwk<a> cwk_com_twitter_android_smartfollow_interestpicker_a, cxj<x> cxj_com_twitter_android_interestpicker_x, cxj<Integer> cxj_java_lang_Integer) {
        return new b(cwk_com_twitter_android_smartfollow_interestpicker_a, cxj_com_twitter_android_interestpicker_x, cxj_java_lang_Integer);
    }
}
