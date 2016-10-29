package com.twitter.app.common.app.internal;

import com.twitter.database.schema.TwitterSchema;
import com.twitter.library.provider.di;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ae implements c<TwitterSchema> {
    static final /* synthetic */ boolean a;
    private final cxj<di> b;

    static {
        a = !ae.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ae(cxj<di> cxj_com_twitter_library_provider_di) {
        if (a || cxj_com_twitter_library_provider_di != null) {
            this.b = cxj_com_twitter_library_provider_di;
            return;
        }
        throw new AssertionError();
    }

    public TwitterSchema a() {
        return (TwitterSchema) d.a(y.a((di) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<TwitterSchema> a(cxj<di> cxj_com_twitter_library_provider_di) {
        return new ae(cxj_com_twitter_library_provider_di);
    }
}
