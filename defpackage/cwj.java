package defpackage;

/* compiled from: Twttr */
/* renamed from: cwj */
public abstract class cwj {
    private static final boolean a;
    private static final boolean b;
    private static final boolean c;
    private static final boolean d;

    static {
        boolean z;
        boolean z2 = true;
        a = cwj.a("org.junit.runners.ParentRunner");
        c = cwj.a("com.zutubi.android.junitreport.espresso.MultiDexTestRunner");
        if (!a || c) {
            z = false;
        } else {
            z = true;
        }
        b = z;
        if (System.getProperty("test.report") == null) {
            z2 = false;
        }
        d = z2;
    }

    public static boolean a() {
        return a;
    }

    public static boolean b() {
        return b;
    }

    public static boolean c() {
        return c;
    }

    public static boolean d() {
        return d;
    }

    static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
