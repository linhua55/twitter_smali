package com.twitter.android.people.adapters.viewbinders;

import com.twitter.android.people.adapters.w;
import com.twitter.android.people.bb;
import com.twitter.app.common.util.StateSaver;
import com.twitter.model.core.as;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class aq implements c<ao> {
    static final /* synthetic */ boolean a;
    private final cwk<ao> b;
    private final cxj<bb> c;
    private final cxj<StateSaver<h<as, com.twitter.android.people.adapters.aq, w>>> d;

    static {
        a = !aq.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public aq(cwk<ao> cwk_com_twitter_android_people_adapters_viewbinders_ao, cxj<bb> cxj_com_twitter_android_people_bb, cxj<StateSaver<h<as, com.twitter.android.people.adapters.aq, w>>> cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_core_as__com_twitter_android_people_adapters_aq__com_twitter_android_people_adapters_w) {
        if (a || cwk_com_twitter_android_people_adapters_viewbinders_ao != null) {
            this.b = cwk_com_twitter_android_people_adapters_viewbinders_ao;
            if (a || cxj_com_twitter_android_people_bb != null) {
                this.c = cxj_com_twitter_android_people_bb;
                if (a || cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_core_as__com_twitter_android_people_adapters_aq__com_twitter_android_people_adapters_w != null) {
                    this.d = cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_core_as__com_twitter_android_people_adapters_aq__com_twitter_android_people_adapters_w;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public ao a() {
        return (ao) MembersInjectors.a(this.b, new ao((bb) this.c.b(), (StateSaver) this.d.b()));
    }

    public static c<ao> a(cwk<ao> cwk_com_twitter_android_people_adapters_viewbinders_ao, cxj<bb> cxj_com_twitter_android_people_bb, cxj<StateSaver<h<as, com.twitter.android.people.adapters.aq, w>>> cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_core_as__com_twitter_android_people_adapters_aq__com_twitter_android_people_adapters_w) {
        return new aq(cwk_com_twitter_android_people_adapters_viewbinders_ao, cxj_com_twitter_android_people_bb, cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_core_as__com_twitter_android_people_adapters_aq__com_twitter_android_people_adapters_w);
    }
}
