package defpackage;

import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: cfc */
public abstract class cfc {
    public abstract void a(String str, String str2);

    public abstract void b(String str, String str2);

    public abstract void c(String str, String str2);

    public abstract void d(String str, String str2);

    public abstract void e(String str, String str2);

    public void a(String str, String str2, Throwable th) {
        b(str, cfc.a(str2, th));
    }

    public void b(String str, String str2, Throwable th) {
        d(str, cfc.a(str2, th));
    }

    public void c(String str, String str2, Throwable th) {
        e(str, cfc.a(str2, th));
    }

    protected static String a(String str, Throwable th) {
        return th == null ? str : str + aj.a() + cfb.a(th);
    }
}
