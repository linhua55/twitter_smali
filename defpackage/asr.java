package defpackage;

import android.content.Context;
import android.os.AsyncTask;
import ark;
import arw;
import bbn;
import com.twitter.platform.PlatformContext;
import com.twitter.util.concurrent.c;
import com.twitter.util.h;
import com.twitter.util.serialization.m;
import cvi;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: asr */
public class asr {
    private static final Map<Long, ast> a;

    static {
        a = new HashMap();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static defpackage.ciz a(java.io.File r7, arw r8) {
        /*
        r4 = 0;
        monitor-enter(r7);
        if (r8 == 0) goto L_0x0041;
    L_0x0004:
        r1 = new ark;	 Catch:{ all -> 0x005c }
        r2 = "fs:load:manifest";
        r3 = ark.m;	 Catch:{ all -> 0x005c }
        r1.<init>(r2, r3);	 Catch:{ all -> 0x005c }
        r2 = "Server_FCP";
        r1.b(r2);	 Catch:{ all -> 0x005c }
        r1.i();	 Catch:{ all -> 0x005c }
        r3 = r1;
    L_0x0018:
        r5 = new java.io.FileInputStream;	 Catch:{ FileNotFoundException -> 0x0074, Exception -> 0x005f, all -> 0x0068 }
        r5.<init>(r7);	 Catch:{ FileNotFoundException -> 0x0074, Exception -> 0x005f, all -> 0x0068 }
        r1 = r5.available();	 Catch:{ FileNotFoundException -> 0x0032, Exception -> 0x0072, all -> 0x0070 }
        r2 = new byte[r1];	 Catch:{ FileNotFoundException -> 0x0032, Exception -> 0x0072, all -> 0x0070 }
        r6 = r5.read(r2);	 Catch:{ FileNotFoundException -> 0x0032, Exception -> 0x0072, all -> 0x0070 }
        if (r6 == r1) goto L_0x0043;
    L_0x0029:
        r1 = new com.twitter.util.serialization.SerializationException;	 Catch:{ FileNotFoundException -> 0x0032, Exception -> 0x0072, all -> 0x0070 }
        r2 = "Could not read entire ServerFeatureSwitchesConfiguration file.";
        r1.<init>(r2);	 Catch:{ FileNotFoundException -> 0x0032, Exception -> 0x0072, all -> 0x0070 }
        throw r1;	 Catch:{ FileNotFoundException -> 0x0032, Exception -> 0x0072, all -> 0x0070 }
    L_0x0032:
        r1 = move-exception;
        r1 = r5;
    L_0x0034:
        cvi.a(r1);	 Catch:{ all -> 0x005c }
    L_0x0037:
        if (r3 == 0) goto L_0x003f;
    L_0x0039:
        r3.j();	 Catch:{ all -> 0x005c }
        r8.a(r3);	 Catch:{ all -> 0x005c }
    L_0x003f:
        monitor-exit(r7);	 Catch:{ all -> 0x005c }
        return r4;
    L_0x0041:
        r3 = r4;
        goto L_0x0018;
    L_0x0043:
        r1 = defpackage.ciz.a;	 Catch:{ FileNotFoundException -> 0x0032, Exception -> 0x0072, all -> 0x0070 }
        r1 = com.twitter.util.serialization.m.a(r2, r1);	 Catch:{ FileNotFoundException -> 0x0032, Exception -> 0x0072, all -> 0x0070 }
        r1 = (defpackage.ciz) r1;	 Catch:{ FileNotFoundException -> 0x0032, Exception -> 0x0072, all -> 0x0070 }
        if (r1 != 0) goto L_0x007b;
    L_0x004d:
        r6 = defpackage.ciz.b;	 Catch:{ FileNotFoundException -> 0x0077, Exception -> 0x0072, all -> 0x0070 }
        r2 = com.twitter.util.serialization.m.a(r2, r6);	 Catch:{ FileNotFoundException -> 0x0077, Exception -> 0x0072, all -> 0x0070 }
        r0 = r2;
        r0 = (defpackage.ciz) r0;	 Catch:{ FileNotFoundException -> 0x0077, Exception -> 0x0072, all -> 0x0070 }
        r1 = r0;
        r4 = r1;
    L_0x0058:
        cvi.a(r5);	 Catch:{ all -> 0x005c }
        goto L_0x0037;
    L_0x005c:
        r1 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x005c }
        throw r1;
    L_0x005f:
        r1 = move-exception;
        r5 = r4;
    L_0x0061:
        r7.delete();	 Catch:{ Exception -> 0x006e, all -> 0x0070 }
    L_0x0064:
        cvi.a(r5);	 Catch:{ all -> 0x005c }
        goto L_0x0037;
    L_0x0068:
        r1 = move-exception;
        r5 = r4;
    L_0x006a:
        cvi.a(r5);	 Catch:{ all -> 0x005c }
        throw r1;	 Catch:{ all -> 0x005c }
    L_0x006e:
        r1 = move-exception;
        goto L_0x0064;
    L_0x0070:
        r1 = move-exception;
        goto L_0x006a;
    L_0x0072:
        r1 = move-exception;
        goto L_0x0061;
    L_0x0074:
        r1 = move-exception;
        r1 = r4;
        goto L_0x0034;
    L_0x0077:
        r2 = move-exception;
        r4 = r1;
        r1 = r5;
        goto L_0x0034;
    L_0x007b:
        r4 = r1;
        goto L_0x0058;
        */
        throw new UnsupportedOperationException("Method not decompiled: asr.a(java.io.File, arw):ciz");
    }

    public static void a(Context context, long j, ciz ciz, arw arw) {
        ark ark;
        Closeable fileOutputStream;
        Throwable th;
        Closeable closeable = null;
        h.c();
        if (arw != null) {
            ark = new ark("fs:write:config", ark.m);
            ark.b("Server_FCP");
            ark.i();
        } else {
            ark = null;
        }
        File a = asr.a(context, j);
        synchronized (a) {
            try {
                fileOutputStream = new FileOutputStream(a);
                try {
                    fileOutputStream.write(m.a(ciz, ciz.a, new byte[102400]));
                    cvi.a(fileOutputStream);
                } catch (IOException e) {
                    closeable = fileOutputStream;
                    cvi.a(closeable);
                    if (ark == null) {
                        ark.j();
                        arw.a(ark);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cvi.a(fileOutputStream);
                    throw th;
                }
            } catch (IOException e2) {
                cvi.a(closeable);
                if (ark == null) {
                    ark.j();
                    arw.a(ark);
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
                cvi.a(fileOutputStream);
                throw th;
            }
        }
        if (ark == null) {
            ark.j();
            arw.a(ark);
        }
    }

    public static File a(Context context, long j) {
        File d = cvi.d(context);
        if (d == null) {
            bbn.a(new RuntimeException("IoUtils.getInternalStorageFileDir() returned null."));
            d = context.getCacheDir();
        }
        return new File(d, "feature_switches_" + j);
    }

    public static void b(Context context, long j) {
        asr.a(context, j).delete();
    }

    public static void a(Context context, long j, ciz ciz) {
        new c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new ass(context, j, ciz)).a();
    }

    public static long a(long j) {
        return PlatformContext.f().b().a("feature_timestamp_v2_" + j, 0);
    }

    public static void a(long j, long j2) {
        PlatformContext.f().b().a().a("feature_timestamp_v2_" + j, j2).a();
    }

    public static void b(long j) {
        PlatformContext.f().b().a().a("feature_timestamp_v2_" + j).a();
        a.remove(Long.valueOf(j));
    }

    public static ast c(long j) {
        ast ast = (ast) a.get(Long.valueOf(j));
        if (ast != null) {
            return ast;
        }
        ast ast2 = new ast(j == 0 ? 86400000 : 3600000, asr.a(j));
        a.put(Long.valueOf(j), ast2);
        return ast2;
    }
}
