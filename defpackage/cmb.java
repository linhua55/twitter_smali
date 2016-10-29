package defpackage;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cmb */
public abstract class cmb {
    protected Map<String, Object> b;

    public static cmb a(Map<String, cgh> map) {
        return new cmd(map);
    }

    protected cmb() {
        this.b = new HashMap();
    }

    public Set<String> a() {
        return this.b.keySet();
    }

    public Object a(String str) {
        return this.b.get(str);
    }

    public <T> T a(String str, Class<T> cls) {
        return cls.cast(this.b.get(str));
    }

    public boolean b(String str) {
        return this.b.containsKey(str);
    }
}
