package defpackage;

/* compiled from: Twttr */
/* renamed from: asa */
public class asa extends arj {
    public static asa a(String str, aru aru, arp arp) {
        return asa.a(str, aru, 0, arp, arj.a("TimingMetric", str));
    }

    public static asa a(String str, aru aru, long j, arp arp) {
        return asa.a(str, aru, j, arp, arj.a("TimingMetric", str));
    }

    public static asa a(String str, aru aru, long j, arp arp, String str2) {
        arj a = aru.a(str2);
        if (a == null) {
            a = aru.d(new asa(str, arp, str2, aru));
            a.b(j);
        }
        return (asa) a;
    }

    public asa(String str, arp arp, String str2, arq arq) {
        super(str, arp, str2, arq);
    }

    protected void b() {
        this.u = z();
        b(false);
    }

    protected void c() {
        this.t = z() - this.u;
        b(true);
        o();
        n();
    }

    protected void e() {
        n();
    }
}
