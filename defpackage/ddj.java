package defpackage;

/* compiled from: Twttr */
/* renamed from: ddj */
public abstract class ddj {
    protected abstract void a(String str, String str2);

    protected abstract void a(String str, String str2, Throwable th);

    protected abstract void b(String str, String str2);

    protected abstract void b(String str, String str2, Throwable th);

    protected abstract void c(String str, String str2);

    protected abstract void c(String str, String str2, Throwable th);

    protected abstract void d(String str, String str2);

    public static void e(String str, String str2) {
        if (ddh.a != null) {
            ddh.a.a(str, str2);
        }
    }

    public static void f(String str, String str2) {
        if (ddh.a != null) {
            ddh.a.b(str, str2);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (ddh.a != null) {
            ddh.a.a(str, str2, th);
        }
    }

    public static void g(String str, String str2) {
        if (ddh.a != null) {
            ddh.a.c(str, str2);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (ddh.a != null) {
            ddh.a.b(str, str2, th);
        }
    }

    public static void h(String str, String str2) {
        if (ddh.a != null) {
            ddh.a.d(str, str2);
        }
    }

    public static void f(String str, String str2, Throwable th) {
        if (ddh.a != null) {
            ddh.a.c(str, str2, th);
        }
    }
}
