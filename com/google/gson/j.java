package com.google.gson;

import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
class j<T> extends s<T> {
    private s<T> a;

    j() {
    }

    public void a(s<T> sVar) {
        if (this.a != null) {
            throw new AssertionError();
        }
        this.a = sVar;
    }

    public T read(a aVar) throws IOException {
        if (this.a != null) {
            return this.a.read(aVar);
        }
        throw new IllegalStateException();
    }

    public void write(c cVar, T t) throws IOException {
        if (this.a == null) {
            throw new IllegalStateException();
        }
        this.a.write(cVar, t);
    }
}
