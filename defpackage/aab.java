package defpackage;

/* compiled from: Twttr */
/* renamed from: aab */
class aab implements Runnable {
    final /* synthetic */ zv a;

    aab(zv zvVar) {
        this.a = zvVar;
    }

    public void run() {
        this.a.a.finish();
        this.a.a.overridePendingTransition(0, 0);
        this.a.c();
    }
}
