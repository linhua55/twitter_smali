package defpackage;

import com.google.gson.JsonSyntaxException;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.math.BigDecimal;

/* compiled from: Twttr */
/* renamed from: px */
final class px extends s<BigDecimal> {
    px() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (BigDecimal) obj);
    }

    public BigDecimal a(a aVar) throws IOException {
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            return null;
        }
        try {
            return new BigDecimal(aVar.h());
        } catch (Throwable e) {
            throw new JsonSyntaxException(e);
        }
    }

    public void a(c cVar, BigDecimal bigDecimal) throws IOException {
        cVar.a(bigDecimal);
    }
}
