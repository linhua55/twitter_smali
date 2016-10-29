package defpackage;

import android.util.LruCache;
import cxo;

/* compiled from: Twttr */
/* renamed from: cxn */
public final class cxn {
    private static final String a;
    private static final LruCache<String, Boolean> b;

    static {
        a = cxk.class.getPackage().getName();
        b = new cxo(100);
    }

    public static boolean a(String str) {
        return !str.startsWith(a);
    }

    private static boolean c(String str) {
        return ((Boolean) b.get(str)).booleanValue();
    }

    public static String a() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        for (int i = 3; i < stackTrace.length; i++) {
            String className = stackTrace[i].getClassName();
            if (cxn.a(className) && !cxn.c(className)) {
                return className;
            }
        }
        return "Cat";
    }

    public static String b() {
        return cxn.b(cxn.a());
    }

    public static String b(String str) {
        String[] split = str.split("\\.");
        return split.length == 0 ? str : split[split.length - 1];
    }

    public static String c() {
        String a = cxn.a();
        String[] split = a.split("\\.");
        return split.length <= 1 ? a : a.substring(0, (a.length() - 1) - split[split.length - 1].length());
    }
}
