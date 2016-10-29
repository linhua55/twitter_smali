package com.twitter.app.common.app.internal;

import com.twitter.database.lru.schema.LruSchema;
import cxj;
import dagger.internal.c;
import dagger.internal.d;
import defpackage.aui;

/* compiled from: Twttr */
public final class ac implements c<LruSchema> {
    static final /* synthetic */ boolean a;
    private final cxj<aui> b;

    static {
        a = !ac.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ac(cxj<aui> cxj_aui) {
        if (a || cxj_aui != null) {
            this.b = cxj_aui;
            return;
        }
        throw new AssertionError();
    }

    public LruSchema a() {
        return (LruSchema) d.a(y.a((aui) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<LruSchema> a(cxj<aui> cxj_aui) {
        return new ac(cxj_aui);
    }
}
