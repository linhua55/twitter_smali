package defpackage;

import com.google.gson.d;
import com.google.gson.s;
import com.google.gson.u;

/* compiled from: Twttr */
/* renamed from: qq */
final class qq implements u {
    final /* synthetic */ Class a;
    final /* synthetic */ s b;

    qq(Class cls, s sVar) {
        this.a = cls;
        this.b = sVar;
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        return this.a.isAssignableFrom(qzVar.a()) ? this.b : null;
    }

    public String toString() {
        return "Factory[typeHierarchy=" + this.a.getName() + ",adapter=" + this.b + "]";
    }
}
