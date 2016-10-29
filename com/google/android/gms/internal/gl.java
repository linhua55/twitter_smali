package com.google.android.gms.internal;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@oi
public class gl extends gf {
    private static final Set<String> d;
    private static final DecimalFormat e;
    private File f;
    private boolean g;

    static {
        d = Collections.synchronizedSet(new HashSet());
        e = new DecimalFormat("#,###");
    }

    public gl(sz szVar) {
        super(szVar);
        File cacheDir = this.a.getCacheDir();
        if (cacheDir == null) {
            b.d("Context.getCacheDir() returned null");
            return;
        }
        this.f = new File(cacheDir, "admobVideoStreams");
        if (!this.f.isDirectory() && !this.f.mkdirs()) {
            b.d("Could not create preload cache directory at " + this.f.getAbsolutePath());
            this.f = null;
        } else if (!this.f.setReadable(true, false) || !this.f.setExecutable(true, false)) {
            b.d("Could not set cache file permissions at " + this.f.getAbsolutePath());
            this.f = null;
        }
    }

    private File a(File file) {
        return new File(this.f, file.getName() + ".done");
    }

    private static void b(File file) {
        if (file.isFile()) {
            file.setLastModified(System.currentTimeMillis());
            return;
        }
        try {
            file.createNewFile();
        } catch (IOException e) {
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(java.lang.String r27) {
        /*
        r26 = this;
        r0 = r26;
        r2 = r0.f;
        if (r2 != 0) goto L_0x0014;
    L_0x0006:
        r2 = 0;
        r3 = "noCacheDir";
        r4 = 0;
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r3, r4);
        r2 = 0;
    L_0x0013:
        return r2;
    L_0x0014:
        r3 = r26.c();
        r2 = com.google.android.gms.internal.cj.o;
        r2 = r2.c();
        r2 = (java.lang.Integer) r2;
        r2 = r2.intValue();
        if (r3 <= r2) goto L_0x0040;
    L_0x0026:
        r2 = r26.d();
        if (r2 != 0) goto L_0x0014;
    L_0x002c:
        r2 = "Unable to expire stream cache";
        com.google.android.gms.ads.internal.util.client.b.d(r2);
        r2 = 0;
        r3 = "expireFailed";
        r4 = 0;
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r3, r4);
        r2 = 0;
        goto L_0x0013;
    L_0x0040:
        r2 = r26.b(r27);
        r11 = new java.io.File;
        r0 = r26;
        r3 = r0.f;
        r11.<init>(r3, r2);
        r0 = r26;
        r12 = r0.a(r11);
        r2 = r11.isFile();
        if (r2 == 0) goto L_0x008a;
    L_0x0059:
        r2 = r12.isFile();
        if (r2 == 0) goto L_0x008a;
    L_0x005f:
        r2 = r11.length();
        r2 = (int) r2;
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "Stream cache hit at ";
        r3 = r3.append(r4);
        r0 = r27;
        r3 = r3.append(r0);
        r3 = r3.toString();
        com.google.android.gms.ads.internal.util.client.b.a(r3);
        r3 = r11.getAbsolutePath();
        r0 = r26;
        r1 = r27;
        r0.a(r1, r3, r2);
        r2 = 1;
        goto L_0x0013;
    L_0x008a:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r0 = r26;
        r3 = r0.f;
        r3 = r3.getAbsolutePath();
        r2 = r2.append(r3);
        r0 = r27;
        r2 = r2.append(r0);
        r13 = r2.toString();
        r3 = d;
        monitor-enter(r3);
        r2 = d;	 Catch:{ all -> 0x00dc }
        r2 = r2.contains(r13);	 Catch:{ all -> 0x00dc }
        if (r2 == 0) goto L_0x00df;
    L_0x00b0:
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00dc }
        r2.<init>();	 Catch:{ all -> 0x00dc }
        r4 = "Stream cache already in progress at ";
        r2 = r2.append(r4);	 Catch:{ all -> 0x00dc }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ all -> 0x00dc }
        r2 = r2.toString();	 Catch:{ all -> 0x00dc }
        com.google.android.gms.ads.internal.util.client.b.d(r2);	 Catch:{ all -> 0x00dc }
        r2 = r11.getAbsolutePath();	 Catch:{ all -> 0x00dc }
        r4 = "inProgress";
        r5 = 0;
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r4, r5);	 Catch:{ all -> 0x00dc }
        r2 = 0;
        monitor-exit(r3);	 Catch:{ all -> 0x00dc }
        goto L_0x0013;
    L_0x00dc:
        r2 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x00dc }
        throw r2;
    L_0x00df:
        r2 = d;	 Catch:{ all -> 0x00dc }
        r2.add(r13);	 Catch:{ all -> 0x00dc }
        monitor-exit(r3);	 Catch:{ all -> 0x00dc }
        r5 = 0;
        r9 = "error";
        r8 = 0;
        r2 = new java.net.URL;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r0 = r27;
        r2.<init>(r0);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r3 = r2.openConnection();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = com.google.android.gms.internal.cj.t;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r2.c();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = (java.lang.Integer) r2;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r2.intValue();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r3.setConnectTimeout(r2);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r3.setReadTimeout(r2);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r3 instanceof java.net.HttpURLConnection;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        if (r2 == 0) goto L_0x01c9;
    L_0x010b:
        r0 = r3;
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r0;
        r2 = r2.getResponseCode();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r4 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r2 < r4) goto L_0x01c9;
    L_0x0117:
        r4 = "badUrl";
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0406, RuntimeException -> 0x03ef }
        r3.<init>();	 Catch:{ IOException -> 0x0406, RuntimeException -> 0x03ef }
        r6 = "HTTP request failed. Code: ";
        r3 = r3.append(r6);	 Catch:{ IOException -> 0x0406, RuntimeException -> 0x03ef }
        r6 = java.lang.Integer.toString(r2);	 Catch:{ IOException -> 0x0406, RuntimeException -> 0x03ef }
        r3 = r3.append(r6);	 Catch:{ IOException -> 0x0406, RuntimeException -> 0x03ef }
        r3 = r3.toString();	 Catch:{ IOException -> 0x0406, RuntimeException -> 0x03ef }
        r6 = new java.io.IOException;	 Catch:{ IOException -> 0x0159, RuntimeException -> 0x03f3 }
        r7 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0159, RuntimeException -> 0x03f3 }
        r7.<init>();	 Catch:{ IOException -> 0x0159, RuntimeException -> 0x03f3 }
        r8 = "HTTP status code ";
        r7 = r7.append(r8);	 Catch:{ IOException -> 0x0159, RuntimeException -> 0x03f3 }
        r2 = r7.append(r2);	 Catch:{ IOException -> 0x0159, RuntimeException -> 0x03f3 }
        r7 = " at ";
        r2 = r2.append(r7);	 Catch:{ IOException -> 0x0159, RuntimeException -> 0x03f3 }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x0159, RuntimeException -> 0x03f3 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x0159, RuntimeException -> 0x03f3 }
        r6.<init>(r2);	 Catch:{ IOException -> 0x0159, RuntimeException -> 0x03f3 }
        throw r6;	 Catch:{ IOException -> 0x0159, RuntimeException -> 0x03f3 }
    L_0x0159:
        r2 = move-exception;
    L_0x015a:
        r6 = r2 instanceof java.lang.RuntimeException;
        if (r6 == 0) goto L_0x0166;
    L_0x015e:
        r6 = com.google.android.gms.ads.internal.ar.h();
        r7 = 1;
        r6.a(r2, r7);
    L_0x0166:
        r5.close();	 Catch:{ IOException -> 0x03e4, NullPointerException -> 0x03e7 }
    L_0x0169:
        r0 = r26;
        r5 = r0.g;
        if (r5 == 0) goto L_0x03c2;
    L_0x016f:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r5 = "Preload aborted for URL \"";
        r2 = r2.append(r5);
        r0 = r27;
        r2 = r2.append(r0);
        r5 = "\"";
        r2 = r2.append(r5);
        r2 = r2.toString();
        com.google.android.gms.ads.internal.util.client.b.c(r2);
    L_0x018f:
        r2 = r11.exists();
        if (r2 == 0) goto L_0x01b6;
    L_0x0195:
        r2 = r11.delete();
        if (r2 != 0) goto L_0x01b6;
    L_0x019b:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r5 = "Could not delete partial cache file at ";
        r2 = r2.append(r5);
        r5 = r11.getAbsolutePath();
        r2 = r2.append(r5);
        r2 = r2.toString();
        com.google.android.gms.ads.internal.util.client.b.d(r2);
    L_0x01b6:
        r2 = r11.getAbsolutePath();
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r4, r3);
        r2 = d;
        r2.remove(r13);
        r2 = 0;
        goto L_0x0013;
    L_0x01c9:
        r6 = r3.getContentLength();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        if (r6 >= 0) goto L_0x01ff;
    L_0x01cf:
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2.<init>();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r3 = "Stream cache aborted, missing content-length header at ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r2.toString();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        com.google.android.gms.ads.internal.util.client.b.d(r2);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r11.getAbsolutePath();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r3 = "contentLengthMissing";
        r4 = 0;
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r3, r4);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = d;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2.remove(r13);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = 0;
        goto L_0x0013;
    L_0x01ff:
        r2 = e;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r14 = (long) r6;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r4 = r2.format(r14);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = com.google.android.gms.internal.cj.p;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r2.c();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = (java.lang.Integer) r2;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r14 = r2.intValue();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        if (r6 <= r14) goto L_0x0262;
    L_0x0214:
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2.<init>();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r3 = "Content length ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r3 = " exceeds limit at ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r2.toString();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        com.google.android.gms.ads.internal.util.client.b.d(r2);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2.<init>();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r3 = "File too big for full file cache. Size: ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r2.toString();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r3 = r11.getAbsolutePath();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r4 = "sizeExceeded";
        r0 = r26;
        r1 = r27;
        r0.a(r1, r3, r4, r2);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = d;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2.remove(r13);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = 0;
        goto L_0x0013;
    L_0x0262:
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2.<init>();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r7 = "Caching ";
        r2 = r2.append(r7);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r4 = " bytes from ";
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r2.toString();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        com.google.android.gms.ads.internal.util.client.b.a(r2);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r2 = r3.getInputStream();	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r15 = java.nio.channels.Channels.newChannel(r2);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r10 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r10.<init>(r11);	 Catch:{ IOException -> 0x0401, RuntimeException -> 0x03ea }
        r16 = r10.getChannel();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = 1048576; // 0x100000 float:1.469368E-39 double:5.180654E-318;
        r17 = java.nio.ByteBuffer.allocate(r2);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r18 = com.google.android.gms.ads.internal.ar.i();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r5 = 0;
        r20 = r18.a();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = com.google.android.gms.internal.cj.s;	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = r2.c();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = (java.lang.Long) r2;	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = r2.longValue();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r19 = new com.google.android.gms.internal.sc;	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r0 = r19;
        r0.<init>(r2);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = com.google.android.gms.internal.cj.r;	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = r2.c();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = (java.lang.Long) r2;	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r22 = r2.longValue();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
    L_0x02c5:
        r0 = r17;
        r2 = r15.read(r0);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        if (r2 < 0) goto L_0x0372;
    L_0x02cd:
        r5 = r5 + r2;
        if (r5 <= r14) goto L_0x02f8;
    L_0x02d0:
        r4 = "sizeExceeded";
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r2.<init>();	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r3 = "File too big for full file cache. Size: ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r3 = java.lang.Integer.toString(r5);	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r3 = r2.toString();	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x02f4, RuntimeException -> 0x033d }
        r5 = "stream cache file size limit exceeded";
        r2.<init>(r5);	 Catch:{ IOException -> 0x02f4, RuntimeException -> 0x033d }
        throw r2;	 Catch:{ IOException -> 0x02f4, RuntimeException -> 0x033d }
    L_0x02f4:
        r2 = move-exception;
        r5 = r10;
        goto L_0x015a;
    L_0x02f8:
        r17.flip();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
    L_0x02fb:
        r2 = r16.write(r17);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        if (r2 > 0) goto L_0x02fb;
    L_0x0301:
        r17.clear();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = r18.a();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = r2 - r20;
        r24 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r24 = r24 * r22;
        r2 = (r2 > r24 ? 1 : (r2 == r24 ? 0 : -1));
        if (r2 <= 0) goto L_0x0341;
    L_0x0312:
        r4 = "downloadTimeout";
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r2.<init>();	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r3 = "Timeout exceeded. Limit: ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r3 = java.lang.Long.toString(r22);	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r3 = " sec";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r3 = r2.toString();	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x02f4, RuntimeException -> 0x033d }
        r5 = "stream cache time limit exceeded";
        r2.<init>(r5);	 Catch:{ IOException -> 0x02f4, RuntimeException -> 0x033d }
        throw r2;	 Catch:{ IOException -> 0x02f4, RuntimeException -> 0x033d }
    L_0x033d:
        r2 = move-exception;
        r5 = r10;
        goto L_0x015a;
    L_0x0341:
        r0 = r26;
        r2 = r0.g;	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        if (r2 == 0) goto L_0x0358;
    L_0x0347:
        r4 = "externalAbort";
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        r3 = "abort requested";
        r2.<init>(r3);	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
        throw r2;	 Catch:{ IOException -> 0x0353, RuntimeException -> 0x03fc }
    L_0x0353:
        r2 = move-exception;
        r3 = r8;
        r5 = r10;
        goto L_0x015a;
    L_0x0358:
        r2 = r19.a();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        if (r2 == 0) goto L_0x02c5;
    L_0x035e:
        r4 = r11.getAbsolutePath();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r7 = 0;
        r2 = r26;
        r3 = r27;
        r2.a(r3, r4, r5, r6, r7);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        goto L_0x02c5;
    L_0x036c:
        r2 = move-exception;
        r3 = r8;
        r4 = r9;
        r5 = r10;
        goto L_0x015a;
    L_0x0372:
        r10.close();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = 3;
        r2 = com.google.android.gms.ads.internal.util.client.b.a(r2);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        if (r2 == 0) goto L_0x03a7;
    L_0x037c:
        r2 = e;	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r6 = (long) r5;	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = r2.format(r6);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r3.<init>();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r4 = "Preloaded ";
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = r3.append(r2);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r3 = " bytes from ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        com.google.android.gms.ads.internal.util.client.b.a(r2);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
    L_0x03a7:
        r2 = 1;
        r3 = 0;
        r11.setReadable(r2, r3);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        b(r12);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = r11.getAbsolutePath();	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r5);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = d;	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2.remove(r13);	 Catch:{ IOException -> 0x036c, RuntimeException -> 0x03f6 }
        r2 = 1;
        goto L_0x0013;
    L_0x03c2:
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Preload failed for URL \"";
        r5 = r5.append(r6);
        r0 = r27;
        r5 = r5.append(r0);
        r6 = "\"";
        r5 = r5.append(r6);
        r5 = r5.toString();
        com.google.android.gms.ads.internal.util.client.b.d(r5, r2);
        goto L_0x018f;
    L_0x03e4:
        r5 = move-exception;
        goto L_0x0169;
    L_0x03e7:
        r5 = move-exception;
        goto L_0x0169;
    L_0x03ea:
        r2 = move-exception;
        r3 = r8;
        r4 = r9;
        goto L_0x015a;
    L_0x03ef:
        r2 = move-exception;
        r3 = r8;
        goto L_0x015a;
    L_0x03f3:
        r2 = move-exception;
        goto L_0x015a;
    L_0x03f6:
        r2 = move-exception;
        r3 = r8;
        r4 = r9;
        r5 = r10;
        goto L_0x015a;
    L_0x03fc:
        r2 = move-exception;
        r3 = r8;
        r5 = r10;
        goto L_0x015a;
    L_0x0401:
        r2 = move-exception;
        r3 = r8;
        r4 = r9;
        goto L_0x015a;
    L_0x0406:
        r2 = move-exception;
        r3 = r8;
        goto L_0x015a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gl.a(java.lang.String):boolean");
    }

    public void b() {
        this.g = true;
    }

    public int c() {
        int i = 0;
        if (this.f != null) {
            for (File name : this.f.listFiles()) {
                if (!name.getName().endsWith(".done")) {
                    i++;
                }
            }
        }
        return i;
    }

    public boolean d() {
        if (this.f == null) {
            return false;
        }
        boolean delete;
        File file = null;
        long j = MediaFormat.OFFSET_SAMPLE_RELATIVE;
        File[] listFiles = this.f.listFiles();
        int length = listFiles.length;
        int i = 0;
        while (i < length) {
            long lastModified;
            File file2;
            File file3 = listFiles[i];
            if (!file3.getName().endsWith(".done")) {
                lastModified = file3.lastModified();
                if (lastModified < j) {
                    file2 = file3;
                    i++;
                    file = file2;
                    j = lastModified;
                }
            }
            lastModified = j;
            file2 = file;
            i++;
            file = file2;
            j = lastModified;
        }
        if (file != null) {
            delete = file.delete();
            File a = a(file);
            if (a.isFile()) {
                delete &= a.delete();
            }
        } else {
            delete = false;
        }
        return delete;
    }
}
