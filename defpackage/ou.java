package defpackage;

import com.google.gson.d;
import com.google.gson.internal.$Gson.Types;
import com.google.gson.internal.b;
import com.google.gson.s;
import com.google.gson.u;
import java.lang.reflect.Type;
import java.util.Collection;

/* compiled from: Twttr */
/* renamed from: ou */
public final class ou implements u {
    private final b a;

    public ou(b bVar) {
        this.a = bVar;
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        Type b = qzVar.b();
        Class a = qzVar.a();
        if (!Collection.class.isAssignableFrom(a)) {
            return null;
        }
        Type a2 = Types.a(b, a);
        return new ov(dVar, a2, dVar.a(qz.a(a2)), this.a.a(qzVar));
    }
}
