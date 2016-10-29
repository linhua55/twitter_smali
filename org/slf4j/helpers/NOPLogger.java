package org.slf4j.helpers;

/* compiled from: Twttr */
public class NOPLogger extends MarkerIgnoringBase {
    public static final NOPLogger a;
    private static final long serialVersionUID = -517220405410904473L;

    static {
        a = new NOPLogger();
    }

    protected NOPLogger() {
    }

    public String a() {
        return "NOP";
    }

    public final void a(String str, Object... objArr) {
    }

    public final void b(String str, Object... objArr) {
    }

    public final void a(String str, Throwable th) {
    }

    public final void c(String str, Object... objArr) {
    }

    public final void a(String str, Object obj, Object obj2) {
    }

    public final void d(String str, Object... objArr) {
    }

    public final void b(String str, Throwable th) {
    }

    public final void b(String str, Object obj, Object obj2) {
    }

    public final void e(String str, Object... objArr) {
    }
}
