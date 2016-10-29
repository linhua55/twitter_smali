package defpackage;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: Twttr */
/* renamed from: cxm */
public abstract class cxm {
    private final List<cxr> a;

    protected abstract String a();

    protected cxm() {
        this.a = new ArrayList();
        this.a.add(new cxq());
    }

    protected synchronized List<? extends cxr> b() {
        return this.a;
    }

    public void a(String str, Object... objArr) {
        a(3, cxm.e(str, objArr), null);
    }

    public void a(String str) {
        a(4, str, null);
    }

    public void b(String str, Object... objArr) {
        a(4, cxm.e(str, objArr), null);
    }

    public void b(String str) {
        a(5, str, null);
    }

    public void c(String str, Object... objArr) {
        a(5, cxm.e(str, objArr), null);
    }

    public void a(Throwable th) {
        if (th == null) {
            th = new Exception("null exception logged");
        }
        a(5, th.getMessage(), th);
    }

    public void b(Throwable th) {
        if (th == null) {
            th = new Exception("null exception logged");
        }
        a(6, th.getMessage(), th);
    }

    public void c(String str) {
        a(6, str, null);
    }

    public void d(String str, Object... objArr) {
        a(6, cxm.e(str, objArr), null);
    }

    public void a(Throwable th, String str, Object... objArr) {
        a(6, cxm.e(str, objArr), th);
    }

    protected void a(int i, String str, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            str = "empty message";
        }
        cxl.a(i, a(), str, th, b());
    }

    private static String e(String str, Object[] objArr) {
        if (str == null) {
            return "null";
        }
        return String.format(Locale.US, str, objArr);
    }
}
