package defpackage;

import android.content.Context;
import com.twitter.database.lru.ac;
import com.twitter.library.client.Session;
import com.twitter.model.people.ag;
import cwk;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: aku */
public final class aku implements c<akt> {
    static final /* synthetic */ boolean a;
    private final cwk<akt> b;
    private final cxj<Context> c;
    private final cxj<Session> d;
    private final cxj<ac<String, ag>> e;

    static {
        a = !aku.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public aku(cwk<akt> cwk_akt, cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session, cxj<ac<String, ag>> cxj_com_twitter_database_lru_ac_java_lang_String__com_twitter_model_people_ag) {
        if (a || cwk_akt != null) {
            this.b = cwk_akt;
            if (a || cxj_android_content_Context != null) {
                this.c = cxj_android_content_Context;
                if (a || cxj_com_twitter_library_client_Session != null) {
                    this.d = cxj_com_twitter_library_client_Session;
                    if (a || cxj_com_twitter_database_lru_ac_java_lang_String__com_twitter_model_people_ag != null) {
                        this.e = cxj_com_twitter_database_lru_ac_java_lang_String__com_twitter_model_people_ag;
                        return;
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public akt a() {
        return (akt) MembersInjectors.a(this.b, new akt((Context) this.c.b(), (Session) this.d.b(), (ac) this.e.b()));
    }

    public static c<akt> a(cwk<akt> cwk_akt, cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session, cxj<ac<String, ag>> cxj_com_twitter_database_lru_ac_java_lang_String__com_twitter_model_people_ag) {
        return new aku(cwk_akt, cxj_android_content_Context, cxj_com_twitter_library_client_Session, cxj_com_twitter_database_lru_ac_java_lang_String__com_twitter_model_people_ag);
    }
}
