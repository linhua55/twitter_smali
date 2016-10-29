package defpackage;

import android.support.annotation.VisibleForTesting;
import com.twitter.database.model.l;
import com.twitter.library.provider.di;
import com.twitter.util.serialization.s;
import cym;
import cyw;
import dbd;
import java.util.List;
import java.util.Map;
import rx.o;
import rx.t;

/* compiled from: Twttr */
/* renamed from: byn */
public class byn {
    private final byr a;
    private final byp b;
    private final byf<String, Long> c;
    private final t d;
    private final t e;

    public static byn a(di diVar) {
        l b = diVar.b();
        return new byn(byr.a(b), byp.a(b), new bye(s.f, ((aym) b.a(aym.class)).f(), b.c(ayp.class)), dbd.c(), cym.a());
    }

    @VisibleForTesting
    byn(byr byr, byp byp, byf<String, Long> byf_java_lang_String__java_lang_Long, t tVar, t tVar2) {
        this.a = byr;
        this.b = byp;
        this.c = byf_java_lang_String__java_lang_Long;
        this.d = tVar;
        this.e = tVar2;
    }

    public o<Map<Long, Long>> a(String str) {
        return this.b.a(str).f(a()).b(this.d).a(this.e);
    }

    private cyw<List<Long>, o<Map<Long, Long>>> a() {
        return new byo(this);
    }

    public o<Long> a(long j) {
        return this.c.b(String.valueOf(j));
    }

    public void a(long j, long j2) {
        this.c.a(String.valueOf(j), Long.valueOf(j2));
    }
}
