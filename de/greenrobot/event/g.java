package de.greenrobot.event;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: Twttr */
public class g {
    private static final ExecutorService i;
    boolean a;
    boolean b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    ExecutorService g;
    List<Class<?>> h;

    static {
        i = Executors.newCachedThreadPool();
    }

    g() {
        this.a = true;
        this.b = true;
        this.c = true;
        this.d = true;
        this.f = true;
        this.g = i;
    }

    public g a(boolean z) {
        this.e = z;
        return this;
    }

    public c a() {
        return new c(this);
    }
}
