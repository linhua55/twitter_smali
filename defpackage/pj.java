package defpackage;

import com.google.gson.d;
import com.google.gson.s;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.lang.reflect.Field;

/* compiled from: Twttr */
/* renamed from: pj */
class pj extends pl {
    final s<?> a;
    final /* synthetic */ d b;
    final /* synthetic */ Field c;
    final /* synthetic */ qz d;
    final /* synthetic */ boolean e;
    final /* synthetic */ pi f;

    pj(pi piVar, String str, boolean z, boolean z2, d dVar, Field field, qz qzVar, boolean z3) {
        this.f = piVar;
        this.b = dVar;
        this.c = field;
        this.d = qzVar;
        this.e = z3;
        super(str, z, z2);
        this.a = this.f.a(this.b, this.c, this.d);
    }

    void a(c cVar, Object obj) throws IOException, IllegalAccessException {
        new pq(this.b, this.a, this.d.b()).write(cVar, this.c.get(obj));
    }

    void a(a aVar, Object obj) throws IOException, IllegalAccessException {
        Object read = this.a.read(aVar);
        if (read != null || !this.e) {
            this.c.set(obj, read);
        }
    }

    public boolean a(Object obj) throws IOException, IllegalAccessException {
        if (this.h && this.c.get(obj) != obj) {
            return true;
        }
        return false;
    }
}
