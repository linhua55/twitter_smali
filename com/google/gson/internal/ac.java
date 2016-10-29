package com.google.gson.internal;

import java.io.IOException;
import java.io.Writer;

/* compiled from: Twttr */
final class ac extends Writer {
    private final Appendable a;
    private final ad b;

    private ac(Appendable appendable) {
        this.b = new ad();
        this.a = appendable;
    }

    public void write(char[] cArr, int i, int i2) throws IOException {
        this.b.a = cArr;
        this.a.append(this.b, i, i + i2);
    }

    public void write(int i) throws IOException {
        this.a.append((char) i);
    }

    public void flush() {
    }

    public void close() {
    }
}
