package defpackage;

/* compiled from: Twttr */
/* renamed from: bf */
class bf implements Runnable {
    final /* synthetic */ bd a;

    private bf(bd bdVar) {
        this.a = bdVar;
    }

    public void run() {
        try {
            Runnable runnable = (Runnable) this.a.e.poll();
            if (runnable != null) {
                runnable.run();
            } else {
                cb.a(bd.a, "%s: Worker has nothing to run", this.a.b);
            }
            int decrementAndGet = this.a.g.decrementAndGet();
            if (this.a.e.isEmpty()) {
                cb.a(bd.a, "%s: worker finished; %d workers left", this.a.b, Integer.valueOf(decrementAndGet));
            } else {
                this.a.b();
            }
        } catch (Throwable th) {
            int decrementAndGet2 = this.a.g.decrementAndGet();
            if (this.a.e.isEmpty()) {
                cb.a(bd.a, "%s: worker finished; %d workers left", this.a.b, Integer.valueOf(decrementAndGet2));
            } else {
                this.a.b();
            }
        }
    }
}
