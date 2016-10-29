package com.google.gson;

import com.google.gson.internal.aa;
import com.google.gson.internal.b;
import com.google.gson.internal.o;
import com.google.gson.internal.z;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import os;
import ou;
import ow;
import oy;
import pd;
import pf;
import pi;
import pm;
import po;
import pr;
import qz;

/* compiled from: Twttr */
public final class d {
    final m a;
    final r b;
    private final ThreadLocal<Map<qz<?>, j<?>>> c;
    private final Map<qz<?>, s<?>> d;
    private final List<u> e;
    private final b f;
    private final boolean g;
    private final boolean h;
    private final boolean i;
    private final boolean j;

    public d() {
        this(o.a, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, LongSerializationPolicy.DEFAULT, Collections.emptyList());
    }

    d(o oVar, c cVar, Map<Type, k<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, LongSerializationPolicy longSerializationPolicy, List<u> list) {
        this.c = new ThreadLocal();
        this.d = Collections.synchronizedMap(new HashMap());
        this.a = new e(this);
        this.b = new f(this);
        this.f = new b(map);
        this.g = z;
        this.i = z3;
        this.h = z4;
        this.j = z5;
        List arrayList = new ArrayList();
        arrayList.add(pr.Q);
        arrayList.add(pf.a);
        arrayList.add(oVar);
        arrayList.addAll(list);
        arrayList.add(pr.x);
        arrayList.add(pr.m);
        arrayList.add(pr.g);
        arrayList.add(pr.i);
        arrayList.add(pr.k);
        arrayList.add(pr.a(Long.TYPE, Long.class, a(longSerializationPolicy)));
        arrayList.add(pr.a(Double.TYPE, Double.class, a(z6)));
        arrayList.add(pr.a(Float.TYPE, Float.class, b(z6)));
        arrayList.add(pr.r);
        arrayList.add(pr.t);
        arrayList.add(pr.z);
        arrayList.add(pr.B);
        arrayList.add(pr.a(BigDecimal.class, pr.v));
        arrayList.add(pr.a(BigInteger.class, pr.w));
        arrayList.add(pr.D);
        arrayList.add(pr.F);
        arrayList.add(pr.J);
        arrayList.add(pr.O);
        arrayList.add(pr.H);
        arrayList.add(pr.d);
        arrayList.add(ow.a);
        arrayList.add(pr.M);
        arrayList.add(po.a);
        arrayList.add(pm.a);
        arrayList.add(pr.K);
        arrayList.add(os.a);
        arrayList.add(pr.b);
        arrayList.add(new ou(this.f));
        arrayList.add(new pd(this.f, z2));
        arrayList.add(new oy(this.f));
        arrayList.add(pr.R);
        arrayList.add(new pi(this.f, cVar, oVar));
        this.e = Collections.unmodifiableList(arrayList);
    }

    private s<Number> a(boolean z) {
        if (z) {
            return pr.p;
        }
        return new g(this);
    }

    private s<Number> b(boolean z) {
        if (z) {
            return pr.o;
        }
        return new h(this);
    }

    private void a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this" + " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private s<Number> a(LongSerializationPolicy longSerializationPolicy) {
        if (longSerializationPolicy == LongSerializationPolicy.DEFAULT) {
            return pr.n;
        }
        return new i(this);
    }

    public <T> s<T> a(qz<T> qzVar) {
        s<T> sVar = (s) this.d.get(qzVar);
        if (sVar == null) {
            Map map;
            Map map2 = (Map) this.c.get();
            Object obj = null;
            if (map2 == null) {
                HashMap hashMap = new HashMap();
                this.c.set(hashMap);
                map = hashMap;
                obj = 1;
            } else {
                map = map2;
            }
            j jVar = (j) map.get(qzVar);
            if (jVar == null) {
                try {
                    j jVar2 = new j();
                    map.put(qzVar, jVar2);
                    for (u create : this.e) {
                        sVar = create.create(this, qzVar);
                        if (sVar != null) {
                            jVar2.a(sVar);
                            this.d.put(qzVar, sVar);
                            map.remove(qzVar);
                            if (obj != null) {
                                this.c.remove();
                            }
                        }
                    }
                    throw new IllegalArgumentException("GSON cannot handle " + qzVar);
                } catch (Throwable th) {
                    map.remove(qzVar);
                    if (obj != null) {
                        this.c.remove();
                    }
                }
            }
        }
        return sVar;
    }

    public <T> s<T> a(u uVar, qz<T> qzVar) {
        Object obj = null;
        if (!this.e.contains(uVar)) {
            obj = 1;
        }
        Object obj2 = obj;
        for (u uVar2 : this.e) {
            if (obj2 != null) {
                s<T> create = uVar2.create(this, qzVar);
                if (create != null) {
                    return create;
                }
            } else if (uVar2 == uVar) {
                obj2 = 1;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + qzVar);
    }

    public <T> s<T> a(Class<T> cls) {
        return a(qz.b(cls));
    }

    public String a(Object obj) {
        if (obj == null) {
            return a(o.a);
        }
        return a(obj, obj.getClass());
    }

    public String a(Object obj, Type type) {
        Appendable stringWriter = new StringWriter();
        a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public void a(Object obj, Type type, Appendable appendable) throws JsonIOException {
        try {
            a(obj, type, a(aa.a(appendable)));
        } catch (Throwable e) {
            throw new JsonIOException(e);
        }
    }

    public void a(Object obj, Type type, c cVar) throws JsonIOException {
        s a = a(qz.a(type));
        boolean g = cVar.g();
        cVar.b(true);
        boolean h = cVar.h();
        cVar.c(this.h);
        boolean i = cVar.i();
        cVar.d(this.g);
        try {
            a.write(cVar, obj);
            cVar.b(g);
            cVar.c(h);
            cVar.d(i);
        } catch (Throwable e) {
            throw new JsonIOException(e);
        } catch (Throwable th) {
            cVar.b(g);
            cVar.c(h);
            cVar.d(i);
        }
    }

    public String a(n nVar) {
        Appendable stringWriter = new StringWriter();
        a(nVar, stringWriter);
        return stringWriter.toString();
    }

    public void a(n nVar, Appendable appendable) throws JsonIOException {
        try {
            a(nVar, a(aa.a(appendable)));
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    private c a(Writer writer) throws IOException {
        if (this.i) {
            writer.write(")]}'\n");
        }
        c cVar = new c(writer);
        if (this.j) {
            cVar.c("  ");
        }
        cVar.d(this.g);
        return cVar;
    }

    public void a(n nVar, c cVar) throws JsonIOException {
        boolean g = cVar.g();
        cVar.b(true);
        boolean h = cVar.h();
        cVar.c(this.h);
        boolean i = cVar.i();
        cVar.d(this.g);
        try {
            aa.a(nVar, cVar);
            cVar.b(g);
            cVar.c(h);
            cVar.d(i);
        } catch (Throwable e) {
            throw new JsonIOException(e);
        } catch (Throwable th) {
            cVar.b(g);
            cVar.c(h);
            cVar.d(i);
        }
    }

    public <T> T a(String str, Class<T> cls) throws JsonSyntaxException {
        return z.a((Class) cls).cast(a(str, (Type) cls));
    }

    public <T> T a(String str, Type type) throws JsonSyntaxException {
        if (str == null) {
            return null;
        }
        return a(new StringReader(str), type);
    }

    public <T> T a(Reader reader, Type type) throws JsonIOException, JsonSyntaxException {
        a aVar = new a(reader);
        Object a = a(aVar, type);
        a(a, aVar);
        return a;
    }

    private static void a(Object obj, a aVar) {
        if (obj != null) {
            try {
                if (aVar.f() != JsonToken.END_DOCUMENT) {
                    throw new JsonIOException("JSON document was not fully consumed.");
                }
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            } catch (Throwable e2) {
                throw new JsonIOException(e2);
            }
        }
    }

    public <T> T a(a aVar, Type type) throws JsonIOException, JsonSyntaxException {
        boolean z = true;
        boolean p = aVar.p();
        aVar.a(true);
        try {
            aVar.f();
            z = false;
            T read = a(qz.a(type)).read(aVar);
            aVar.a(p);
            return read;
        } catch (Throwable e) {
            if (z) {
                aVar.a(p);
                return null;
            }
            throw new JsonSyntaxException(e);
        } catch (Throwable e2) {
            throw new JsonSyntaxException(e2);
        } catch (Throwable e22) {
            throw new JsonSyntaxException(e22);
        } catch (Throwable th) {
            aVar.a(p);
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.g + "factories:" + this.e + ",instanceCreators:" + this.f + "}";
    }
}
