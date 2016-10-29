package defpackage;

import com.twitter.library.provider.di;
import com.twitter.platform.t;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: abg */
public final class abg implements c<abd> {
    static final /* synthetic */ boolean a;
    private final cxj<di> b;
    private final cxj<t> c;

    static {
        a = !abg.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public abg(cxj<di> cxj_com_twitter_library_provider_di, cxj<t> cxj_com_twitter_platform_t) {
        if (a || cxj_com_twitter_library_provider_di != null) {
            this.b = cxj_com_twitter_library_provider_di;
            if (a || cxj_com_twitter_platform_t != null) {
                this.c = cxj_com_twitter_platform_t;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public abd a() {
        return new abd((di) this.b.b(), (t) this.c.b());
    }

    public static c<abd> a(cxj<di> cxj_com_twitter_library_provider_di, cxj<t> cxj_com_twitter_platform_t) {
        return new abg(cxj_com_twitter_library_provider_di, cxj_com_twitter_platform_t);
    }
}
