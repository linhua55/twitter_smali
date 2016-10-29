package defpackage;

/* compiled from: Twttr */
/* renamed from: cen */
public class cen {
    private final String a;
    private final String b;
    private final String c;
    private final String d;

    private cen(cep cep) {
        this.a = cep.a;
        this.b = cep.b;
        this.c = cep.c;
        this.d = cep.d;
    }

    public static cen a(String str, String str2, String str3, String str4) {
        return new cep().a(str).b(str2).c(str3).d(str4).a();
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }
}
