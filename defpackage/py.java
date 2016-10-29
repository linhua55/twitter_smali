package defpackage;

import com.google.gson.JsonSyntaxException;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.math.BigInteger;

/* compiled from: Twttr */
/* renamed from: py */
final class py extends s<BigInteger> {
    py() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (BigInteger) obj);
    }

    public BigInteger a(a aVar) throws IOException {
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            return null;
        }
        try {
            return new BigInteger(aVar.h());
        } catch (Throwable e) {
            throw new JsonSyntaxException(e);
        }
    }

    public void a(c cVar, BigInteger bigInteger) throws IOException {
        cVar.a(bigInteger);
    }
}
