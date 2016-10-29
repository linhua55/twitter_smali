package com.twitter.android.eventtimelines.tv.show;

import android.content.res.Resources;
import cxj;
import dagger.internal.c;
import java.util.Locale;

/* compiled from: Twttr */
public final class ai implements c<af> {
    static final /* synthetic */ boolean a;
    private final cxj<ap> b;
    private final cxj<Resources> c;
    private final cxj<a> d;
    private final cxj<s> e;
    private final cxj<Locale> f;

    static {
        a = !ai.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ai(cxj<ap> cxj_com_twitter_android_eventtimelines_tv_show_ap, cxj<Resources> cxj_android_content_res_Resources, cxj<a> cxj_com_twitter_android_eventtimelines_tv_show_a, cxj<s> cxj_com_twitter_android_eventtimelines_tv_show_s, cxj<Locale> cxj_java_util_Locale) {
        if (a || cxj_com_twitter_android_eventtimelines_tv_show_ap != null) {
            this.b = cxj_com_twitter_android_eventtimelines_tv_show_ap;
            if (a || cxj_android_content_res_Resources != null) {
                this.c = cxj_android_content_res_Resources;
                if (a || cxj_com_twitter_android_eventtimelines_tv_show_a != null) {
                    this.d = cxj_com_twitter_android_eventtimelines_tv_show_a;
                    if (a || cxj_com_twitter_android_eventtimelines_tv_show_s != null) {
                        this.e = cxj_com_twitter_android_eventtimelines_tv_show_s;
                        if (a || cxj_java_util_Locale != null) {
                            this.f = cxj_java_util_Locale;
                            return;
                        }
                        throw new AssertionError();
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public af a() {
        return new af((ap) this.b.b(), (Resources) this.c.b(), (a) this.d.b(), (s) this.e.b(), this.f);
    }

    public static c<af> a(cxj<ap> cxj_com_twitter_android_eventtimelines_tv_show_ap, cxj<Resources> cxj_android_content_res_Resources, cxj<a> cxj_com_twitter_android_eventtimelines_tv_show_a, cxj<s> cxj_com_twitter_android_eventtimelines_tv_show_s, cxj<Locale> cxj_java_util_Locale) {
        return new ai(cxj_com_twitter_android_eventtimelines_tv_show_ap, cxj_android_content_res_Resources, cxj_com_twitter_android_eventtimelines_tv_show_a, cxj_com_twitter_android_eventtimelines_tv_show_s, cxj_java_util_Locale);
    }
}
