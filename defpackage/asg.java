package defpackage;

/* compiled from: Twttr */
/* renamed from: asg */
class asg implements Runnable {
    final /* synthetic */ ase a;

    asg(ase ase) {
        this.a = ase;
    }

    public void run() {
        if (this.a.c != null) {
            this.a.c.removeFrameCallback(this.a);
        }
        this.a.d = false;
    }
}
