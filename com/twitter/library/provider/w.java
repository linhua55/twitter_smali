package com.twitter.library.provider;

import com.twitter.database.model.m;
import com.twitter.database.schema.DraftsSchema;
import com.twitter.util.concurrent.n;
import defpackage.auf;

/* compiled from: Twttr */
class w implements n<DraftsSchema> {
    final /* synthetic */ v a;

    w(v vVar) {
        this.a = vVar;
    }

    public /* synthetic */ Object call() {
        return a();
    }

    public DraftsSchema a() {
        return (DraftsSchema) m.a(DraftsSchema.class, new auf(this.a));
    }
}
