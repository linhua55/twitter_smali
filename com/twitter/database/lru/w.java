package com.twitter.database.lru;

import com.twitter.database.lru.schema.LruSchema;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class w implements c<t> {
    static final /* synthetic */ boolean a;
    private final cxj<LruSchema> b;

    static {
        a = !w.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public w(cxj<LruSchema> cxj_com_twitter_database_lru_schema_LruSchema) {
        if (a || cxj_com_twitter_database_lru_schema_LruSchema != null) {
            this.b = cxj_com_twitter_database_lru_schema_LruSchema;
            return;
        }
        throw new AssertionError();
    }

    public t a() {
        return new t((LruSchema) this.b.b());
    }

    public static c<t> a(cxj<LruSchema> cxj_com_twitter_database_lru_schema_LruSchema) {
        return new w(cxj_com_twitter_database_lru_schema_LruSchema);
    }
}
