package defpackage;

import com.google.gson.d;
import com.google.gson.s;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* compiled from: Twttr */
/* renamed from: pq */
final class pq<T> extends s<T> {
    private final d a;
    private final s<T> b;
    private final Type c;

    pq(d dVar, s<T> sVar, Type type) {
        this.a = dVar;
        this.b = sVar;
        this.c = type;
    }

    public T read(a aVar) throws IOException {
        return this.b.read(aVar);
    }

    public void write(c cVar, T t) throws IOException {
        s sVar = this.b;
        Type a = a(this.c, t);
        if (a != this.c) {
            sVar = this.a.a(qz.a(a));
            if ((sVar instanceof pk) && !(this.b instanceof pk)) {
                sVar = this.b;
            }
        }
        sVar.write(cVar, t);
    }

    private Type a(Type type, Object obj) {
        if (obj == null) {
            return type;
        }
        if (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) {
            return obj.getClass();
        }
        return type;
    }
}
