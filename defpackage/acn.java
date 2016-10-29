package defpackage;

import com.twitter.util.collection.n;
import com.twitter.util.collection.x;
import java.io.IOException;
import java.util.Map;
import rx.o;

/* compiled from: Twttr */
/* renamed from: acn */
public class acn<A, T> implements atf<A, x<T>> {
    private final atf<Iterable<A>, Map<A, T>> a;

    public acn(atf<Iterable<A>, Map<A, T>> atf_java_lang_Iterable_A__java_util_Map_A__T) {
        this.a = atf_java_lang_Iterable_A__java_util_Map_A__T;
    }

    public o<x<T>> a_(A a) {
        return this.a.a_(n.b((Object) a)).g(new aco(this, a));
    }

    public void close() throws IOException {
        this.a.close();
    }
}
