package defpackage;

import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.util.Locale;
import java.util.StringTokenizer;

/* compiled from: Twttr */
/* renamed from: qj */
final class qj extends s<Locale> {
    qj() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Locale) obj);
    }

    public Locale a(a aVar) throws IOException {
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            return null;
        }
        String nextToken;
        String nextToken2;
        String nextToken3;
        StringTokenizer stringTokenizer = new StringTokenizer(aVar.h(), "_");
        if (stringTokenizer.hasMoreElements()) {
            nextToken = stringTokenizer.nextToken();
        } else {
            nextToken = null;
        }
        if (stringTokenizer.hasMoreElements()) {
            nextToken2 = stringTokenizer.nextToken();
        } else {
            nextToken2 = null;
        }
        if (stringTokenizer.hasMoreElements()) {
            nextToken3 = stringTokenizer.nextToken();
        } else {
            nextToken3 = null;
        }
        if (nextToken2 == null && nextToken3 == null) {
            return new Locale(nextToken);
        }
        if (nextToken3 == null) {
            return new Locale(nextToken, nextToken2);
        }
        return new Locale(nextToken, nextToken2, nextToken3);
    }

    public void a(c cVar, Locale locale) throws IOException {
        cVar.b(locale == null ? null : locale.toString());
    }
}
