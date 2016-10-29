package io.fabric.sdk.android.services.network;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class e<V> extends h<V> {
    private final Closeable a;
    private final boolean b;

    protected e(Closeable closeable, boolean z) {
        this.a = closeable;
        this.b = z;
    }

    protected void c() throws IOException {
        if (this.a instanceof Flushable) {
            ((Flushable) this.a).flush();
        }
        if (this.b) {
            try {
                this.a.close();
                return;
            } catch (IOException e) {
                return;
            }
        }
        this.a.close();
    }
}
