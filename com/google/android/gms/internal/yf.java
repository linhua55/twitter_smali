package com.google.android.gms.internal;

import android.os.SystemClock;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.google.android.exoplayer.util.NalUnitUtil;
import java.io.EOFException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class yf implements av {
    private final Map<String, yh> a;
    private long b;
    private final File c;
    private final int d;

    public yf(File file) {
        this(file, 5242880);
    }

    public yf(File file, int i) {
        this.a = new LinkedHashMap(16, AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION, true);
        this.b = 0;
        this.c = file;
        this.d = i;
    }

    static int a(InputStream inputStream) throws IOException {
        return (((0 | (e(inputStream) << 0)) | (e(inputStream) << 8)) | (e(inputStream) << 16)) | (e(inputStream) << 24);
    }

    private void a(int i) {
        if (this.b + ((long) i) >= ((long) this.d)) {
            int i2;
            if (xi.b) {
                xi.a("Pruning old cache entries.", new Object[0]);
            }
            long j = this.b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator it = this.a.entrySet().iterator();
            int i3 = 0;
            while (it.hasNext()) {
                yh yhVar = (yh) ((Entry) it.next()).getValue();
                if (c(yhVar.b).delete()) {
                    this.b -= yhVar.a;
                } else {
                    xi.b("Could not delete cache entry for key=%s, filename=%s", yhVar.b, d(yhVar.b));
                }
                it.remove();
                i2 = i3 + 1;
                if (((float) (this.b + ((long) i))) < ((float) this.d) * 0.9f) {
                    break;
                }
                i3 = i2;
            }
            i2 = i3;
            if (xi.b) {
                xi.a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
            }
        }
    }

    static void a(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & NalUnitUtil.EXTENDED_SAR);
        outputStream.write((i >> 8) & NalUnitUtil.EXTENDED_SAR);
        outputStream.write((i >> 16) & NalUnitUtil.EXTENDED_SAR);
        outputStream.write((i >> 24) & NalUnitUtil.EXTENDED_SAR);
    }

    static void a(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) ((int) (j >>> null)));
        outputStream.write((byte) ((int) (j >>> 8)));
        outputStream.write((byte) ((int) (j >>> 16)));
        outputStream.write((byte) ((int) (j >>> 24)));
        outputStream.write((byte) ((int) (j >>> 32)));
        outputStream.write((byte) ((int) (j >>> 40)));
        outputStream.write((byte) ((int) (j >>> 48)));
        outputStream.write((byte) ((int) (j >>> 56)));
    }

    static void a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(Util.UTF_8);
        a(outputStream, (long) bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private void a(String str, yh yhVar) {
        if (this.a.containsKey(str)) {
            yh yhVar2 = (yh) this.a.get(str);
            this.b = (yhVar.a - yhVar2.a) + this.b;
        } else {
            this.b += yhVar.a;
        }
        this.a.put(str, yhVar);
    }

    static void a(Map<String, String> map, OutputStream outputStream) throws IOException {
        if (map != null) {
            a(outputStream, map.size());
            for (Entry entry : map.entrySet()) {
                a(outputStream, (String) entry.getKey());
                a(outputStream, (String) entry.getValue());
            }
            return;
        }
        a(outputStream, 0);
    }

    private static byte[] a(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                break;
            }
            i2 += read;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
    }

    static long b(InputStream inputStream) throws IOException {
        return (((((((0 | ((((long) e(inputStream)) & 255) << null)) | ((((long) e(inputStream)) & 255) << 8)) | ((((long) e(inputStream)) & 255) << 16)) | ((((long) e(inputStream)) & 255) << 24)) | ((((long) e(inputStream)) & 255) << 32)) | ((((long) e(inputStream)) & 255) << 40)) | ((((long) e(inputStream)) & 255) << 48)) | ((((long) e(inputStream)) & 255) << 56);
    }

    static String c(InputStream inputStream) throws IOException {
        return new String(a(inputStream, (int) b(inputStream)), Util.UTF_8);
    }

    private String d(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    static Map<String, String> d(InputStream inputStream) throws IOException {
        int a = a(inputStream);
        Map<String, String> emptyMap = a == 0 ? Collections.emptyMap() : new HashMap(a);
        for (int i = 0; i < a; i++) {
            emptyMap.put(c(inputStream).intern(), c(inputStream).intern());
        }
        return emptyMap;
    }

    private static int e(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    private void e(String str) {
        yh yhVar = (yh) this.a.get(str);
        if (yhVar != null) {
            this.b -= yhVar.a;
            this.a.remove(str);
        }
    }

    public synchronized aw a(String str) {
        aw awVar;
        IOException e;
        Throwable th;
        yh yhVar = (yh) this.a.get(str);
        if (yhVar == null) {
            awVar = null;
        } else {
            File c = c(str);
            yi yiVar;
            try {
                yiVar = new yi(null);
                try {
                    yh.a((InputStream) yiVar);
                    awVar = yhVar.a(a((InputStream) yiVar, (int) (c.length() - ((long) yiVar.a))));
                    if (yiVar != null) {
                        try {
                            yiVar.close();
                        } catch (IOException e2) {
                            awVar = null;
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                    try {
                        xi.b("%s: %s", c.getAbsolutePath(), e.toString());
                        b(str);
                        if (yiVar != null) {
                            try {
                                yiVar.close();
                            } catch (IOException e4) {
                                awVar = null;
                            }
                        }
                        awVar = null;
                        return awVar;
                    } catch (Throwable th2) {
                        th = th2;
                        if (yiVar != null) {
                            try {
                                yiVar.close();
                            } catch (IOException e5) {
                                awVar = null;
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e6) {
                e = e6;
                yiVar = null;
                xi.b("%s: %s", c.getAbsolutePath(), e.toString());
                b(str);
                if (yiVar != null) {
                    yiVar.close();
                }
                awVar = null;
                return awVar;
            } catch (Throwable th3) {
                th = th3;
                yiVar = null;
                if (yiVar != null) {
                    yiVar.close();
                }
                throw th;
            }
        }
        return awVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void a() {
        /*
        r9 = this;
        r0 = 0;
        monitor-enter(r9);
        r1 = r9.c;	 Catch:{ all -> 0x006d }
        r1 = r1.exists();	 Catch:{ all -> 0x006d }
        if (r1 != 0) goto L_0x0026;
    L_0x000a:
        r0 = r9.c;	 Catch:{ all -> 0x006d }
        r0 = r0.mkdirs();	 Catch:{ all -> 0x006d }
        if (r0 != 0) goto L_0x0024;
    L_0x0012:
        r0 = "Unable to create cache dir %s";
        r1 = 1;
        r1 = new java.lang.Object[r1];	 Catch:{ all -> 0x006d }
        r2 = 0;
        r3 = r9.c;	 Catch:{ all -> 0x006d }
        r3 = r3.getAbsolutePath();	 Catch:{ all -> 0x006d }
        r1[r2] = r3;	 Catch:{ all -> 0x006d }
        com.google.android.gms.internal.xi.c(r0, r1);	 Catch:{ all -> 0x006d }
    L_0x0024:
        monitor-exit(r9);
        return;
    L_0x0026:
        r1 = r9.c;	 Catch:{ all -> 0x006d }
        r3 = r1.listFiles();	 Catch:{ all -> 0x006d }
        if (r3 == 0) goto L_0x0024;
    L_0x002e:
        r4 = r3.length;	 Catch:{ all -> 0x006d }
        r2 = r0;
    L_0x0030:
        if (r2 >= r4) goto L_0x0024;
    L_0x0032:
        r5 = r3[r2];	 Catch:{ all -> 0x006d }
        r1 = 0;
        r0 = new java.io.BufferedInputStream;	 Catch:{ IOException -> 0x0057, all -> 0x0066 }
        r6 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0057, all -> 0x0066 }
        r6.<init>(r5);	 Catch:{ IOException -> 0x0057, all -> 0x0066 }
        r0.<init>(r6);	 Catch:{ IOException -> 0x0057, all -> 0x0066 }
        r1 = com.google.android.gms.internal.yh.a(r0);	 Catch:{ IOException -> 0x0079 }
        r6 = r5.length();	 Catch:{ IOException -> 0x0079 }
        r1.a = r6;	 Catch:{ IOException -> 0x0079 }
        r6 = r1.b;	 Catch:{ IOException -> 0x0079 }
        r9.a(r6, r1);	 Catch:{ IOException -> 0x0079 }
        if (r0 == 0) goto L_0x0053;
    L_0x0050:
        r0.close();	 Catch:{ IOException -> 0x0070 }
    L_0x0053:
        r0 = r2 + 1;
        r2 = r0;
        goto L_0x0030;
    L_0x0057:
        r0 = move-exception;
        r0 = r1;
    L_0x0059:
        if (r5 == 0) goto L_0x005e;
    L_0x005b:
        r5.delete();	 Catch:{ all -> 0x0074 }
    L_0x005e:
        if (r0 == 0) goto L_0x0053;
    L_0x0060:
        r0.close();	 Catch:{ IOException -> 0x0064 }
        goto L_0x0053;
    L_0x0064:
        r0 = move-exception;
        goto L_0x0053;
    L_0x0066:
        r0 = move-exception;
    L_0x0067:
        if (r1 == 0) goto L_0x006c;
    L_0x0069:
        r1.close();	 Catch:{ IOException -> 0x0072 }
    L_0x006c:
        throw r0;	 Catch:{ all -> 0x006d }
    L_0x006d:
        r0 = move-exception;
        monitor-exit(r9);
        throw r0;
    L_0x0070:
        r0 = move-exception;
        goto L_0x0053;
    L_0x0072:
        r1 = move-exception;
        goto L_0x006c;
    L_0x0074:
        r1 = move-exception;
        r8 = r1;
        r1 = r0;
        r0 = r8;
        goto L_0x0067;
    L_0x0079:
        r1 = move-exception;
        goto L_0x0059;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.yf.a():void");
    }

    public synchronized void a(String str, aw awVar) {
        a(awVar.a.length);
        File c = c(str);
        try {
            OutputStream fileOutputStream = new FileOutputStream(c);
            yh yhVar = new yh(str, awVar);
            if (yhVar.a(fileOutputStream)) {
                fileOutputStream.write(awVar.a);
                fileOutputStream.close();
                a(str, yhVar);
            } else {
                fileOutputStream.close();
                xi.b("Failed to write header for %s", c.getAbsolutePath());
                throw new IOException();
            }
        } catch (IOException e) {
            if (!c.delete()) {
                xi.b("Could not clean up file %s", c.getAbsolutePath());
            }
        }
    }

    public synchronized void b(String str) {
        boolean delete = c(str).delete();
        e(str);
        if (!delete) {
            xi.b("Could not delete cache entry for key=%s, filename=%s", str, d(str));
        }
    }

    public File c(String str) {
        return new File(this.c, d(str));
    }
}
