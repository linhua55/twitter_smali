package com.twitter.android.eventtimelines.tv.show;

import com.twitter.library.provider.di;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class aa implements c<z> {
    static final /* synthetic */ boolean a;
    private final cxj<di> b;

    static {
        a = !aa.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public aa(cxj<di> cxj_com_twitter_library_provider_di) {
        if (a || cxj_com_twitter_library_provider_di != null) {
            this.b = cxj_com_twitter_library_provider_di;
            return;
        }
        throw new AssertionError();
    }

    public z a() {
        return new z((di) this.b.b());
    }

    public static c<z> a(cxj<di> cxj_com_twitter_library_provider_di) {
        return new aa(cxj_com_twitter_library_provider_di);
    }
}
