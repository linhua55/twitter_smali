package defpackage;

import com.google.gson.c;
import com.google.gson.d;
import com.google.gson.internal.$Gson.Types;
import com.google.gson.internal.b;
import com.google.gson.internal.o;
import com.google.gson.internal.z;
import com.google.gson.s;
import com.google.gson.u;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;
import oo;
import op;

/* compiled from: Twttr */
/* renamed from: pi */
public final class pi implements u {
    private final b a;
    private final c b;
    private final o c;

    public pi(b bVar, c cVar, o oVar) {
        this.a = bVar;
        this.b = cVar;
        this.c = oVar;
    }

    public boolean a(Field field, boolean z) {
        return pi.a(field, z, this.c);
    }

    static boolean a(Field field, boolean z, o oVar) {
        return (oVar.a(field.getType(), z) || oVar.a(field, z)) ? false : true;
    }

    private String a(Field field) {
        return pi.a(this.b, field);
    }

    static String a(c cVar, Field field) {
        op opVar = (op) field.getAnnotation(op.class);
        return opVar == null ? cVar.a(field) : opVar.a();
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        Class a = qzVar.a();
        if (Object.class.isAssignableFrom(a)) {
            return new pk(this.a.a(qzVar), a(dVar, (qz) qzVar, a), null);
        }
        return null;
    }

    private pl a(d dVar, Field field, String str, qz<?> qzVar, boolean z, boolean z2) {
        return new pj(this, str, z, z2, dVar, field, qzVar, z.a(qzVar.a()));
    }

    private s<?> a(d dVar, Field field, qz<?> qzVar) {
        oo ooVar = (oo) field.getAnnotation(oo.class);
        if (ooVar != null) {
            s<?> a = oy.a(this.a, dVar, qzVar, ooVar);
            if (a != null) {
                return a;
            }
        }
        return dVar.a(qzVar);
    }

    private Map<String, pl> a(d dVar, qz<?> qzVar, Class<?> cls) {
        Map<String, pl> linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type b = qzVar.b();
        while (cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                boolean a = a(field, true);
                boolean a2 = a(field, false);
                if (a || a2) {
                    field.setAccessible(true);
                    pl a3 = a(dVar, field, a(field), qz.a(Types.a(qzVar.b(), cls, field.getGenericType())), a, a2);
                    a3 = (pl) linkedHashMap.put(a3.g, a3);
                    if (a3 != null) {
                        throw new IllegalArgumentException(b + " declares multiple JSON fields named " + a3.g);
                    }
                }
            }
            qzVar = qz.a(Types.a(qzVar.b(), cls, cls.getGenericSuperclass()));
            cls = qzVar.a();
        }
        return linkedHashMap;
    }
}
