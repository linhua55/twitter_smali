package defpackage;

import com.google.gson.d;
import com.google.gson.s;
import com.google.gson.u;

/* compiled from: Twttr */
/* renamed from: qn */
final class qn implements u {
    final /* synthetic */ Class a;
    final /* synthetic */ Class b;
    final /* synthetic */ s c;

    qn(Class cls, Class cls2, s sVar) {
        this.a = cls;
        this.b = cls2;
        this.c = sVar;
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        Class a = qzVar.a();
        return (a == this.a || a == this.b) ? this.c : null;
    }

    public String toString() {
        return "Factory[type=" + this.b.getName() + "+" + this.a.getName() + ",adapter=" + this.c + "]";
    }
}
