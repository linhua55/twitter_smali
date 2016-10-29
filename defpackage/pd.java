package defpackage;

import com.google.gson.d;
import com.google.gson.internal.$Gson.Types;
import com.google.gson.internal.b;
import com.google.gson.internal.y;
import com.google.gson.s;
import com.google.gson.u;
import java.lang.reflect.Type;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: pd */
public final class pd implements u {
    private final b a;
    private final boolean b;

    public pd(b bVar, boolean z) {
        this.a = bVar;
        this.b = z;
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        Type b = qzVar.b();
        if (!Map.class.isAssignableFrom(qzVar.a())) {
            return null;
        }
        Type[] b2 = Types.b(b, Types.e(b));
        s a = a(dVar, b2[0]);
        s a2 = dVar.a(qz.a(b2[1]));
        y a3 = this.a.a(qzVar);
        return new pe(this, dVar, b2[0], a, b2[1], a2, a3);
    }

    private s<?> a(d dVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? pr.f : dVar.a(qz.a(type));
    }
}
