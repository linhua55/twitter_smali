package defpackage;

import atf;
import cgu;
import com.twitter.database.model.g;
import com.twitter.database.schema.DraftsSchema;
import com.twitter.model.drafts.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: apr */
public final class apr implements c<atf<g, cgu<d>>> {
    static final /* synthetic */ boolean a;
    private final cxj<DraftsSchema> b;

    static {
        a = !apr.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public apr(cxj<DraftsSchema> cxj_com_twitter_database_schema_DraftsSchema) {
        if (a || cxj_com_twitter_database_schema_DraftsSchema != null) {
            this.b = cxj_com_twitter_database_schema_DraftsSchema;
            return;
        }
        throw new AssertionError();
    }

    public atf<g, cgu<d>> a() {
        return (atf) dagger.internal.d.a(apq.a((DraftsSchema) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<atf<g, cgu<d>>> a(cxj<DraftsSchema> cxj_com_twitter_database_schema_DraftsSchema) {
        return new apr(cxj_com_twitter_database_schema_DraftsSchema);
    }
}
