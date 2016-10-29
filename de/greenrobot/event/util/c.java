package de.greenrobot.event.util;

import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class c {
    public final Map<Class<? extends Throwable>, Integer> a;

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Integer a(java.lang.Throwable r4) {
        /*
        r3 = this;
        r0 = 20;
        r1 = r4;
    L_0x0003:
        r2 = r3.b(r1);
        if (r2 == 0) goto L_0x000b;
    L_0x0009:
        r0 = r2;
    L_0x000a:
        return r0;
    L_0x000b:
        r1 = r1.getCause();
        r0 = r0 + -1;
        if (r0 <= 0) goto L_0x0017;
    L_0x0013:
        if (r1 == r4) goto L_0x0017;
    L_0x0015:
        if (r1 != 0) goto L_0x0003;
    L_0x0017:
        r0 = de.greenrobot.event.c.a;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "No specific message ressource ID found for ";
        r1 = r1.append(r2);
        r1 = r1.append(r4);
        r1 = r1.toString();
        android.util.Log.d(r0, r1);
        r0 = 0;
        goto L_0x000a;
        */
        throw new UnsupportedOperationException("Method not decompiled: de.greenrobot.event.util.c.a(java.lang.Throwable):java.lang.Integer");
    }

    protected Integer b(Throwable th) {
        Class cls = th.getClass();
        Integer num = (Integer) this.a.get(cls);
        if (num != null) {
            return num;
        }
        Class cls2 = null;
        Integer num2 = num;
        for (Entry entry : this.a.entrySet()) {
            Class cls3 = (Class) entry.getKey();
            if (cls3.isAssignableFrom(cls) && (cls2 == null || cls2.isAssignableFrom(cls3))) {
                num = (Integer) entry.getValue();
            } else {
                cls3 = cls2;
                num = num2;
            }
            cls2 = cls3;
            num2 = num;
        }
        return num2;
    }
}
