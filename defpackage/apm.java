package defpackage;

import ape;
import com.twitter.android.composer.aw;
import com.twitter.app.common.base.BaseFragmentActivity;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
/* renamed from: apm */
public final class apm implements c<ape<aw>> {
    static final /* synthetic */ boolean a;
    private final cxj<BaseFragmentActivity> b;

    static {
        a = !apm.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public apm(cxj<BaseFragmentActivity> cxj_com_twitter_app_common_base_BaseFragmentActivity) {
        if (a || cxj_com_twitter_app_common_base_BaseFragmentActivity != null) {
            this.b = cxj_com_twitter_app_common_base_BaseFragmentActivity;
            return;
        }
        throw new AssertionError();
    }

    public ape<aw> a() {
        return (ape) d.a(apl.a((BaseFragmentActivity) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<ape<aw>> a(cxj<BaseFragmentActivity> cxj_com_twitter_app_common_base_BaseFragmentActivity) {
        return new apm(cxj_com_twitter_app_common_base_BaseFragmentActivity);
    }
}
