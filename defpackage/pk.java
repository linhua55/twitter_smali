package defpackage;

import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.y;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: pk */
public final class pk<T> extends s<T> {
    private final y<T> a;
    private final Map<String, pl> b;

    private pk(y<T> yVar, Map<String, pl> map) {
        this.a = yVar;
        this.b = map;
    }

    public T read(a aVar) throws IOException {
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            return null;
        }
        T a = this.a.a();
        try {
            aVar.c();
            while (aVar.e()) {
                pl plVar = (pl) this.b.get(aVar.g());
                if (plVar == null || !plVar.i) {
                    aVar.n();
                } else {
                    plVar.a(aVar, (Object) a);
                }
            }
            aVar.d();
            return a;
        } catch (Throwable e) {
            throw new JsonSyntaxException(e);
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        }
    }

    public void write(c cVar, T t) throws IOException {
        if (t == null) {
            cVar.f();
            return;
        }
        cVar.d();
        try {
            for (pl plVar : this.b.values()) {
                if (plVar.a(t)) {
                    cVar.a(plVar.g);
                    plVar.a(cVar, (Object) t);
                }
            }
            cVar.e();
        } catch (IllegalAccessException e) {
            throw new AssertionError();
        }
    }
}
