package defpackage;

import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.util.UUID;

/* compiled from: Twttr */
/* renamed from: qf */
final class qf extends s<UUID> {
    qf() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (UUID) obj);
    }

    public UUID a(a aVar) throws IOException {
        if (aVar.f() != JsonToken.i) {
            return UUID.fromString(aVar.h());
        }
        aVar.j();
        return null;
    }

    public void a(c cVar, UUID uuid) throws IOException {
        cVar.b(uuid == null ? null : uuid.toString());
    }
}
