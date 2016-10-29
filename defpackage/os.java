package defpackage;

import com.google.gson.d;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import com.google.gson.u;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: os */
public final class os<E> extends s<Object> {
    public static final u a;
    private final Class<E> b;
    private final s<E> c;

    static {
        a = new ot();
    }

    public os(d dVar, s<E> sVar, Class<E> cls) {
        this.c = new pq(dVar, sVar, cls);
        this.b = cls;
    }

    public Object read(a aVar) throws IOException {
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            return null;
        }
        List arrayList = new ArrayList();
        aVar.a();
        while (aVar.e()) {
            arrayList.add(this.c.read(aVar));
        }
        aVar.b();
        Object newInstance = Array.newInstance(this.b, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }

    public void write(c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.f();
            return;
        }
        cVar.b();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.c.write(cVar, Array.get(obj, i));
        }
        cVar.c();
    }
}
