package defpackage;

import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: pu */
final class pu extends s<Number> {
    pu() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Number) obj);
    }

    public Number a(a aVar) throws IOException {
        JsonToken f = aVar.f();
        switch (qr.a[f.ordinal()]) {
            case p.View_android_focusable /*1*/:
                return new LazilyParsedNumber(aVar.h());
            case p.View_theme /*4*/:
                aVar.j();
                return null;
            default:
                throw new JsonSyntaxException("Expecting number, got: " + f);
        }
    }

    public void a(c cVar, Number number) throws IOException {
        cVar.a(number);
    }
}
