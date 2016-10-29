package com.google.gson;

import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
class h extends s<Number> {
    final /* synthetic */ d a;

    h(d dVar) {
        this.a = dVar;
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Number) obj);
    }

    public Float a(a aVar) throws IOException {
        if (aVar.f() != JsonToken.NULL) {
            return Float.valueOf((float) aVar.k());
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
