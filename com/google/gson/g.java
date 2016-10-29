package com.google.gson;

import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
class g extends s<Number> {
    final /* synthetic */ d a;

    g(d dVar) {
        this.a = dVar;
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Number) obj);
    }

    public Double a(a aVar) throws IOException {
        if (aVar.f() != JsonToken.NULL) {
            return Double.valueOf(aVar.k());
        }
        aVar.j();
        return null;
    }

    public void a(c cVar, Number number) throws IOException {
        if (number == null) {
            cVar.f();
            return;
        }
        this.a.a((double) number.floatValue());
        cVar.a(number);
    }
}
