package com.twitter.util.telephony;

import com.twitter.util.network.b;
import defpackage.aob;
import defpackage.cqf;

@aob
/* compiled from: Twttr */
public abstract class TelephonyUtil {
    private static TelephonyUtil a;

    public abstract String a();

    public abstract int b();

    public abstract boolean c();

    public abstract boolean d();

    public abstract b e();

    public abstract boolean f();

    public abstract String g();

    public abstract boolean h();

    public static void a(TelephonyUtil telephonyUtil) {
        cqf.a(TelephonyUtil.class);
        a = telephonyUtil;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized com.twitter.util.telephony.TelephonyUtil i() {
        /*
        r1 = com.twitter.util.telephony.TelephonyUtil.class;
        monitor-enter(r1);
        r0 = a;	 Catch:{ all -> 0x0026 }
        if (r0 != 0) goto L_0x0029;
    L_0x0007:
        r0 = defpackage.cwj.b();	 Catch:{ all -> 0x0026 }
        if (r0 == 0) goto L_0x001d;
    L_0x000d:
        r0 = defpackage.cwf.a();	 Catch:{ all -> 0x0026 }
        r2 = com.twitter.util.telephony.TelephonyUtil.class;
        r0 = r0.c(r2);	 Catch:{ all -> 0x0026 }
        r0 = (com.twitter.util.telephony.TelephonyUtil) r0;	 Catch:{ all -> 0x0026 }
        if (r0 == 0) goto L_0x001d;
    L_0x001b:
        monitor-exit(r1);
        return r0;
    L_0x001d:
        r0 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x0026 }
        r2 = "Telephony Util class has not been initialized.";
        r0.<init>(r2);	 Catch:{ all -> 0x0026 }
        throw r0;	 Catch:{ all -> 0x0026 }
    L_0x0026:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
    L_0x0029:
        r0 = a;	 Catch:{ all -> 0x0026 }
        goto L_0x001b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.util.telephony.TelephonyUtil.i():com.twitter.util.telephony.TelephonyUtil");
    }
}
