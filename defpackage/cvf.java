package defpackage;

import com.twitter.util.collection.k;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cvf */
class cvf implements cvd {
    private final Map<String, Integer> a;
    private final k<String> b;

    private cvf() {
        this.a = new HashMap();
        this.b = new k();
    }

    public void a(String str, int i) {
        this.a.put(str, Integer.valueOf(i));
        this.b.a(i, str);
    }

    public int a(String str) {
        Integer num = (Integer) this.a.get(str);
        return num != null ? num.intValue() : -1;
    }
}
