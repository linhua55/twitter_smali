package defpackage;

import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.net.InetAddress;

/* compiled from: Twttr */
/* renamed from: qe */
final class qe extends s<InetAddress> {
    qe() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (InetAddress) obj);
    }

    public InetAddress a(a aVar) throws IOException {
        if (aVar.f() != JsonToken.i) {
            return InetAddress.getByName(aVar.h());
        }
        aVar.j();
        return null;
    }

    public void a(c cVar, InetAddress inetAddress) throws IOException {
        cVar.b(inetAddress == null ? null : inetAddress.getHostAddress());
    }
}
