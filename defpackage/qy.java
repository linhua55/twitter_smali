package defpackage;

import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import op;

/* compiled from: Twttr */
/* renamed from: qy */
final class qy<T extends Enum<T>> extends s<T> {
    private final Map<String, T> a;
    private final Map<T, String> b;

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Enum) obj);
    }

    public qy(Class<T> cls) {
        this.a = new HashMap();
        this.b = new HashMap();
        try {
            for (Enum enumR : (Enum[]) cls.getEnumConstants()) {
                Object a;
                String name = enumR.name();
                op opVar = (op) cls.getField(name).getAnnotation(op.class);
                if (opVar != null) {
                    a = opVar.a();
                } else {
                    String str = name;
                }
                this.a.put(a, enumR);
                this.b.put(enumR, a);
            }
        } catch (NoSuchFieldException e) {
            throw new AssertionError();
        }
    }

    public T a(a aVar) throws IOException {
        if (aVar.f() != JsonToken.i) {
            return (Enum) this.a.get(aVar.h());
        }
        aVar.j();
        return null;
    }

    public void a(c cVar, T t) throws IOException {
        cVar.b(t == null ? null : (String) this.b.get(t));
    }
}
