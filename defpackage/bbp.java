package defpackage;

/* compiled from: Twttr */
/* renamed from: bbp */
class bbp implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ bbo b;

    bbp(bbo bbo, String str) {
        this.b = bbo;
        this.a = str;
    }

    public void run() {
        this.b.a(this.a);
    }
}
