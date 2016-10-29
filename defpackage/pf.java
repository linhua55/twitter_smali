package defpackage;

import com.google.gson.d;
import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.s;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import com.google.gson.u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: pf */
public final class pf extends s<Object> {
    public static final u a;
    private final d b;

    static {
        a = new pg();
    }

    private pf(d dVar) {
        this.b = dVar;
    }

    public Object read(a aVar) throws IOException {
        switch (ph.a[aVar.f().ordinal()]) {
            case p.View_android_focusable /*1*/:
                List arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(read(aVar));
                }
                aVar.b();
                return arrayList;
            case p.View_paddingStart /*2*/:
                Object linkedTreeMap = new LinkedTreeMap();
                aVar.c();
                while (aVar.e()) {
                    linkedTreeMap.put(aVar.g(), read(aVar));
                }
                aVar.d();
                return linkedTreeMap;
            case p.View_paddingEnd /*3*/:
                return aVar.h();
            case p.View_theme /*4*/:
                return Double.valueOf(aVar.k());
            case p.Toolbar_contentInsetStart /*5*/:
                return Boolean.valueOf(aVar.i());
            case p.Toolbar_contentInsetEnd /*6*/:
                aVar.j();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    public void write(c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.f();
            return;
        }
        s a = this.b.a(obj.getClass());
        if (a instanceof pf) {
            cVar.d();
            cVar.e();
            return;
        }
        a.write(cVar, obj);
    }
}
