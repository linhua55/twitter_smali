package defpackage;

import com.google.gson.d;
import com.google.gson.s;
import com.google.gson.u;

/* compiled from: Twttr */
/* renamed from: ql */
final class ql implements u {
    ql() {
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        Class a = qzVar.a();
        if (!Enum.class.isAssignableFrom(a) || a == Enum.class) {
            return null;
        }
        if (!a.isEnum()) {
            a = a.getSuperclass();
        }
        return new qy(a);
    }
}
