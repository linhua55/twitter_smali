package defpackage;

import com.google.gson.d;
import com.google.gson.internal.y;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;

/* compiled from: Twttr */
/* renamed from: ov */
final class ov<E> extends s<Collection<E>> {
    private final s<E> a;
    private final y<? extends Collection<E>> b;

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Collection) obj);
    }

    public ov(d dVar, Type type, s<E> sVar, y<? extends Collection<E>> yVar) {
        this.a = new pq(dVar, sVar, type);
        this.b = yVar;
    }

    public Collection<E> a(a aVar) throws IOException {
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            return null;
        }
        Collection<E> collection = (Collection) this.b.a();
        aVar.a();
        while (aVar.e()) {
            collection.add(this.a.read(aVar));
        }
        aVar.b();
        return collection;
    }

    public void a(c cVar, Collection<E> collection) throws IOException {
        if (collection == null) {
            cVar.f();
            return;
        }
        cVar.b();
        for (E write : collection) {
            this.a.write(cVar, write);
        }
        cVar.c();
    }
}
