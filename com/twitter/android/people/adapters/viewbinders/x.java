package com.twitter.android.people.adapters.viewbinders;

import android.content.Context;
import com.twitter.android.people.adapters.f;
import com.twitter.android.people.adapters.q;
import com.twitter.android.people.bb;
import com.twitter.android.yj;
import com.twitter.app.common.util.StateSaver;
import com.twitter.app.common.util.t;
import com.twitter.model.people.aa;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class x implements c<q> {
    static final /* synthetic */ boolean a;
    private final cwk<q> b;
    private final cxj<Context> c;
    private final cxj<yj> d;
    private final cxj<t> e;
    private final cxj<bb> f;
    private final cxj<StateSaver<h<aa, f, q>>> g;

    static {
        a = !x.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public x(cwk<q> cwk_com_twitter_android_people_adapters_viewbinders_q, cxj<Context> cxj_android_content_Context, cxj<yj> cxj_com_twitter_android_yj, cxj<t> cxj_com_twitter_app_common_util_t, cxj<bb> cxj_com_twitter_android_people_bb, cxj<StateSaver<h<aa, f, q>>> cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_people_aa__com_twitter_android_people_adapters_f__com_twitter_android_people_adapters_q) {
        if (a || cwk_com_twitter_android_people_adapters_viewbinders_q != null) {
            this.b = cwk_com_twitter_android_people_adapters_viewbinders_q;
            if (a || cxj_android_content_Context != null) {
                this.c = cxj_android_content_Context;
                if (a || cxj_com_twitter_android_yj != null) {
                    this.d = cxj_com_twitter_android_yj;
                    if (a || cxj_com_twitter_app_common_util_t != null) {
                        this.e = cxj_com_twitter_app_common_util_t;
                        if (a || cxj_com_twitter_android_people_bb != null) {
                            this.f = cxj_com_twitter_android_people_bb;
                            if (a || cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_people_aa__com_twitter_android_people_adapters_f__com_twitter_android_people_adapters_q != null) {
                                this.g = cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_people_aa__com_twitter_android_people_adapters_f__com_twitter_android_people_adapters_q;
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

    public q a() {
        return (q) MembersInjectors.a(this.b, new q((Context) this.c.b(), (yj) this.d.b(), (t) this.e.b(), (bb) this.f.b(), (StateSaver) this.g.b()));
    }

    public static c<q> a(cwk<q> cwk_com_twitter_android_people_adapters_viewbinders_q, cxj<Context> cxj_android_content_Context, cxj<yj> cxj_com_twitter_android_yj, cxj<t> cxj_com_twitter_app_common_util_t, cxj<bb> cxj_com_twitter_android_people_bb, cxj<StateSaver<h<aa, f, q>>> cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_people_aa__com_twitter_android_people_adapters_f__com_twitter_android_people_adapters_q) {
        return new x(cwk_com_twitter_android_people_adapters_viewbinders_q, cxj_android_content_Context, cxj_com_twitter_android_yj, cxj_com_twitter_app_common_util_t, cxj_com_twitter_android_people_bb, cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_people_aa__com_twitter_android_people_adapters_f__com_twitter_android_people_adapters_q);
    }
}
