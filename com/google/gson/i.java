package com.google.gson;

import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
class i extends s<Number> {
    final /* synthetic */ d a;

    i(d dVar) {
        this.a = dVar;
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Number) obj);
    }

    public Number a(a aVar) throws IOException {
        if (aVar.f() != JsonToken.NULL) {
            return Long.valueOf(aVar.l());
        }
        aVar.j();
        return null;
    }

    public void a(c cVar, Number number) throws IOException {
        if (number == null) {
            cVar.f();
        } else {
            cVar.b(number.toString());
        }
    }
}
