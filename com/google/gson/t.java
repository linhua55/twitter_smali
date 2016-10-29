package com.google.gson;

import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
class t extends s<T> {
    final /* synthetic */ s a;

    t(s sVar) {
        this.a = sVar;
    }

    public void write(c cVar, T t) throws IOException {
        if (t == null) {
            cVar.f();
        } else {
            this.a.write(cVar, t);
        }
    }

    public T read(a aVar) throws IOException {
        if (aVar.f() != JsonToken.NULL) {
            return this.a.read(aVar);
        }
        aVar.j();
        return null;
    }
}
