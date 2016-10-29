package defpackage;

import cmb;
import com.twitter.util.collection.MutableMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cai */
public class cai {
    public final long a;
    public final long b;
    public final cmb c;
    private Map<String, Object> d;

    public cai(long j, long j2, cmb cmb) {
        this.a = j;
        this.b = j2;
        this.c = cmb;
    }

    public cai a(String str, Object obj) {
        if (this.d == null) {
            this.d = MutableMap.a();
        }
        this.d.put(str, obj);
        return this;
    }

    public <T> T a(String str, Class<T> cls) {
        if (this.d == null) {
            return null;
        }
        return cls.cast(this.d.get(str));
    }
}
