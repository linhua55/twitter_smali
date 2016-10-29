package defpackage;

import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: qo */
final class qo extends s<Boolean> {
    qo() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Boolean) obj);
    }

    public Boolean a(a aVar) throws IOException {
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            return null;
        } else if (aVar.f() == JsonToken.f) {
            return Boolean.valueOf(Boolean.parseBoolean(aVar.h()));
        } else {
            return Boolean.valueOf(aVar.i());
        }
    }

    public void a(c cVar, Boolean bool) throws IOException {
        if (bool == null) {
            cVar.f();
        } else {
            cVar.a(bool.booleanValue());
        }
    }
}
