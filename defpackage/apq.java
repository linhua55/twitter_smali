package defpackage;

import atf;
import cgu;
import com.twitter.app.common.inject.d;
import com.twitter.app.drafts.h;
import com.twitter.app.drafts.j;
import com.twitter.app.drafts.m;
import com.twitter.app.drafts.n;
import com.twitter.app.drafts.p;
import com.twitter.database.model.g;
import com.twitter.database.schema.DraftsSchema;
import com.twitter.database.schema.a;

/* compiled from: Twttr */
/* renamed from: apq */
public class apq extends d {
    private final j a;

    public apq(j jVar) {
        this.a = jVar;
    }

    m a(n nVar, p pVar) {
        return new apn(nVar, pVar, this.a.c);
    }

    static atf<g, cgu<com.twitter.model.drafts.d>> a(DraftsSchema draftsSchema) {
        return new atq(((a) draftsSchema.a(a.class)).f(), h.a);
    }

    static com.twitter.app.common.di.d a(m mVar) {
        return mVar;
    }
}
