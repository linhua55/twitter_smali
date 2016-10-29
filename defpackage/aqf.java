package defpackage;

import android.app.Activity;
import apf;
import ara;
import com.twitter.android.nn;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.di.d;
import com.twitter.app.common.inject.f;
import com.twitter.app.common.inject.g;
import com.twitter.app.common.inject.v;
import com.twitter.app.tweetdetails.internal.TweetDetailsViewModule_ProvideViewHostFactory;
import dagger.internal.b;
import dagger.internal.e;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: aqf */
public final class aqf implements arb {
    static final /* synthetic */ boolean a;
    private cxj<v> b;
    private cxj<Activity> c;
    private cxj<BaseFragmentActivity> d;
    private cxj<apf<nn>> e;
    private cxj<aqz> f;

    static {
        a = !aqf.class.desiredAssertionStatus();
    }

    private aqf(aqh aqh) {
        if (a || aqh != null) {
            a(aqh);
            return;
        }
        throw new AssertionError();
    }

    public static aqh a() {
        return new aqh();
    }

    private void a(aqh aqh) {
        this.b = b.a(TweetDetailsViewModule_ProvideViewHostFactory.c());
        this.c = b.a(f.a(aqh.a));
        this.d = b.a(g.a(this.c));
        this.e = b.a(com.twitter.app.tweetdetails.internal.b.a(this.d));
        this.f = b.a(ara.a(this.e));
    }

    public Set<d> b() {
        return (Set) e.a().b();
    }

    public v c() {
        return (v) this.b.b();
    }

    public aqz d() {
        return (aqz) this.f.b();
    }
}
