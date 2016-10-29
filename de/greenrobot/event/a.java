package de.greenrobot.event;

/* compiled from: Twttr */
class a implements Runnable {
    private final k a;
    private final c b;

    a(c cVar) {
        this.b = cVar;
        this.a = new k();
    }

    public void a(o oVar, Object obj) {
        this.a.a(j.a(oVar, obj));
        this.b.c().execute(this);
    }

    public void run() {
        j a = this.a.a();
        if (a == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.b.a(a);
    }
}
