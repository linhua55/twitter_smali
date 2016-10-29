package defpackage;

import com.google.gson.JsonSyntaxException;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: pv */
final class pv extends s<Character> {
    pv() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Character) obj);
    }

    public Character a(a aVar) throws IOException {
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            return null;
        }
        String h = aVar.h();
        if (h.length() == 1) {
            return Character.valueOf(h.charAt(0));
        }
        throw new JsonSyntaxException("Expecting character, got: " + h);
    }

    public void a(c cVar, Character ch) throws IOException {
        cVar.b(ch == null ? null : String.valueOf(ch));
    }
}
