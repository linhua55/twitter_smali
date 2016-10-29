package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public class rq {
    private final List<String> a;
    private final List<Double> b;
    private final List<Double> c;

    public rq() {
        this.a = new ArrayList();
        this.b = new ArrayList();
        this.c = new ArrayList();
    }

    public rn a() {
        return new rn(this, null);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.android.gms.internal.rq a(java.lang.String r7, double r8, double r10) {
        /*
        r6 = this;
        r0 = 0;
        r1 = r0;
    L_0x0002:
        r0 = r6.a;
        r0 = r0.size();
        if (r1 >= r0) goto L_0x0026;
    L_0x000a:
        r0 = r6.c;
        r0 = r0.get(r1);
        r0 = (java.lang.Double) r0;
        r2 = r0.doubleValue();
        r0 = r6.b;
        r0 = r0.get(r1);
        r0 = (java.lang.Double) r0;
        r4 = r0.doubleValue();
        r0 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1));
        if (r0 >= 0) goto L_0x003e;
    L_0x0026:
        r0 = r6.a;
        r0.add(r1, r7);
        r0 = r6.c;
        r2 = java.lang.Double.valueOf(r8);
        r0.add(r1, r2);
        r0 = r6.b;
        r2 = java.lang.Double.valueOf(r10);
        r0.add(r1, r2);
        return r6;
    L_0x003e:
        r0 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1));
        if (r0 != 0) goto L_0x0046;
    L_0x0042:
        r0 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1));
        if (r0 < 0) goto L_0x0026;
    L_0x0046:
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x0002;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.rq.a(java.lang.String, double, double):com.google.android.gms.internal.rq");
    }
}
