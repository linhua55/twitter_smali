package defpackage;

import com.twitter.model.moments.viewmodels.d;
import com.twitter.util.collection.ao;
import java.io.IOException;
import rx.o;

/* compiled from: Twttr */
/* renamed from: ack */
public class ack implements atf<Long, ao<d, com.twitter.model.moments.d>> {
    private final acm a;
    private final atf<Long, ao<d, com.twitter.model.moments.d>> b;

    public /* synthetic */ o a_(Object obj) {
        return a((Long) obj);
    }

    public ack(acm acm, atf<Long, ao<d, com.twitter.model.moments.d>> atf_java_lang_Long__com_twitter_util_collection_ao_com_twitter_model_moments_viewmodels_d__com_twitter_model_moments_d) {
        this.a = acm;
        this.b = atf_java_lang_Long__com_twitter_util_collection_ao_com_twitter_model_moments_viewmodels_d__com_twitter_model_moments_d;
    }

    public o<ao<d, com.twitter.model.moments.d>> a(Long l) {
        return this.a.a_(l).f(a(l.longValue()));
    }

    private cyw<ao<Long, com.twitter.model.moments.d>, o<ao<d, com.twitter.model.moments.d>>> a(long j) {
        return new acl(this, j);
    }

    public void close() throws IOException {
        this.a.close();
        this.b.close();
    }
}
