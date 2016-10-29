package defpackage;

/* compiled from: Twttr */
/* renamed from: m */
public class m {
    final /* synthetic */ h a;

    private m(h hVar) {
        this.a = hVar;
    }

    public h<TResult> a() {
        return this.a;
    }

    public boolean b() {
        boolean z = true;
        synchronized (this.a.d) {
            if (this.a.e) {
                z = false;
            } else {
                this.a.e = true;
                this.a.f = true;
                this.a.d.notifyAll();
                this.a.h();
            }
        }
        return z;
    }

    public boolean a(TResult tResult) {
        boolean z = true;
        synchronized (this.a.d) {
            if (this.a.e) {
                z = false;
            } else {
                this.a.e = true;
                this.a.g = tResult;
                this.a.d.notifyAll();
                this.a.h();
            }
        }
        return z;
    }

    public boolean a(Exception exception) {
        boolean z = true;
        synchronized (this.a.d) {
            if (this.a.e) {
                z = false;
            } else {
                this.a.e = true;
                this.a.h = exception;
                this.a.d.notifyAll();
                this.a.h();
            }
        }
        return z;
    }

    public void c() {
        if (!b()) {
            throw new IllegalStateException("Cannot cancel a completed task.");
        }
    }

    public void b(TResult tResult) {
        if (!a((Object) tResult)) {
            throw new IllegalStateException("Cannot set the result of a completed task.");
        }
    }

    public void b(Exception exception) {
        if (!a(exception)) {
            throw new IllegalStateException("Cannot set the error on a completed task.");
        }
    }
}
