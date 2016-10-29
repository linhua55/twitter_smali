package defpackage;

import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: pz */
final class pz extends s<StringBuilder> {
    pz() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (StringBuilder) obj);
    }

    public StringBuilder a(a aVar) throws IOException {
        if (aVar.f() != JsonToken.i) {
            return new StringBuilder(aVar.h());
        }
        aVar.j();
        return null;
    }

    public void a(c cVar, StringBuilder stringBuilder) throws IOException {
        cVar.b(stringBuilder == null ? null : stringBuilder.toString());
    }
}
