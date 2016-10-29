package defpackage;

import android.database.CursorWindow;
import android.os.Debug;
import android.util.SparseIntArray;
import java.io.File;
import java.lang.reflect.Field;

/* compiled from: Twttr */
/* renamed from: csv */
public class csv {
    public static int a() {
        try {
            return new File("/proc/self/fd").listFiles().length;
        } catch (Throwable th) {
            return 0;
        }
    }

    public static int b() {
        try {
            Field declaredField = CursorWindow.class.getDeclaredField("sWindowToPidMap");
            declaredField.setAccessible(true);
            return ((SparseIntArray) declaredField.get(null)).size();
        } catch (Exception e) {
            return 0;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> c() {
        /*
        r5 = 1;
        r3 = 0;
        r7 = new android.os.Debug$MemoryInfo;	 Catch:{ Throwable -> 0x009a }
        r7.<init>();	 Catch:{ Throwable -> 0x009a }
        android.os.Debug.getMemoryInfo(r7);	 Catch:{ Throwable -> 0x009a }
        r0 = android.os.Debug.MemoryInfo.class;
        r1 = "getOtherPss";
        r2 = 1;
        r2 = new java.lang.Class[r2];	 Catch:{ Throwable -> 0x009a }
        r4 = 0;
        r6 = java.lang.Integer.TYPE;	 Catch:{ Throwable -> 0x009a }
        r2[r4] = r6;	 Catch:{ Throwable -> 0x009a }
        r8 = r0.getMethod(r1, r2);	 Catch:{ Throwable -> 0x009a }
        r0 = android.os.Debug.MemoryInfo.class;
        r1 = "getOtherLabel";
        r2 = 1;
        r2 = new java.lang.Class[r2];	 Catch:{ Throwable -> 0x009a }
        r4 = 0;
        r6 = java.lang.Integer.TYPE;	 Catch:{ Throwable -> 0x009a }
        r2[r4] = r6;	 Catch:{ Throwable -> 0x009a }
        r9 = r0.getMethod(r1, r2);	 Catch:{ Throwable -> 0x009a }
        r6 = r3;
        r1 = r3;
        r2 = r3;
    L_0x002f:
        r0 = 5;
        if (r6 >= r0) goto L_0x009d;
    L_0x0032:
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x00aa }
        r4 = 0;
        r10 = java.lang.Integer.valueOf(r6);	 Catch:{ Throwable -> 0x00aa }
        r0[r4] = r10;	 Catch:{ Throwable -> 0x00aa }
        r0 = r9.invoke(r7, r0);	 Catch:{ Throwable -> 0x00aa }
        r0 = (java.lang.String) r0;	 Catch:{ Throwable -> 0x00aa }
        r4 = -1;
        r10 = r0.hashCode();	 Catch:{ Throwable -> 0x00aa }
        switch(r10) {
            case 1970305983: goto L_0x0061;
            case 2029715318: goto L_0x0056;
            default: goto L_0x004a;
        };	 Catch:{ Throwable -> 0x00aa }
    L_0x004a:
        r0 = r4;
    L_0x004b:
        switch(r0) {
            case 0: goto L_0x006c;
            case 1: goto L_0x0084;
            default: goto L_0x004e;
        };	 Catch:{ Throwable -> 0x00aa }
    L_0x004e:
        r0 = r1;
        r1 = r2;
    L_0x0050:
        r2 = r6 + 1;
        r6 = r2;
        r2 = r1;
        r1 = r0;
        goto L_0x002f;
    L_0x0056:
        r10 = "Cursor";
        r0 = r0.equals(r10);	 Catch:{ Throwable -> 0x00aa }
        if (r0 == 0) goto L_0x004a;
    L_0x005f:
        r0 = r3;
        goto L_0x004b;
    L_0x0061:
        r10 = "Ashmem";
        r0 = r0.equals(r10);	 Catch:{ Throwable -> 0x00aa }
        if (r0 == 0) goto L_0x004a;
    L_0x006a:
        r0 = r5;
        goto L_0x004b;
    L_0x006c:
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x00aa }
        r4 = 0;
        r10 = java.lang.Integer.valueOf(r6);	 Catch:{ Throwable -> 0x00aa }
        r0[r4] = r10;	 Catch:{ Throwable -> 0x00aa }
        r0 = r8.invoke(r7, r0);	 Catch:{ Throwable -> 0x00aa }
        r0 = (java.lang.Integer) r0;	 Catch:{ Throwable -> 0x00aa }
        r0 = r0.intValue();	 Catch:{ Throwable -> 0x00aa }
        r11 = r1;
        r1 = r0;
        r0 = r11;
        goto L_0x0050;
    L_0x0084:
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x00aa }
        r4 = 0;
        r10 = java.lang.Integer.valueOf(r6);	 Catch:{ Throwable -> 0x00aa }
        r0[r4] = r10;	 Catch:{ Throwable -> 0x00aa }
        r0 = r8.invoke(r7, r0);	 Catch:{ Throwable -> 0x00aa }
        r0 = (java.lang.Integer) r0;	 Catch:{ Throwable -> 0x00aa }
        r0 = r0.intValue();	 Catch:{ Throwable -> 0x00aa }
        r1 = r2;
        goto L_0x0050;
    L_0x009a:
        r0 = move-exception;
        r1 = r3;
        r2 = r3;
    L_0x009d:
        r0 = java.lang.Integer.valueOf(r2);
        r1 = java.lang.Integer.valueOf(r1);
        r0 = android.util.Pair.create(r0, r1);
        return r0;
    L_0x00aa:
        r0 = move-exception;
        goto L_0x009d;
        */
        throw new UnsupportedOperationException("Method not decompiled: csv.c():android.util.Pair<java.lang.Integer, java.lang.Integer>");
    }

    public static long a(Class cls) {
        try {
            return ((Long) Debug.class.getMethod("countInstancesOfClass", new Class[]{Class.class}).invoke(null, new Object[]{cls})).longValue();
        } catch (Throwable th) {
            return 0;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.io.File a(android.app.Activity r7) {
        /*
        r1 = 0;
        r0 = com.twitter.platform.PlatformContext.f();	 Catch:{ IOException -> 0x003a, all -> 0x0045 }
        r0 = r0.e();	 Catch:{ IOException -> 0x003a, all -> 0x0045 }
        r2 = "txt";
        r0 = r0.a(r2);	 Catch:{ IOException -> 0x003a, all -> 0x0045 }
        if (r0 == 0) goto L_0x002f;
    L_0x0012:
        r3 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x0053, all -> 0x0045 }
        r3.<init>(r0);	 Catch:{ IOException -> 0x0053, all -> 0x0045 }
        r2 = new java.io.PrintWriter;	 Catch:{ IOException -> 0x0057, all -> 0x004e }
        r2.<init>(r3);	 Catch:{ IOException -> 0x0057, all -> 0x004e }
        r4 = "";
        r5 = r3.getFD();	 Catch:{ IOException -> 0x005a, all -> 0x0050 }
        r6 = com.twitter.util.collection.CollectionUtils.a;	 Catch:{ IOException -> 0x005a, all -> 0x0050 }
        r7.dump(r4, r5, r2, r6);	 Catch:{ IOException -> 0x005a, all -> 0x0050 }
        cvi.a(r2);
        cvi.a(r3);
    L_0x002e:
        return r0;
    L_0x002f:
        cvi.a(r1);
        cvi.a(r1);
    L_0x0035:
        cvi.d(r0);
        r0 = r1;
        goto L_0x002e;
    L_0x003a:
        r0 = move-exception;
        r2 = r1;
        r3 = r1;
        r0 = r1;
    L_0x003e:
        cvi.a(r2);
        cvi.a(r3);
        goto L_0x0035;
    L_0x0045:
        r0 = move-exception;
        r3 = r1;
    L_0x0047:
        cvi.a(r1);
        cvi.a(r3);
        throw r0;
    L_0x004e:
        r0 = move-exception;
        goto L_0x0047;
    L_0x0050:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0047;
    L_0x0053:
        r2 = move-exception;
        r2 = r1;
        r3 = r1;
        goto L_0x003e;
    L_0x0057:
        r2 = move-exception;
        r2 = r1;
        goto L_0x003e;
    L_0x005a:
        r4 = move-exception;
        goto L_0x003e;
        */
        throw new UnsupportedOperationException("Method not decompiled: csv.a(android.app.Activity):java.io.File");
    }
}
