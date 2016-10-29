package defpackage;

import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.j;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cwf */
public abstract class cwf {
    private static String a;
    private static cwf b;

    protected abstract List<String> a(Class<?> cls);

    static {
        a = System.getProperty("ServiceLoader.DefaultClassName");
    }

    public static cwf a() {
        if (bbi.r()) {
            return bbi.q().j();
        }
        if (b == null && aj.b(a)) {
            b = (cwf) cwf.a(a, cwf.class);
        }
        j.a(b != null, "ServiceLoader is not initialized.");
        return b;
    }

    public <T> List<T> b(Class<T> cls) {
        n d = n.d();
        for (String a : a(cls)) {
            d.c(cwf.a(a, cls));
        }
        return (List) d.q();
    }

    public <T> T c(Class<T> cls) {
        boolean z = true;
        List a = a(cls);
        if (a.size() > 1) {
            z = false;
        }
        j.b(z);
        String str = (String) CollectionUtils.b(a);
        return str != null ? cwf.a(str, cls) : null;
    }

    public static String d(Class<?> cls) {
        return "services/" + cls.getName();
    }

    private static <T> T a(String str, Class<T> cls) {
        try {
            return Class.forName(str).asSubclass(cls).newInstance();
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }
}
