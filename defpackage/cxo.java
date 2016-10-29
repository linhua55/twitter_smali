package defpackage;

import android.util.LruCache;
import cxn;

/* compiled from: Twttr */
/* renamed from: cxo */
final class cxo extends LruCache<String, Boolean> {
    cxo(int i) {
        super(i);
    }

    protected /* synthetic */ Object create(Object obj) {
        return a((String) obj);
    }

    protected Boolean a(String str) {
        try {
            Class cls = Class.forName(str);
            if (a(cls)) {
                return Boolean.valueOf(true);
            }
            cls = cls.getSuperclass();
            while (cls != null) {
                if (!cxn.a(cls.getName()) || a(cls)) {
                    return Boolean.valueOf(true);
                }
                cls = cls.getSuperclass();
            }
            return Boolean.valueOf(false);
        } catch (Exception e) {
            return Boolean.valueOf(false);
        }
    }

    private boolean a(Class<?> cls) {
        if (cls == null) {
            return false;
        }
        Class[] interfaces = cls.getInterfaces();
        if (interfaces == null || interfaces.length == 0) {
            return false;
        }
        for (Class name : interfaces) {
            if (!cxn.a(name.getName())) {
                return true;
            }
        }
        return false;
    }
}
