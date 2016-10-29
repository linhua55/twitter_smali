package defpackage;

import com.google.gson.d;
import com.google.gson.s;
import com.google.gson.u;

/* compiled from: Twttr */
/* renamed from: qm */
final class qm implements u {
    final /* synthetic */ Class a;
    final /* synthetic */ s b;

    qm(Class cls, s sVar) {
        this.a = cls;
        this.b = sVar;
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        return qzVar.a() == this.a ? this.b : null;
    }

    public String toString() {
        return "Factory[type=" + this.a.getName() + ",adapter=" + this.b + "]";
    }
}
