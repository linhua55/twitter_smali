package com.twitter.app.drafts;

import android.view.LayoutInflater;
import aoo;
import ape;
import com.twitter.android.composer.aw;
import com.twitter.app.common.inject.t;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class w implements c<s> {
    static final /* synthetic */ boolean a;
    private final cwk<s> b;
    private final cxj<LayoutInflater> c;
    private final cxj<v> d;
    private final cxj<t> e;
    private final cxj<m> f;
    private final cxj<ape<aw>> g;
    private final cxj<aoo> h;
    private final cxj<p> i;

    static {
        a = !w.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public w(cwk<s> cwk_com_twitter_app_drafts_s, cxj<LayoutInflater> cxj_android_view_LayoutInflater, cxj<v> cxj_com_twitter_app_drafts_v, cxj<t> cxj_com_twitter_app_common_inject_t, cxj<m> cxj_com_twitter_app_drafts_m, cxj<ape<aw>> cxj_ape_com_twitter_android_composer_aw, cxj<aoo> cxj_aoo, cxj<p> cxj_com_twitter_app_drafts_p) {
        if (a || cwk_com_twitter_app_drafts_s != null) {
            this.b = cwk_com_twitter_app_drafts_s;
            if (a || cxj_android_view_LayoutInflater != null) {
                this.c = cxj_android_view_LayoutInflater;
                if (a || cxj_com_twitter_app_drafts_v != null) {
                    this.d = cxj_com_twitter_app_drafts_v;
                    if (a || cxj_com_twitter_app_common_inject_t != null) {
                        this.e = cxj_com_twitter_app_common_inject_t;
                        if (a || cxj_com_twitter_app_drafts_m != null) {
                            this.f = cxj_com_twitter_app_drafts_m;
                            if (a || cxj_ape_com_twitter_android_composer_aw != null) {
                                this.g = cxj_ape_com_twitter_android_composer_aw;
                                if (a || cxj_aoo != null) {
                                    this.h = cxj_aoo;
                                    if (a || cxj_com_twitter_app_drafts_p != null) {
                                        this.i = cxj_com_twitter_app_drafts_p;
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
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public s a() {
        return (s) MembersInjectors.a(this.b, new s((LayoutInflater) this.c.b(), (v) this.d.b(), (t) this.e.b(), (m) this.f.b(), (ape) this.g.b(), (aoo) this.h.b(), (p) this.i.b()));
    }

    public static c<s> a(cwk<s> cwk_com_twitter_app_drafts_s, cxj<LayoutInflater> cxj_android_view_LayoutInflater, cxj<v> cxj_com_twitter_app_drafts_v, cxj<t> cxj_com_twitter_app_common_inject_t, cxj<m> cxj_com_twitter_app_drafts_m, cxj<ape<aw>> cxj_ape_com_twitter_android_composer_aw, cxj<aoo> cxj_aoo, cxj<p> cxj_com_twitter_app_drafts_p) {
        return new w(cwk_com_twitter_app_drafts_s, cxj_android_view_LayoutInflater, cxj_com_twitter_app_drafts_v, cxj_com_twitter_app_common_inject_t, cxj_com_twitter_app_drafts_m, cxj_ape_com_twitter_android_composer_aw, cxj_aoo, cxj_com_twitter_app_drafts_p);
    }
}
