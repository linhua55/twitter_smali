package defpackage;

import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.net.URL;

/* compiled from: Twttr */
/* renamed from: qb */
final class qb extends s<URL> {
    qb() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (URL) obj);
    }

    public URL a(a aVar) throws IOException {
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            return null;
        }
        String h = aVar.h();
        if ("null".equals(h)) {
            return null;
        }
        return new URL(h);
    }

    public void a(c cVar, URL url) throws IOException {
        cVar.b(url == null ? null : url.toExternalForm());
    }
}
