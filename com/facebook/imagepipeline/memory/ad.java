package com.facebook.imagepipeline.memory;

import defpackage.ca;
import java.io.OutputStream;

/* compiled from: Twttr */
public abstract class ad extends OutputStream {
    public abstract int b();

    public abstract PooledByteBuffer c();

    public void close() {
        try {
            super.close();
        } catch (Throwable e) {
            ca.b(e);
        }
    }
}
