package defpackage;

import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.l;
import com.google.gson.n;
import com.google.gson.o;
import com.google.gson.q;
import com.google.gson.s;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map.Entry;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: qk */
final class qk extends s<n> {
    qk() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (n) obj);
    }

    public n a(a aVar) throws IOException {
        n lVar;
        switch (qr.a[aVar.f().ordinal()]) {
            case p.View_android_focusable /*1*/:
                return new q(new LazilyParsedNumber(aVar.h()));
            case p.View_paddingStart /*2*/:
                return new q(Boolean.valueOf(aVar.i()));
            case p.View_paddingEnd /*3*/:
                return new q(aVar.h());
            case p.View_theme /*4*/:
                aVar.j();
                return o.a;
            case p.Toolbar_contentInsetStart /*5*/:
                lVar = new l();
                aVar.a();
                while (aVar.e()) {
                    lVar.a(a(aVar));
                }
                aVar.b();
                return lVar;
            case p.Toolbar_contentInsetEnd /*6*/:
                lVar = new com.google.gson.p();
                aVar.c();
                while (aVar.e()) {
                    lVar.a(aVar.g(), a(aVar));
                }
                aVar.d();
                return lVar;
            default:
                throw new IllegalArgumentException();
        }
    }

    public void a(c cVar, n nVar) throws IOException {
        if (nVar == null || nVar.j()) {
            cVar.f();
        } else if (nVar.i()) {
            q m = nVar.m();
            if (m.p()) {
                cVar.a(m.a());
            } else if (m.o()) {
                cVar.a(m.f());
            } else {
                cVar.b(m.b());
            }
        } else if (nVar.g()) {
            cVar.b();
            Iterator it = nVar.l().iterator();
            while (it.hasNext()) {
                a(cVar, (n) it.next());
            }
            cVar.c();
        } else if (nVar.h()) {
            cVar.d();
            for (Entry entry : nVar.k().o()) {
                cVar.a((String) entry.getKey());
                a(cVar, (n) entry.getValue());
            }
            cVar.e();
        } else {
            throw new IllegalArgumentException("Couldn't write " + nVar.getClass());
        }
    }
}
