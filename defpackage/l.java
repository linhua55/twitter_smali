package defpackage;

/* compiled from: Twttr */
/* renamed from: l */
final class l implements Runnable {
    final /* synthetic */ g a;
    final /* synthetic */ h b;
    final /* synthetic */ m c;

    l(g gVar, h hVar, m mVar) {
        this.a = gVar;
        this.b = hVar;
        this.c = mVar;
    }

    public void run() {
        try {
            this.c.b(this.a.a(this.b));
        } catch (Exception e) {
            this.c.b(e);
        }
    }
}
