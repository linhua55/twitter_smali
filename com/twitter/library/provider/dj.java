package com.twitter.library.provider;

import com.twitter.database.model.m;
import com.twitter.database.schema.TwitterSchema;
import com.twitter.util.concurrent.n;
import defpackage.auf;

/* compiled from: Twttr */
class dj implements n<TwitterSchema> {
    final /* synthetic */ di a;

    dj(di diVar) {
        this.a = diVar;
    }

    public /* synthetic */ Object call() {
        return a();
    }

    public TwitterSchema a() {
        return (TwitterSchema) m.a(TwitterSchema.class, new auf(this.a));
    }
}
