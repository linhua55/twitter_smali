package com.twitter.util.serialization;

import com.twitter.util.object.ObjectUtils;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class q<S extends q> extends r {
    public abstract S b(byte b) throws IOException;

    public abstract S b(double d) throws IOException;

    public abstract S b(float f) throws IOException;

    public abstract S b(long j) throws IOException;

    public abstract S b(String str) throws IOException;

    public abstract S b(boolean z) throws IOException;

    public abstract S b(byte[] bArr) throws IOException;

    public abstract S d(int i) throws IOException;

    public abstract S e(int i) throws IOException;

    public abstract S f() throws IOException;

    public abstract S g() throws IOException;

    public final <T> S a(T t, n<T> nVar) throws IOException {
        nVar.b(this, t);
        return (q) ObjectUtils.a((Object) this);
    }

    public S b(int i, String str) throws IOException {
        return d(i);
    }
}
