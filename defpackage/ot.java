package defpackage;

import com.google.gson.d;
import com.google.gson.internal.$Gson.Types;
import com.google.gson.s;
import com.google.gson.u;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* compiled from: Twttr */
/* renamed from: ot */
final class ot implements u {
    ot() {
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        Type b = qzVar.b();
        if (!(b instanceof GenericArrayType) && (!(b instanceof Class) || !((Class) b).isArray())) {
            return null;
        }
        b = Types.g(b);
        return new os(dVar, dVar.a(qz.a(b)), Types.e(b));
    }
}
