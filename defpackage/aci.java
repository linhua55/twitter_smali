package defpackage;

import com.twitter.database.model.g;
import com.twitter.database.model.i;
import java.io.IOException;
import rx.o;

/* compiled from: Twttr */
/* renamed from: aci */
class aci implements atf<Long, Long> {
    private final atf<g, cgu<Long>> a;
    private final String b;

    public /* synthetic */ o a_(Object obj) {
        return a((Long) obj);
    }

    aci(atf<g, cgu<Long>> atf_com_twitter_database_model_g__cgu_java_lang_Long, String str) {
        this.a = atf_com_twitter_database_model_g__cgu_java_lang_Long;
        this.b = str;
    }

    public o<Long> a(Long l) {
        return this.a.a_(new i().a(auc.b(this.b, String.valueOf(l))).d("1").a()).d(1).g(new acj(this));
    }

    public void close() throws IOException {
        this.a.close();
    }
}
