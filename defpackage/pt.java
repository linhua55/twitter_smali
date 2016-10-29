package defpackage;

import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: pt */
final class pt extends s<Number> {
    pt() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Number) obj);
    }

    public Number a(a aVar) throws IOException {
        if (aVar.f() != JsonToken.i) {
            return Double.valueOf(aVar.k());
        }
        aVar.j();
        return null;
    }

    public void a(c cVar, Number number) throws IOException {
        cVar.a(number);
    }
}
