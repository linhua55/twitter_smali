package defpackage;

import com.google.gson.JsonIOException;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.net.URI;

/* compiled from: Twttr */
/* renamed from: qc */
final class qc extends s<URI> {
    qc() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (URI) obj);
    }

    public URI a(a aVar) throws IOException {
        URI uri = null;
        if (aVar.f() == JsonToken.i) {
            aVar.j();
        } else {
            try {
                String h = aVar.h();
                if (!"null".equals(h)) {
                    uri = new URI(h);
                }
            } catch (Throwable e) {
                throw new JsonIOException(e);
            }
        }
        return uri;
    }

    public void a(c cVar, URI uri) throws IOException {
        cVar.b(uri == null ? null : uri.toASCIIString());
    }
}
