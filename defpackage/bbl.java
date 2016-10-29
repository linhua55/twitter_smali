package defpackage;

import com.twitter.util.collection.MutableMap;
import com.twitter.util.object.e;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bbl */
public class bbl {
    private final Map<String, Object> a;
    private Throwable b;

    public bbl() {
        this.a = MutableMap.a(32);
    }

    public bbl(Throwable th) {
        this.a = MutableMap.a(32);
        a(th);
    }

    public bbl(long j) {
        this.a = MutableMap.a(32);
        a("ErrorLog.user id", Long.valueOf(j));
    }

    public Map<String, Object> a() {
        return this.a;
    }

    public final bbl a(String str, Object obj) {
        this.a.put(str, obj);
        return this;
    }

    public boolean b() {
        return this.b != null;
    }

    public Throwable c() {
        return (Throwable) e.a(this.b);
    }

    public final bbl a(Throwable th) {
        this.b = th;
        return this;
    }
}
