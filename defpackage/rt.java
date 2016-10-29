package defpackage;

import com.google.android.gms.maps.c;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.f;
import com.google.android.gms.maps.model.g;
import com.google.android.gms.maps.model.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: rt */
class rt implements Observer {
    private static final Object a;
    private final HashMap<rf, Object> b;
    private final rq c;
    private final rk d;
    private final rs e;
    private boolean f;
    private c g;

    static {
        a = null;
    }

    rt(c cVar, HashMap<rf, Object> hashMap) {
        this.g = cVar;
        this.b = hashMap;
        this.f = false;
        this.c = new rq();
        this.d = new rk();
        this.e = new rs();
        for (rf b : b()) {
            b(b);
        }
    }

    private static void a(Object obj) {
        if (obj instanceof f) {
            ((f) obj).a();
        } else if (obj instanceof h) {
            ((h) obj).a();
        } else if (obj instanceof g) {
            ((g) obj).a();
        } else if (obj instanceof ArrayList) {
            Iterator it = ((ArrayList) obj).iterator();
            while (it.hasNext()) {
                rt.a(it.next());
            }
        }
    }

    void a() {
        if (!this.f) {
            this.f = true;
            for (rf a : b()) {
                a(a);
            }
        }
    }

    Set<rf> b() {
        return this.b.keySet();
    }

    private void b(rf rfVar) {
        if (rfVar.a() == null) {
            rfVar.a(this.c);
        }
        if (rfVar.b() == null) {
            rfVar.a(this.d);
        }
        if (rfVar.c() == null) {
            rfVar.a(this.e);
        }
    }

    void a(rf rfVar) {
        Object obj = a;
        b(rfVar);
        if (this.f) {
            rfVar.addObserver(this);
            if (this.b.containsKey(rfVar)) {
                rt.a(this.b.get(rfVar));
            }
            if (rfVar.e()) {
                obj = a(rfVar, rfVar.d());
            }
        }
        this.b.put(rfVar, obj);
    }

    rs c() {
        return this.e;
    }

    private Object a(rf rfVar, rg rgVar) {
        String a = rgVar.a();
        if (a.equals("Point")) {
            return a(rfVar.a(), (rp) rgVar);
        }
        if (a.equals("LineString")) {
            return a(rfVar.b(), (rj) rgVar);
        }
        if (a.equals("Polygon")) {
            return a(rfVar.c(), (rr) rgVar);
        }
        if (a.equals("MultiPoint")) {
            return a(rfVar.a(), (rm) rgVar);
        }
        if (a.equals("MultiLineString")) {
            return a(rfVar.b(), (rl) rgVar);
        }
        if (a.equals("MultiPolygon")) {
            return a(rfVar.c(), (rn) rgVar);
        }
        if (a.equals("GeometryCollection")) {
            return a(rfVar, ((rh) rgVar).b());
        }
        return null;
    }

    private f a(rq rqVar, rp rpVar) {
        MarkerOptions m = rqVar.m();
        m.a(rpVar.b());
        return this.g.a(m);
    }

    private ArrayList<f> a(rq rqVar, rm rmVar) {
        ArrayList<f> arrayList = new ArrayList();
        for (rp a : rmVar.b()) {
            arrayList.add(a(rqVar, a));
        }
        return arrayList;
    }

    private h a(rk rkVar, rj rjVar) {
        PolylineOptions g = rkVar.g();
        g.a(rjVar.b());
        return this.g.a(g);
    }

    private ArrayList<h> a(rk rkVar, rl rlVar) {
        ArrayList<h> arrayList = new ArrayList();
        for (rj a : rlVar.b()) {
            arrayList.add(a(rkVar, a));
        }
        return arrayList;
    }

    private g a(rs rsVar, rr rrVar) {
        PolygonOptions h = rsVar.h();
        h.a((Iterable) rrVar.b().get(0));
        for (int i = 1; i < rrVar.b().size(); i++) {
            h.b((Iterable) rrVar.b().get(i));
        }
        return this.g.a(h);
    }

    private ArrayList<g> a(rs rsVar, rn rnVar) {
        ArrayList<g> arrayList = new ArrayList();
        for (rr a : rnVar.b()) {
            arrayList.add(a(rsVar, a));
        }
        return arrayList;
    }

    private ArrayList<Object> a(rf rfVar, List<rg> list) {
        ArrayList<Object> arrayList = new ArrayList();
        for (rg a : list) {
            arrayList.add(a(rfVar, a));
        }
        return arrayList;
    }

    private void c(rf rfVar) {
        a(rfVar, this.g);
    }

    private void a(rf rfVar, c cVar) {
        rt.a(this.b.get(rfVar));
        this.b.put(rfVar, a);
        this.g = cVar;
        if (cVar != null && rfVar.e()) {
            this.b.put(rfVar, a(rfVar, rfVar.d()));
        }
    }

    public void update(Observable observable, Object obj) {
        if (observable instanceof rf) {
            rf rfVar = (rf) observable;
            Object obj2 = this.b.get(rfVar) != a ? 1 : null;
            if (obj2 != null && rfVar.e()) {
                c(rfVar);
            } else if (obj2 != null && !rfVar.e()) {
                rt.a(this.b.get(rfVar));
                this.b.put(rfVar, a);
            } else if (obj2 == null && rfVar.e()) {
                a(rfVar);
            }
        }
    }
}
