package com.twitter.util.serialization;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.util.collection.z;
import com.twitter.util.object.e;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class p extends r {
    public abstract byte c() throws IOException;

    public abstract boolean d() throws IOException;

    public abstract int e() throws IOException;

    public abstract long f() throws IOException;

    public abstract float g() throws IOException;

    public abstract double h() throws IOException;

    public abstract String i() throws IOException;

    public abstract byte[] j() throws IOException;

    public abstract void n() throws IOException;

    public final String p() throws IOException {
        return (String) e.a(i());
    }

    public final byte[] q() throws IOException {
        return (byte[]) e.a(j());
    }

    public final <T> T a(n<T> nVar) throws IOException, ClassNotFoundException {
        return nVar.a(this);
    }

    public final <T> T b(n<T> nVar) throws IOException, ClassNotFoundException {
        return e.a(a(nVar));
    }

    public int k() throws IOException {
        return 0;
    }

    public z<Integer, String> l() throws IOException {
        return z.a(Integer.valueOf(k()), BuildConfig.VERSION_NAME);
    }

    public void m() throws IOException {
    }

    public byte o() {
        return (byte) 0;
    }

    public int b() {
        throw new UnsupportedOperationException();
    }
}
