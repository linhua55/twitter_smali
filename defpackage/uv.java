package defpackage;

import com.twitter.library.provider.di;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: uv */
public final class uv implements c<uu> {
    static final /* synthetic */ boolean a;
    private final cwk<uu> b;
    private final cxj<di> c;

    static {
        a = !uv.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public uv(cwk<uu> cwk_uu, cxj<di> cxj_com_twitter_library_provider_di) {
        if (a || cwk_uu != null) {
            this.b = cwk_uu;
            if (a || cxj_com_twitter_library_provider_di != null) {
                this.c = cxj_com_twitter_library_provider_di;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public uu a() {
        return (uu) MembersInjectors.a(this.b, new uu((di) this.c.b()));
    }

    public static c<uu> a(cwk<uu> cwk_uu, cxj<di> cxj_com_twitter_library_provider_di) {
        return new uv(cwk_uu, cxj_com_twitter_library_provider_di);
    }
}
