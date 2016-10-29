package defpackage;

import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: qa */
final class qa extends s<StringBuffer> {
    qa() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (StringBuffer) obj);
    }

    public StringBuffer a(a aVar) throws IOException {
        if (aVar.f() != JsonToken.i) {
            return new StringBuffer(aVar.h());
        }
        aVar.j();
        return null;
    }

    public void a(c cVar, StringBuffer stringBuffer) throws IOException {
        cVar.b(stringBuffer == null ? null : stringBuffer.toString());
    }
}
