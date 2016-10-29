package defpackage;

import com.google.gson.JsonSyntaxException;
import com.google.gson.d;
import com.google.gson.internal.aa;
import com.google.gson.internal.q;
import com.google.gson.internal.y;
import com.google.gson.n;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
/* renamed from: pe */
final class pe<K, V> extends s<Map<K, V>> {
    final /* synthetic */ pd a;
    private final s<K> b;
    private final s<V> c;
    private final y<? extends Map<K, V>> d;

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Map) obj);
    }

    public pe(pd pdVar, d dVar, Type type, s<K> sVar, Type type2, s<V> sVar2, y<? extends Map<K, V>> yVar) {
        this.a = pdVar;
        this.b = new pq(dVar, sVar, type);
        this.c = new pq(dVar, sVar2, type2);
        this.d = yVar;
    }

    public Map<K, V> a(a aVar) throws IOException {
        JsonToken f = aVar.f();
        if (f == JsonToken.i) {
            aVar.j();
            return null;
        }
        Map<K, V> map = (Map) this.d.a();
        Object read;
        if (f == JsonToken.a) {
            aVar.a();
            while (aVar.e()) {
                aVar.a();
                read = this.b.read(aVar);
                if (map.put(read, this.c.read(aVar)) != null) {
                    throw new JsonSyntaxException("duplicate key: " + read);
                }
                aVar.b();
            }
            aVar.b();
            return map;
        }
        aVar.c();
        while (aVar.e()) {
            q.a.a(aVar);
            read = this.b.read(aVar);
            if (map.put(read, this.c.read(aVar)) != null) {
                throw new JsonSyntaxException("duplicate key: " + read);
            }
        }
        aVar.d();
        return map;
    }

    public void a(c cVar, Map<K, V> map) throws IOException {
        int i = 0;
        if (map == null) {
            cVar.f();
        } else if (this.a.b) {
            List arrayList = new ArrayList(map.size());
            List arrayList2 = new ArrayList(map.size());
            int i2 = 0;
            for (Entry entry : map.entrySet()) {
                int i3;
                n toJsonTree = this.b.toJsonTree(entry.getKey());
                arrayList.add(toJsonTree);
                arrayList2.add(entry.getValue());
                if (toJsonTree.g() || toJsonTree.h()) {
                    i3 = 1;
                } else {
                    i3 = 0;
                }
                i2 = i3 | i2;
            }
            if (i2 != 0) {
                cVar.b();
                while (i < arrayList.size()) {
                    cVar.b();
                    aa.a((n) arrayList.get(i), cVar);
                    this.c.write(cVar, arrayList2.get(i));
                    cVar.c();
                    i++;
                }
                cVar.c();
                return;
            }
            cVar.d();
            while (i < arrayList.size()) {
                cVar.a(a((n) arrayList.get(i)));
                this.c.write(cVar, arrayList2.get(i));
                i++;
            }
            cVar.e();
        } else {
            cVar.d();
            for (Entry entry2 : map.entrySet()) {
                cVar.a(String.valueOf(entry2.getKey()));
                this.c.write(cVar, entry2.getValue());
            }
            cVar.e();
        }
    }

    private String a(n nVar) {
        if (nVar.i()) {
            com.google.gson.q m = nVar.m();
            if (m.p()) {
                return String.valueOf(m.a());
            }
            if (m.o()) {
                return Boolean.toString(m.f());
            }
            if (m.q()) {
                return m.b();
            }
            throw new AssertionError();
        } else if (nVar.j()) {
            return "null";
        } else {
            throw new AssertionError();
        }
    }
}
