package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* compiled from: Twttr */
/* renamed from: fe */
public class fe implements ff {
    private final Executor a;
    private final Executor b;
    private final Executor c;
    private final Executor d;

    public fe(int i) {
        ThreadFactory fqVar = new fq(10);
        this.a = Executors.newFixedThreadPool(2);
        this.b = Executors.newFixedThreadPool(i, fqVar);
        this.c = Executors.newFixedThreadPool(i, fqVar);
        this.d = Executors.newFixedThreadPool(1, fqVar);
    }

    public Executor a() {
        return this.a;
    }

    public Executor b() {
        return this.a;
    }

    public Executor c() {
        return this.b;
    }

    public Executor d() {
        return this.c;
    }

    public Executor e() {
        return this.d;
    }
}
