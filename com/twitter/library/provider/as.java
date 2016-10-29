package com.twitter.library.provider;

import com.twitter.database.model.m;
import com.twitter.database.schema.GlobalSchema;
import com.twitter.util.concurrent.n;
import defpackage.auf;

/* compiled from: Twttr */
class as implements n<GlobalSchema> {
    final /* synthetic */ ar a;

    as(ar arVar) {
        this.a = arVar;
    }

    public /* synthetic */ Object call() {
        return a();
    }

    public GlobalSchema a() {
        return (GlobalSchema) m.a(GlobalSchema.class, new auf(this.a));
    }
}
