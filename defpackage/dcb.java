package defpackage;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: Twttr */
/* renamed from: dcb */
public class dcb {
    private final ConcurrentMap<String, dcd> a;

    public static dcb a() {
        return dcc.a;
    }

    dcb() {
        this.a = new ConcurrentHashMap();
    }

    public dcd a(String str) {
        return (dcd) this.a.get(str);
    }
}
