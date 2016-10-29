package defpackage;

import com.twitter.app.drafts.m;
import com.twitter.app.drafts.n;
import com.twitter.app.drafts.p;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
/* renamed from: aps */
public final class aps implements c<m> {
    static final /* synthetic */ boolean a;
    private final apq b;
    private final cxj<n> c;
    private final cxj<p> d;

    static {
        a = !aps.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public aps(apq apq, cxj<n> cxj_com_twitter_app_drafts_n, cxj<p> cxj_com_twitter_app_drafts_p) {
        if (a || apq != null) {
            this.b = apq;
            if (a || cxj_com_twitter_app_drafts_n != null) {
                this.c = cxj_com_twitter_app_drafts_n;
                if (a || cxj_com_twitter_app_drafts_p != null) {
                    this.d = cxj_com_twitter_app_drafts_p;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public m a() {
        return (m) d.a(this.b.a((n) this.c.b(), (p) this.d.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<m> a(apq apq, cxj<n> cxj_com_twitter_app_drafts_n, cxj<p> cxj_com_twitter_app_drafts_p) {
        return new aps(apq, cxj_com_twitter_app_drafts_n, cxj_com_twitter_app_drafts_p);
    }
}
