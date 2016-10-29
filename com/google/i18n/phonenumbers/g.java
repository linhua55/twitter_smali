package com.google.i18n.phonenumbers;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import rc;

/* compiled from: Twttr */
final class g implements f {
    private static final Logger a;
    private final Map<String, rc> b;
    private final Map<Integer, rc> c;
    private final String d;
    private final d e;

    static {
        a = Logger.getLogger(g.class.getName());
    }

    public g(String str, d dVar) {
        this.b = Collections.synchronizedMap(new HashMap());
        this.c = Collections.synchronizedMap(new HashMap());
        this.d = str;
        this.e = dVar;
    }

    public g(d dVar) {
        this("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", dVar);
    }

    public rc a(String str) {
        synchronized (this.b) {
            if (!this.b.containsKey(str)) {
                a(str, 0);
            }
        }
        return (rc) this.b.get(str);
    }

    public rc a(int i) {
        synchronized (this.c) {
            if (!this.c.containsKey(Integer.valueOf(i))) {
                List list = (List) c.a().get(Integer.valueOf(i));
                if (list.size() == 1 && "001".equals(list.get(0))) {
                    a("001", i);
                }
            }
        }
        return (rc) this.c.get(Integer.valueOf(i));
    }

    void a(String str, int i) {
        Object valueOf;
        String str2;
        boolean equals = "001".equals(str);
        String valueOf2 = String.valueOf(String.valueOf(this.d));
        if (equals) {
            valueOf = String.valueOf(i);
        } else {
            str2 = str;
        }
        str2 = String.valueOf(String.valueOf(valueOf));
        valueOf2 = new StringBuilder((valueOf2.length() + 1) + str2.length()).append(valueOf2).append("_").append(str2).toString();
        InputStream a = this.e.a(valueOf2);
        String str3;
        if (a == null) {
            Logger logger = a;
            Level level = Level.SEVERE;
            String str4 = "missing metadata: ";
            str2 = String.valueOf(valueOf2);
            logger.log(level, str2.length() != 0 ? str4.concat(str2) : new String(str4));
            str3 = "missing metadata: ";
            str2 = String.valueOf(valueOf2);
            if (str2.length() != 0) {
                str2 = str3.concat(str2);
            } else {
                str2 = new String(str3);
            }
            throw new IllegalStateException(str2);
        }
        try {
            rc[] rcVarArr = a(new ObjectInputStream(a)).a;
            if (rcVarArr.length == 0) {
                logger = a;
                level = Level.SEVERE;
                str4 = "empty metadata: ";
                str2 = String.valueOf(valueOf2);
                logger.log(level, str2.length() != 0 ? str4.concat(str2) : new String(str4));
                str3 = "empty metadata: ";
                str2 = String.valueOf(valueOf2);
                if (str2.length() != 0) {
                    str2 = str3.concat(str2);
                } else {
                    str2 = new String(str3);
                }
                throw new IllegalStateException(str2);
            }
            if (rcVarArr.length > 1) {
                Logger logger2 = a;
                Level level2 = Level.WARNING;
                String str5 = "invalid metadata (too many entries): ";
                str2 = String.valueOf(valueOf2);
                logger2.log(level2, str2.length() != 0 ? str5.concat(str2) : new String(str5));
            }
            valueOf = rcVarArr[0];
            if (equals) {
                this.c.put(Integer.valueOf(i), valueOf);
            } else {
                this.b.put(str, valueOf);
            }
        } catch (Throwable e) {
            Throwable th = e;
            Logger logger3 = a;
            Level level3 = Level.SEVERE;
            String str6 = "cannot load/parse metadata: ";
            str2 = String.valueOf(valueOf2);
            logger3.log(level3, str2.length() != 0 ? str6.concat(str2) : new String(str6), th);
            str4 = "cannot load/parse metadata: ";
            str2 = String.valueOf(valueOf2);
            if (str2.length() != 0) {
                str2 = str4.concat(str2);
            } else {
                str2 = new String(str4);
            }
            throw new RuntimeException(str2, th);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static rd a(java.io.ObjectInputStream r5) {
        /*
        r1 = new rd;
        r1.<init>();
        r0 = 16384; // 0x4000 float:2.2959E-41 double:8.0948E-320;
        r0 = com.google.i18n.phonenumbers.e.a(r5, r0);	 Catch:{ IOException -> 0x001e }
        r1.a(r0);	 Catch:{ IOException -> 0x001e }
        r5.close();	 Catch:{ IOException -> 0x0012 }
    L_0x0011:
        return r1;
    L_0x0012:
        r0 = move-exception;
        r2 = a;
        r3 = java.util.logging.Level.WARNING;
        r4 = "error closing input stream (ignored)";
        r2.log(r3, r4, r0);
        goto L_0x0011;
    L_0x001e:
        r0 = move-exception;
        r2 = a;	 Catch:{ all -> 0x0039 }
        r3 = java.util.logging.Level.WARNING;	 Catch:{ all -> 0x0039 }
        r4 = "error reading input (ignored)";
        r2.log(r3, r4, r0);	 Catch:{ all -> 0x0039 }
        r5.close();	 Catch:{ IOException -> 0x002d }
        goto L_0x0011;
    L_0x002d:
        r0 = move-exception;
        r2 = a;
        r3 = java.util.logging.Level.WARNING;
        r4 = "error closing input stream (ignored)";
        r2.log(r3, r4, r0);
        goto L_0x0011;
    L_0x0039:
        r0 = move-exception;
        r5.close();	 Catch:{ IOException -> 0x003e }
    L_0x003d:
        throw r0;
    L_0x003e:
        r1 = move-exception;
        r2 = a;
        r3 = java.util.logging.Level.WARNING;
        r4 = "error closing input stream (ignored)";
        r2.log(r3, r4, r1);
        goto L_0x003d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.g.a(java.io.ObjectInputStream):rd");
    }
}
