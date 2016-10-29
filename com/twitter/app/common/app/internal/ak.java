package com.twitter.app.common.app.internal;

import com.twitter.database.lru.j;
import com.twitter.database.lru.schema.LruSchema;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ak implements c<j> {
    static final /* synthetic */ boolean a;
    private final cxj<LruSchema> b;

    static {
        a = !ak.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ak(cxj<LruSchema> cxj_com_twitter_database_lru_schema_LruSchema) {
        if (a || cxj_com_twitter_database_lru_schema_LruSchema != null) {
            this.b = cxj_com_twitter_database_lru_schema_LruSchema;
            return;
        }
        throw new AssertionError();
    }

    public j a() {
        return (j) d.a(ai.a((LruSchema) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<j> a(cxj<LruSchema> cxj_com_twitter_database_lru_schema_LruSchema) {
        return new ak(cxj_com_twitter_database_lru_schema_LruSchema);
    }
}
