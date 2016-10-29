package defpackage;

/* compiled from: Twttr */
/* renamed from: cb */
public class cb {
    private static cd a;

    static {
        a = cc.a();
    }

    public static boolean a(int i) {
        return a.a(i);
    }

    public static void a(Class<?> cls, String str) {
        if (a.a(2)) {
            a.a(cb.a((Class) cls), str);
        }
    }

    public static void a(Class<?> cls, String str, Object obj) {
        if (a.a(2)) {
            a.a(cb.a((Class) cls), cb.a(str, obj));
        }
    }

    public static void a(Class<?> cls, String str, Object obj, Object obj2) {
        if (a.a(2)) {
            a.a(cb.a((Class) cls), cb.a(str, obj, obj2));
        }
    }

    public static void a(Class<?> cls, String str, Object obj, Object obj2, Object obj3) {
        if (cb.a(2)) {
            cb.a((Class) cls, cb.a(str, obj, obj2, obj3));
        }
    }

    public static void a(Class<?> cls, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        if (a.a(2)) {
            a.a(cb.a((Class) cls), cb.a(str, obj, obj2, obj3, obj4));
        }
    }

    public static void a(String str, String str2, Object... objArr) {
        if (a.a(2)) {
            a.a(str, cb.a(str2, objArr));
        }
    }

    public static void a(Class<?> cls, String str, Object... objArr) {
        if (a.a(2)) {
            a.a(cb.a((Class) cls), cb.a(str, objArr));
        }
    }

    public static void a(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (a.a(2)) {
            a.a(cb.a((Class) cls), cb.a(str, objArr), th);
        }
    }

    public static void b(Class<?> cls, String str) {
        if (a.a(3)) {
            a.b(cb.a((Class) cls), str);
        }
    }

    public static void b(Class<?> cls, String str, Object obj) {
        if (a.a(3)) {
            a.b(cb.a((Class) cls), cb.a(str, obj));
        }
    }

    public static void a(Class<?> cls, String str, Throwable th) {
        if (a.a(3)) {
            a.b(cb.a((Class) cls), str, th);
        }
    }

    public static void c(Class<?> cls, String str) {
        if (a.a(4)) {
            a.c(cb.a((Class) cls), str);
        }
    }

    public static void b(String str, String str2, Object... objArr) {
        if (a.a(5)) {
            a.d(str, cb.a(str2, objArr));
        }
    }

    public static void b(Class<?> cls, String str, Object... objArr) {
        if (a.a(5)) {
            a.d(cb.a((Class) cls), cb.a(str, objArr));
        }
    }

    public static void b(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (cb.a(5)) {
            cb.b((Class) cls, cb.a(str, objArr), th);
        }
    }

    public static void b(Class<?> cls, String str, Throwable th) {
        if (a.a(5)) {
            a.c(cb.a((Class) cls), str, th);
        }
    }

    public static void a(String str, String str2) {
        if (a.a(6)) {
            a.e(str, str2);
        }
    }

    public static void d(Class<?> cls, String str) {
        if (a.a(6)) {
            a.e(cb.a((Class) cls), str);
        }
    }

    public static void c(Class<?> cls, String str, Object... objArr) {
        if (a.a(6)) {
            a.e(cb.a((Class) cls), cb.a(str, objArr));
        }
    }

    public static void c(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (a.a(6)) {
            a.d(cb.a((Class) cls), cb.a(str, objArr), th);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (a.a(6)) {
            a.d(str, str2, th);
        }
    }

    public static void c(String str, String str2, Object... objArr) {
        if (a.a(6)) {
            a.f(str, cb.a(str2, objArr));
        }
    }

    public static void d(Class<?> cls, String str, Object... objArr) {
        if (a.a(6)) {
            a.f(cb.a((Class) cls), cb.a(str, objArr));
        }
    }

    public static void c(Class<?> cls, String str, Throwable th) {
        if (a.a(6)) {
            a.e(cb.a((Class) cls), str, th);
        }
    }

    private static String a(String str, Object... objArr) {
        return String.format(null, str, objArr);
    }

    private static String a(Class<?> cls) {
        return cls.getSimpleName();
    }
}
