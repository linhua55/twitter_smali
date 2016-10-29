package io.fabric.sdk.android.services.concurrency;

import io.fabric.sdk.android.services.concurrency.AsyncTask.Status;
import java.util.Collection;
import java.util.concurrent.ExecutorService;

/* compiled from: Twttr */
public abstract class l<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> implements j<u>, q, u {
    private final r a;

    public /* synthetic */ void c(Object obj) {
        a((u) obj);
    }

    public l() {
        this.a = new r();
    }

    public final void a(ExecutorService executorService, Params... paramsArr) {
        super.a(new m(executorService, this), (Object[]) paramsArr);
    }

    public int compareTo(Object obj) {
        return Priority.a(this, obj);
    }

    public void a(u uVar) {
        if (bp_() != Status.PENDING) {
            throw new IllegalStateException("Must not add Dependency after task is running");
        }
        ((j) ((q) g())).c(uVar);
    }

    public Collection<u> c() {
        return ((j) ((q) g())).c();
    }

    public boolean d() {
        return ((j) ((q) g())).d();
    }

    public Priority b() {
        return ((q) g()).b();
    }

    public void b(boolean z) {
        ((u) ((q) g())).b(z);
    }

    public boolean f() {
        return ((u) ((q) g())).f();
    }

    public void a(Throwable th) {
        ((u) ((q) g())).a(th);
    }

    public <T extends j<u> & q & u> T g() {
        return this.a;
    }
}
