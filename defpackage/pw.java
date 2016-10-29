package defpackage;

import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: pw */
final class pw extends s<String> {
    pw() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (String) obj);
    }

    public String a(a aVar) throws IOException {
        JsonToken f = aVar.f();
        if (f == JsonToken.i) {
            aVar.j();
            return null;
        } else if (f == JsonToken.h) {
            return Boolean.toString(aVar.i());
        } else {
            return aVar.h();
        }
    }

    public void a(c cVar, String str) throws IOException {
        cVar.b(str);
    }
}
