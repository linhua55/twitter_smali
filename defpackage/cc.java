package defpackage;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

/* compiled from: Twttr */
/* renamed from: cc */
public class cc implements cd {
    public static final cc a;
    private String b;
    private int c;

    static {
        a = new cc();
    }

    public static cc a() {
        return a;
    }

    private cc() {
        this.b = "unknown";
        this.c = 5;
    }

    public boolean a(int i) {
        return this.c <= i;
    }

    public void a(String str, String str2) {
        a(2, str, str2);
    }

    public void a(String str, String str2, Throwable th) {
        a(2, str, str2, th);
    }

    public void b(String str, String str2) {
        a(3, str, str2);
    }

    public void b(String str, String str2, Throwable th) {
        a(3, str, str2, th);
    }

    public void c(String str, String str2) {
        a(4, str, str2);
    }

    public void d(String str, String str2) {
        a(5, str, str2);
    }

    public void c(String str, String str2, Throwable th) {
        a(5, str, str2, th);
    }

    public void e(String str, String str2) {
        a(6, str, str2);
    }

    public void d(String str, String str2, Throwable th) {
        a(6, str, str2, th);
    }

    public void f(String str, String str2) {
        a(6, str, str2);
    }

    public void e(String str, String str2, Throwable th) {
        a(6, str, str2, th);
    }

    private void a(int i, String str, String str2) {
        Log.println(i, a(str), str2);
    }

    private void a(int i, String str, String str2, Throwable th) {
        Log.println(i, a(str), cc.a(str2, th));
    }

    private String a(String str) {
        if (this.b != null) {
            return this.b + ":" + str;
        }
        return str;
    }

    private static String a(String str, Throwable th) {
        return str + '\n' + cc.a(th);
    }

    private static String a(Throwable th) {
        if (th == null) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        Writer stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
