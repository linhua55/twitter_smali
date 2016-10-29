package defpackage;

import com.google.gson.d;
import com.google.gson.internal.b;
import com.google.gson.s;
import com.google.gson.u;
import oo;

/* compiled from: Twttr */
/* renamed from: oy */
public final class oy implements u {
    private final b a;

    public oy(b bVar) {
        this.a = bVar;
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        oo ooVar = (oo) qzVar.a().getAnnotation(oo.class);
        if (ooVar == null) {
            return null;
        }
        return oy.a(this.a, dVar, qzVar, ooVar);
    }

    static s<?> a(b bVar, d dVar, qz<?> qzVar, oo ooVar) {
        Class a = ooVar.a();
        if (s.class.isAssignableFrom(a)) {
            return (s) bVar.a(qz.b(a)).a();
        }
        if (u.class.isAssignableFrom(a)) {
            return ((u) bVar.a(qz.b(a)).a()).create(dVar, qzVar);
        }
        throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference.");
    }
}
