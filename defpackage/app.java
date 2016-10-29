package defpackage;

import atf;
import cgu;
import com.twitter.database.model.g;
import com.twitter.model.drafts.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: app */
public final class app implements c<apo> {
    static final /* synthetic */ boolean a;
    private final cxj<atf<g, cgu<d>>> b;

    static {
        a = !app.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public app(cxj<atf<g, cgu<d>>> cxj_atf_com_twitter_database_model_g__cgu_com_twitter_model_drafts_d) {
        if (a || cxj_atf_com_twitter_database_model_g__cgu_com_twitter_model_drafts_d != null) {
            this.b = cxj_atf_com_twitter_database_model_g__cgu_com_twitter_model_drafts_d;
            return;
        }
        throw new AssertionError();
    }

    public apo a() {
        return new apo((atf) this.b.b());
    }

    public static c<apo> a(cxj<atf<g, cgu<d>>> cxj_atf_com_twitter_database_model_g__cgu_com_twitter_model_drafts_d) {
        return new app(cxj_atf_com_twitter_database_model_g__cgu_com_twitter_model_drafts_d);
    }
}
