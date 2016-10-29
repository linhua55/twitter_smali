package defpackage;

import atf;
import com.twitter.database.model.l;
import com.twitter.database.model.q;
import cyw;
import java.io.IOException;
import java.util.List;
import rx.o;

/* compiled from: Twttr */
/* renamed from: byp */
public class byp implements atf<String, List<Long>> {
    private final q<ayl> a;

    public /* synthetic */ o a_(Object obj) {
        return a((String) obj);
    }

    public static byp a(l lVar) {
        return new byp(((ayk) lVar.a(ayk.class)).f());
    }

    byp(q<ayl> qVar) {
        this.a = qVar;
    }

    public o<List<Long>> a(String str) {
        return o.b(str).g(a());
    }

    private cyw<String, List<Long>> a() {
        return new byq(this);
    }

    public void close() throws IOException {
    }
}
