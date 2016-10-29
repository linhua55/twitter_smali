package com.twitter.android.people;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import com.twitter.app.common.list.t;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class aq implements c<al> {
    static final /* synthetic */ boolean a;
    private final cwk<al> b;
    private final cxj<Context> c;
    private final cxj<LayoutInflater> d;
    private final cxj<t> e;
    private final cxj<com.twitter.app.common.inject.t> f;
    private final cxj<v> g;
    private final cxj<Activity> h;
    private final cxj<bb> i;
    private final cxj<ap> j;

    static {
        a = !aq.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public aq(cwk<al> cwk_com_twitter_android_people_al, cxj<Context> cxj_android_content_Context, cxj<LayoutInflater> cxj_android_view_LayoutInflater, cxj<t> cxj_com_twitter_app_common_list_t, cxj<com.twitter.app.common.inject.t> cxj_com_twitter_app_common_inject_t, cxj<v> cxj_com_twitter_android_people_v, cxj<Activity> cxj_android_app_Activity, cxj<bb> cxj_com_twitter_android_people_bb, cxj<ap> cxj_com_twitter_android_people_ap) {
        if (a || cwk_com_twitter_android_people_al != null) {
            this.b = cwk_com_twitter_android_people_al;
            if (a || cxj_android_content_Context != null) {
                this.c = cxj_android_content_Context;
                if (a || cxj_android_view_LayoutInflater != null) {
                    this.d = cxj_android_view_LayoutInflater;
                    if (a || cxj_com_twitter_app_common_list_t != null) {
                        this.e = cxj_com_twitter_app_common_list_t;
                        if (a || cxj_com_twitter_app_common_inject_t != null) {
                            this.f = cxj_com_twitter_app_common_inject_t;
                            if (a || cxj_com_twitter_android_people_v != null) {
                                this.g = cxj_com_twitter_android_people_v;
                                if (a || cxj_android_app_Activity != null) {
                                    this.h = cxj_android_app_Activity;
                                    if (a || cxj_com_twitter_android_people_bb != null) {
                                        this.i = cxj_com_twitter_android_people_bb;
                                        if (a || cxj_com_twitter_android_people_ap != null) {
                                            this.j = cxj_com_twitter_android_people_ap;
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
        throw new AssertionError();
    }

    public al a() {
        return (al) MembersInjectors.a(this.b, new al((Context) this.c.b(), (LayoutInflater) this.d.b(), (t) this.e.b(), (com.twitter.app.common.inject.t) this.f.b(), (v) this.g.b(), (Activity) this.h.b(), (bb) this.i.b(), (ap) this.j.b()));
    }

    public static c<al> a(cwk<al> cwk_com_twitter_android_people_al, cxj<Context> cxj_android_content_Context, cxj<LayoutInflater> cxj_android_view_LayoutInflater, cxj<t> cxj_com_twitter_app_common_list_t, cxj<com.twitter.app.common.inject.t> cxj_com_twitter_app_common_inject_t, cxj<v> cxj_com_twitter_android_people_v, cxj<Activity> cxj_android_app_Activity, cxj<bb> cxj_com_twitter_android_people_bb, cxj<ap> cxj_com_twitter_android_people_ap) {
        return new aq(cwk_com_twitter_android_people_al, cxj_android_content_Context, cxj_android_view_LayoutInflater, cxj_com_twitter_app_common_list_t, cxj_com_twitter_app_common_inject_t, cxj_com_twitter_android_people_v, cxj_android_app_Activity, cxj_com_twitter_android_people_bb, cxj_com_twitter_android_people_ap);
    }
}
