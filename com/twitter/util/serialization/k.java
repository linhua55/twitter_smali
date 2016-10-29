package com.twitter.util.serialization;

import com.twitter.config.AppConfig;
import defpackage.cwj;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class k<T> extends n<T> {
    private final int a;

    protected abstract void a(q qVar, T t) throws IOException;

    protected abstract T b(p pVar, int i) throws IOException, ClassNotFoundException;

    protected k() {
        this.a = 0;
    }

    protected k(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("The version number is negative: " + i + ".");
        }
        this.a = i;
    }

    public final void b(q qVar, T t) throws IOException {
        if (!m.a(qVar, (Object) t)) {
            if (a()) {
                qVar.b(this.a, getClass().getSimpleName());
            } else {
                qVar.d(this.a);
            }
            a(qVar, t);
            qVar.f();
        }
    }

    public final T a(p pVar) throws IOException, ClassNotFoundException {
        if (m.a(pVar)) {
            return null;
        }
        int k = pVar.k();
        if (k > this.a) {
            throw new SerializationException("Version number found (" + k + ") is " + "greater than the maximum supported value (" + this.a + ")");
        }
        T b = b(pVar, k);
        pVar.m();
        return b;
    }

    private static boolean a() {
        return cwj.a() || AppConfig.m().a();
    }
}
