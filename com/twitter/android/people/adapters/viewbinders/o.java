package com.twitter.android.people.adapters.viewbinders;

import com.twitter.android.people.adapters.a;
import com.twitter.android.people.bb;
import com.twitter.app.common.util.StateSaver;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class o implements c<m> {
    static final /* synthetic */ boolean a;
    private final cwk<m> b;
    private final cxj<bb> c;
    private final cxj<StateSaver<h<String, a, com.twitter.android.people.adapters.o>>> d;

    static {
        a = !o.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public o(cwk<m> cwk_com_twitter_android_people_adapters_viewbinders_m, cxj<bb> cxj_com_twitter_android_people_bb, cxj<StateSaver<h<String, a, com.twitter.android.people.adapters.o>>> cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_java_lang_String__com_twitter_android_people_adapters_a__com_twitter_android_people_adapters_o) {
        if (a || cwk_com_twitter_android_people_adapters_viewbinders_m != null) {
            this.b = cwk_com_twitter_android_people_adapters_viewbinders_m;
            if (a || cxj_com_twitter_android_people_bb != null) {
                this.c = cxj_com_twitter_android_people_bb;
                if (a || cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_java_lang_String__com_twitter_android_people_adapters_a__com_twitter_android_people_adapters_o != null) {
                    this.d = cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_java_lang_String__com_twitter_android_people_adapters_a__com_twitter_android_people_adapters_o;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public m a() {
        return (m) MembersInjectors.a(this.b, new m((bb) this.c.b(), (StateSaver) this.d.b()));
    }

    public static c<m> a(cwk<m> cwk_com_twitter_android_people_adapters_viewbinders_m, cxj<bb> cxj_com_twitter_android_people_bb, cxj<StateSaver<h<String, a, com.twitter.android.people.adapters.o>>> cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_java_lang_String__com_twitter_android_people_adapters_a__com_twitter_android_people_adapters_o) {
        return new o(cwk_com_twitter_android_people_adapters_viewbinders_m, cxj_com_twitter_android_people_bb, cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_java_lang_String__com_twitter_android_people_adapters_a__com_twitter_android_people_adapters_o);
    }
}
