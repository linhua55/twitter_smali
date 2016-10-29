package com.twitter.database.model;

import java.io.Closeable;

/* compiled from: Twttr */
public abstract class j<G> implements Closeable {
    public final G a;

    public abstract int a();

    public abstract boolean a(int i);

    public abstract boolean b();

    public abstract boolean c();

    public abstract void close();

    public abstract boolean d();

    protected j(G g) {
        this.a = g;
    }
}
