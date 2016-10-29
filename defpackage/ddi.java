package defpackage;

/* compiled from: Twttr */
/* renamed from: ddi */
final class ddi extends ddj {
    ddi() {
    }

    protected void a(String str, String str2) {
        System.out.printf(str + "/V: %s\n", new Object[]{str2});
    }

    protected void b(String str, String str2) {
        System.out.printf(str + "/E: %s\n", new Object[]{str2});
    }

    protected void a(String str, String str2, Throwable th) {
        System.out.printf(str + "/E: %s\n%s\n", new Object[]{str2, th});
    }

    protected void c(String str, String str2) {
        System.out.printf(str + "/W: %s\n", new Object[]{str2});
    }

    protected void b(String str, String str2, Throwable th) {
        a(str, str2, th);
    }

    protected void d(String str, String str2) {
        System.out.printf(str + "/S: %s\n", new Object[]{str2});
    }

    protected void c(String str, String str2, Throwable th) {
        System.out.printf(str + "/S: %s\n%s\n", new Object[]{str2, th});
    }
}
