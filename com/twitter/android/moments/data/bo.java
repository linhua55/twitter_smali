package com.twitter.android.moments.data;

import android.support.annotation.UiThread;
import android.support.annotation.VisibleForTesting;
import axs;
import axv;
import bye;
import cll;
import com.twitter.database.schema.TwitterSchema;
import com.twitter.library.provider.di;
import com.twitter.util.collection.n;
import cvq;
import defpackage.bmf;
import defpackage.cys;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import rx.o;

/* compiled from: Twttr */
public class bo implements bn {
    private final bmf a;
    private final bk b;
    private final bj c;
    private final ay d;
    private final Map<String, cll> e;

    public static bo a(ay ayVar, bmf bmf, di diVar) {
        TwitterSchema b = diVar.b();
        bye bye = new bye(cll.a, ((axs) b.a(axs.class)).f(), b.c(axv.class));
        return new bo(ayVar, bmf, new bk(bye), new bj(bye));
    }

    @VisibleForTesting
    bo(ay ayVar, bmf bmf, bk bkVar, bj bjVar) {
        this.e = new ConcurrentHashMap();
        this.d = ayVar;
        this.a = bmf;
        this.b = bkVar;
        this.c = bjVar;
    }

    public cll a(String str) {
        return (cll) this.e.get(str);
    }

    public o<cll> b(String str) {
        return a(n.b((Object) str)).d(cvq.b()).g(cvq.c());
    }

    public o<List<cll>> a(List<String> list) {
        return this.d.a((List) list).a(a());
    }

    private cys<List<cll>> a() {
        return new bp(this);
    }

    private cys<List<cll>> b() {
        return new bq(this);
    }

    private cys<List<cll>> c() {
        return new br(this);
    }

    @UiThread
    public void close() throws IOException {
        this.d.close();
        this.a.close();
        this.b.close();
    }
}
