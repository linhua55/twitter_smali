package defpackage;

import aow;
import aoy;
import com.twitter.library.provider.bv;
import com.twitter.library.provider.ck;
import com.twitter.model.moments.viewmodels.d;
import com.twitter.util.collection.ao;
import com.twitter.util.collection.x;
import java.io.IOException;
import rx.o;

/* compiled from: Twttr */
/* renamed from: adc */
public class adc implements acx, atf<Long, ao<d, com.twitter.model.moments.d>> {
    private final long a;
    private final com.twitter.android.moments.data.d<aow, x<d>> b;

    public /* synthetic */ o a_(Object obj) {
        return a((Long) obj);
    }

    public adc(long j, com.twitter.android.moments.data.d<aow, x<d>> dVar) {
        this.a = j;
        this.b = dVar;
    }

    public o<ao<d, com.twitter.model.moments.d>> a(Long l) {
        return a(l.longValue());
    }

    public o<ao<d, com.twitter.model.moments.d>> a(long j) {
        return this.b.a().a_(new aoy().a(ck.a(bv.a(j), this.a)).a(bv.A).b("_id ASC").a()).f(new add(this));
    }

    public void close() throws IOException {
        this.b.close();
    }
}
