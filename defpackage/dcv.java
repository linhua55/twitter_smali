package defpackage;

import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Twttr */
/* renamed from: dcv */
public class dcv {
    private static final AtomicReference<dcd> a;
    private static boolean b;

    static {
        a = new AtomicReference();
        b = false;
    }

    public static void a(String str, String str2) {
        if (dcv.a()) {
            Log.v(str, str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (dcv.a()) {
            Log.v(str, str2, th);
        }
    }

    public static void b(String str, String str2) {
        if (dcv.a()) {
            Log.e(str, str2);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (dcv.a()) {
            Log.e(str, str2, th);
        }
    }

    public static void c(String str, String str2) {
        if (dcv.a()) {
            Log.d(str, str2);
        }
    }

    public static void d(String str, String str2) {
        if (dcv.a()) {
            Log.w(str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (dcv.a()) {
            Log.i(str, str2);
        }
        dcd dcd = (dcd) a.get();
        if (dcd != null) {
            dcd.a(str + ": " + str2);
        }
    }

    public static void c(String str, String str2, Throwable th) {
        if (dcv.a()) {
            Log.e(str, str2, th);
        }
        dcd dcd = (dcd) a.get();
        if (dcd != null) {
            dcd.a(str + ": " + str2, th);
        }
    }

    public static boolean a() {
        return b;
    }
}
