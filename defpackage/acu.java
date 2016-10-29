package defpackage;

import android.support.annotation.VisibleForTesting;
import com.twitter.library.provider.di;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.x;
import java.io.IOException;
import rx.o;
import rx.t;

/* compiled from: Twttr */
/* renamed from: acu */
public class acu implements atf<Long, x<TwitterUser>> {
    private final di a;
    private final t b;
    private final t c;

    public /* synthetic */ o a_(Object obj) {
        return a((Long) obj);
    }

    public acu(di diVar) {
        this(diVar, dbd.d(), cym.a());
    }

    @VisibleForTesting
    acu(di diVar, t tVar, t tVar2) {
        this.a = diVar;
        this.b = tVar;
        this.c = tVar2;
    }

    public o<x<TwitterUser>> a(Long l) {
        return o.b((Object) l).b(this.b).g(new acv(this)).a(this.c);
    }

    public void close() throws IOException {
    }
}
