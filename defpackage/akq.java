package defpackage;

import com.twitter.database.lru.ac;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.people.ag;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: akq */
public final class akq implements c<akj> {
    static final /* synthetic */ boolean a;
    private final cxj<FriendshipCache> b;
    private final cxj<akp> c;
    private final cxj<ala> d;
    private final cxj<akv> e;
    private final cxj<akt> f;
    private final cxj<ac<String, ag>> g;

    static {
        a = !akq.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public akq(cxj<FriendshipCache> cxj_com_twitter_library_util_FriendshipCache, cxj<akp> cxj_akp, cxj<ala> cxj_ala, cxj<akv> cxj_akv, cxj<akt> cxj_akt, cxj<ac<String, ag>> cxj_com_twitter_database_lru_ac_java_lang_String__com_twitter_model_people_ag) {
        if (a || cxj_com_twitter_library_util_FriendshipCache != null) {
            this.b = cxj_com_twitter_library_util_FriendshipCache;
            if (a || cxj_akp != null) {
                this.c = cxj_akp;
                if (a || cxj_ala != null) {
                    this.d = cxj_ala;
                    if (a || cxj_akv != null) {
                        this.e = cxj_akv;
                        if (a || cxj_akt != null) {
                            this.f = cxj_akt;
                            if (a || cxj_com_twitter_database_lru_ac_java_lang_String__com_twitter_model_people_ag != null) {
                                this.g = cxj_com_twitter_database_lru_ac_java_lang_String__com_twitter_model_people_ag;
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
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public akj a() {
        return new akj((FriendshipCache) this.b.b(), (akp) this.c.b(), (ala) this.d.b(), (akv) this.e.b(), (akt) this.f.b(), (ac) this.g.b());
    }

    public static c<akj> a(cxj<FriendshipCache> cxj_com_twitter_library_util_FriendshipCache, cxj<akp> cxj_akp, cxj<ala> cxj_ala, cxj<akv> cxj_akv, cxj<akt> cxj_akt, cxj<ac<String, ag>> cxj_com_twitter_database_lru_ac_java_lang_String__com_twitter_model_people_ag) {
        return new akq(cxj_com_twitter_library_util_FriendshipCache, cxj_akp, cxj_ala, cxj_akv, cxj_akt, cxj_com_twitter_database_lru_ac_java_lang_String__com_twitter_model_people_ag);
    }
}
