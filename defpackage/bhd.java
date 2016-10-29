package defpackage;

import android.support.annotation.VisibleForTesting;
import bhc;
import com.twitter.model.core.bg;
import com.twitter.model.core.bi;
import com.twitter.model.core.cr;
import com.twitter.model.core.i;
import com.twitter.model.dms.c;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import cph;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: bhd */
public abstract class bhd<E extends bhc<D>, B extends bhd<E, B, D>, D extends bhe> extends bgx<E, B, D> {
    boolean d;

    abstract E f();

    protected /* synthetic */ Object c() {
        return e();
    }

    bhd() {
    }

    bhd(bhc bhc) {
        super(bhc);
    }

    protected E e() {
        this.d = g();
        h();
        return f();
    }

    private void h() {
        ((bhe) this.c).b = e.b(((bhe) this.c).b);
        if (((bhe) this.c).d != null) {
            if (-1 == ((bhe) this.c).d.a()) {
                if (((bhe) this.c).d.g()) {
                    ((bhe) this.c).d = null;
                }
            } else if (((bhe) this.c).d.g()) {
                i a = a(new i(((bhe) this.c).b, ((bhe) this.c).c), ((bhe) this.c).d);
                ((bhe) this.c).b = a.a;
                ((bhe) this.c).c = a.b;
            }
        }
        ((bhe) this.c).b = cph.a(((bhe) this.c).b, ((bhe) this.c).c, null, true);
    }

    @VisibleForTesting
    i a(i iVar, c cVar) {
        String str = iVar.a;
        if (aj.a(str) || cVar == null || cVar.e() == -1 || cVar.f() == -1) {
            return iVar;
        }
        Iterator it = iVar.b.c.iterator();
        while (it.hasNext()) {
            cr crVar = (cr) it.next();
            if (crVar.g == cVar.e() && crVar.h == cVar.f() && str.endsWith(crVar.B)) {
                int length = str.length();
                return new i(aj.a(str, length - crVar.B.length(), length).trim(), (bg) new bi(iVar.b).b(crVar).q());
            }
        }
        return iVar;
    }

    boolean g() {
        return ((bhe) this.c).d != null && -1 == ((bhe) this.c).d.a() && !((bhe) this.c).d.g() && ((bhe) this.c).d.h();
    }
}
