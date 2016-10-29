package defpackage;

import com.google.gson.JsonSyntaxException;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: qw */
final class qw extends s<Number> {
    qw() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Number) obj);
    }

    public Number a(a aVar) throws IOException {
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            return null;
        }
        try {
            return Long.valueOf(aVar.l());
        } catch (Throwable e) {
            throw new JsonSyntaxException(e);
        }
    }

    public void a(c cVar, Number number) throws IOException {
        cVar.a(number);
    }
}
