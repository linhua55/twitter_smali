package defpackage;

import com.twitter.app.common.di.d;
import com.twitter.app.drafts.s;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: apw */
public final class apw implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<s> b;

    static {
        a = !apw.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public apw(cxj<s> cxj_com_twitter_app_drafts_s) {
        if (a || cxj_com_twitter_app_drafts_s != null) {
            this.b = cxj_com_twitter_app_drafts_s;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(apu.a((s) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<s> cxj_com_twitter_app_drafts_s) {
        return new apw(cxj_com_twitter_app_drafts_s);
    }
}
