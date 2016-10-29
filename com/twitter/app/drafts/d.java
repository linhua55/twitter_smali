package com.twitter.app.drafts;

import com.twitter.app.common.app.n;
import com.twitter.database.schema.DraftsSchema;
import dagger.internal.c;

/* compiled from: Twttr */
class d implements c<DraftsSchema> {
    final /* synthetic */ f a;
    final /* synthetic */ c b;
    private final n c;

    d(c cVar, f fVar) {
        this.b = cVar;
        this.a = fVar;
        this.c = this.a.b;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public DraftsSchema a() {
        return (DraftsSchema) dagger.internal.d.a(this.c.p(), "Cannot return null from a non-@Nullable component method");
    }
}
