package defpackage;

/* compiled from: Twttr */
/* renamed from: adp */
public class adp implements adt {
    final /* synthetic */ adn a;
    private final String b;

    public adp(adn adn, String str) {
        this.a = adn;
        this.b = str;
    }

    public void a(long j) {
        this.a.a(j, "moments:modern_guide:%s:moment:follow", this.b);
    }

    public void b(long j) {
        this.a.a(j, "moments:modern_guide:%s:moment:unfollow", this.b);
    }

    public void c(long j) {
        a(j, "moments:modern_guide:%s:moment:click");
    }

    public void d(long j) {
        a(j, "moments:modern_guide:%s:moment:impression");
    }

    private void a(long j, String str) {
        this.a.h.b(new adq(this, j, str));
    }
}
