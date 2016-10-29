package com.twitter.media.filters;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.twitter.media.MediaUtils;
import com.twitter.media.c;
import java.io.File;

/* compiled from: Twttr */
public class g {
    static final /* synthetic */ boolean a;
    private static boolean b;
    private static boolean c;
    private static a d;

    static {
        a = !g.class.desiredAssertionStatus();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized boolean a(android.content.Context r8) {
        /*
        r1 = 0;
        r0 = 1;
        r3 = com.twitter.media.filters.g.class;
        monitor-enter(r3);
        r2 = b;	 Catch:{ all -> 0x0071 }
        if (r2 == 0) goto L_0x000d;
    L_0x0009:
        r0 = c;	 Catch:{ all -> 0x0071 }
    L_0x000b:
        monitor-exit(r3);
        return r0;
    L_0x000d:
        r2 = 0;
        r4 = com.twitter.media.NativeInit.b();	 Catch:{ Exception -> 0x0058, all -> 0x0067 }
        if (r4 == 0) goto L_0x0083;
    L_0x0014:
        r4 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Exception -> 0x0058, all -> 0x0067 }
        r5 = 14;
        if (r4 < r5) goto L_0x0083;
    L_0x001a:
        r4 = r8.getResources();	 Catch:{ Exception -> 0x0058, all -> 0x0067 }
        r5 = com.twitter.media.c.filter_resources;	 Catch:{ Exception -> 0x0058, all -> 0x0067 }
        r2 = r4.openRawResourceFd(r5);	 Catch:{ Exception -> 0x0058, all -> 0x0067 }
        if (r2 == 0) goto L_0x004a;
    L_0x0026:
        r4 = r2.getLength();	 Catch:{ Exception -> 0x007e, all -> 0x0067 }
        r6 = 0;
        r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r4 <= 0) goto L_0x004a;
    L_0x0030:
        r4 = r2.getFileDescriptor();	 Catch:{ Exception -> 0x007e, all -> 0x0067 }
        if (r4 == 0) goto L_0x004a;
    L_0x0036:
        r4 = r4.valid();	 Catch:{ Exception -> 0x007e, all -> 0x0067 }
        if (r4 == 0) goto L_0x004a;
    L_0x003c:
        r4 = 1;
        c = r4;	 Catch:{ Exception -> 0x007e, all -> 0x0067 }
        r1 = 1;
        b = r1;	 Catch:{ all -> 0x0071 }
        if (r2 == 0) goto L_0x000b;
    L_0x0044:
        r2.close();	 Catch:{ IOException -> 0x0048 }
        goto L_0x000b;
    L_0x0048:
        r1 = move-exception;
        goto L_0x000b;
    L_0x004a:
        r0 = r2;
    L_0x004b:
        r2 = 0;
        c = r2;	 Catch:{ Exception -> 0x0081 }
        r2 = 1;
        b = r2;	 Catch:{ all -> 0x0071 }
        if (r0 == 0) goto L_0x0056;
    L_0x0053:
        r0.close();	 Catch:{ IOException -> 0x0074 }
    L_0x0056:
        r0 = r1;
        goto L_0x000b;
    L_0x0058:
        r0 = move-exception;
        r0 = r2;
    L_0x005a:
        r2 = 0;
        c = r2;	 Catch:{ all -> 0x007a }
        r2 = 1;
        b = r2;	 Catch:{ all -> 0x0071 }
        if (r0 == 0) goto L_0x0065;
    L_0x0062:
        r0.close();	 Catch:{ IOException -> 0x0076 }
    L_0x0065:
        r0 = r1;
        goto L_0x000b;
    L_0x0067:
        r0 = move-exception;
    L_0x0068:
        r1 = 1;
        b = r1;	 Catch:{ all -> 0x0071 }
        if (r2 == 0) goto L_0x0070;
    L_0x006d:
        r2.close();	 Catch:{ IOException -> 0x0078 }
    L_0x0070:
        throw r0;	 Catch:{ all -> 0x0071 }
    L_0x0071:
        r0 = move-exception;
        monitor-exit(r3);
        throw r0;
    L_0x0074:
        r0 = move-exception;
        goto L_0x0056;
    L_0x0076:
        r0 = move-exception;
        goto L_0x0065;
    L_0x0078:
        r1 = move-exception;
        goto L_0x0070;
    L_0x007a:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
        goto L_0x0068;
    L_0x007e:
        r0 = move-exception;
        r0 = r2;
        goto L_0x005a;
    L_0x0081:
        r2 = move-exception;
        goto L_0x005a;
    L_0x0083:
        r0 = r2;
        goto L_0x004b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.media.filters.g.a(android.content.Context):boolean");
    }

    public static boolean a(int i) {
        return i == 0;
    }

    public static boolean a(Context context, Uri uri, File file, int i, int i2, int i3, boolean z, float f, float f2) {
        if (i3 < 0) {
            return false;
        }
        Filters filters = new Filters(a());
        boolean z2 = i3 > 8;
        AssetFileDescriptor openRawResourceFd = context.getResources().openRawResourceFd(c.filter_resources);
        try {
            if (filters.a(context, openRawResourceFd, z2)) {
                int a = filters.a(uri, i, i2, z);
                if (a > 0) {
                    z2 = filters.a(i3, a, file, f, f2);
                    MediaUtils.a(openRawResourceFd);
                    filters.a(false);
                    return z2;
                }
            }
            z2 = false;
            MediaUtils.a(openRawResourceFd);
            filters.a(false);
            return z2;
        } catch (Throwable th) {
            MediaUtils.a(openRawResourceFd);
        }
    }

    private static a a() {
        if (d == null) {
            d = new a();
            d.a();
        }
        return d;
    }
}
