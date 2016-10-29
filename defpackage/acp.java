package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.util.collection.n;
import java.io.IOException;
import java.util.Map;
import rx.o;

/* compiled from: Twttr */
/* renamed from: acp */
public class acp implements atf<Iterable<Long>, Map<Long, Tweet>> {
    private final acr a;
    private final akv b;

    public /* synthetic */ o a_(Object obj) {
        return a((Iterable) obj);
    }

    public acp(acr acr, akv akv) {
        this.a = acr;
        this.b = akv;
    }

    public o<Map<Long, Tweet>> a(Iterable<Long> iterable) {
        return this.a.a_(n.a((Iterable) iterable)).f(new acq(this)).h();
    }

    public void close() throws IOException {
        this.a.close();
        this.b.close();
    }
}
