package defpackage;

import com.twitter.app.common.di.d;
import com.twitter.app.drafts.m;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: apt */
public final class apt implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<m> b;

    static {
        a = !apt.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public apt(cxj<m> cxj_com_twitter_app_drafts_m) {
        if (a || cxj_com_twitter_app_drafts_m != null) {
            this.b = cxj_com_twitter_app_drafts_m;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(apq.a((m) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<m> cxj_com_twitter_app_drafts_m) {
        return new apt(cxj_com_twitter_app_drafts_m);
    }
}
