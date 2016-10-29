package com.twitter.app.common.app.internal;

import com.twitter.database.schema.DraftsSchema;
import com.twitter.library.provider.v;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class aa implements c<DraftsSchema> {
    static final /* synthetic */ boolean a;
    private final cxj<v> b;

    static {
        a = !aa.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public aa(cxj<v> cxj_com_twitter_library_provider_v) {
        if (a || cxj_com_twitter_library_provider_v != null) {
            this.b = cxj_com_twitter_library_provider_v;
            return;
        }
        throw new AssertionError();
    }

    public DraftsSchema a() {
        return (DraftsSchema) d.a(y.a((v) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<DraftsSchema> a(cxj<v> cxj_com_twitter_library_provider_v) {
        return new aa(cxj_com_twitter_library_provider_v);
    }
}
