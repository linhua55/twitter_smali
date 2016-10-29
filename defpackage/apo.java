package defpackage;

import atf;
import auc;
import cgu;
import com.twitter.app.drafts.n;
import com.twitter.database.model.g;
import com.twitter.database.model.i;
import com.twitter.model.drafts.d;
import java.io.IOException;
import rx.o;

/* compiled from: Twttr */
/* renamed from: apo */
public class apo implements n {
    final atf<g, cgu<d>> a;

    public apo(atf<g, cgu<d>> atf_com_twitter_database_model_g__cgu_com_twitter_model_drafts_d) {
        this.a = atf_com_twitter_database_model_g__cgu_com_twitter_model_drafts_d;
    }

    public o<cgu<d>> a(long j) {
        return this.a.a_(new i().a(auc.a(new String[]{"sending_state!=1", "_id<>?"}), String.valueOf(j)).a());
    }

    public void close() throws IOException {
        this.a.close();
    }
}
