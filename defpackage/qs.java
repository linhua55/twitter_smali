package defpackage;

import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: qs */
final class qs extends s<Boolean> {
    qs() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Boolean) obj);
    }

    public Boolean a(a aVar) throws IOException {
        if (aVar.f() != JsonToken.i) {
            return Boolean.valueOf(aVar.h());
        }
        aVar.j();
        return null;
    }

    public void a(c cVar, Boolean bool) throws IOException {
        cVar.b(bool == null ? "null" : bool.toString());
    }
}
