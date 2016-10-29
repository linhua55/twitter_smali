package defpackage;

import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;

/* compiled from: Twttr */
/* renamed from: rf */
public class rf extends Observable implements Observer {
    private final String a;
    private final LatLngBounds b;
    private final HashMap<String, String> c;
    private rg d;
    private rq e;
    private rk f;
    private rs g;

    public rf(rg rgVar, String str, HashMap<String, String> hashMap, LatLngBounds latLngBounds) {
        this.d = rgVar;
        this.a = str;
        this.b = latLngBounds;
        if (hashMap == null) {
            this.c = new HashMap();
        } else {
            this.c = hashMap;
        }
    }

    public rq a() {
        return this.e;
    }

    public void a(rq rqVar) {
        if (rqVar == null) {
            throw new IllegalArgumentException("Point style cannot be null");
        }
        if (this.e != null) {
            this.e.deleteObserver(this);
        }
        this.e = rqVar;
        this.e.addObserver(this);
        a(this.e);
    }

    public rk b() {
        return this.f;
    }

    public void a(rk rkVar) {
        if (rkVar == null) {
            throw new IllegalArgumentException("Line string style cannot be null");
        }
        if (this.f != null) {
            this.f.deleteObserver(this);
        }
        this.f = rkVar;
        this.f.addObserver(this);
        a(this.f);
    }

    public rs c() {
        return this.g;
    }

    public void a(rs rsVar) {
        if (rsVar == null) {
            throw new IllegalArgumentException("Polygon style cannot be null");
        }
        if (this.g != null) {
            this.g.deleteObserver(this);
        }
        this.g = rsVar;
        this.g.addObserver(this);
        a(this.g);
    }

    private void a(ru ruVar) {
        if (this.d != null && Arrays.asList(ruVar.a()).contains(this.d.a())) {
            setChanged();
            notifyObservers();
        }
    }

    public rg d() {
        return this.d;
    }

    public boolean e() {
        return this.d != null;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Feature{");
        stringBuilder.append("\n bounding box=").append(this.b);
        stringBuilder.append(",\n geometry=").append(this.d);
        stringBuilder.append(",\n point style=").append(this.e);
        stringBuilder.append(",\n line string style=").append(this.f);
        stringBuilder.append(",\n polygon style=").append(this.g);
        stringBuilder.append(",\n id=").append(this.a);
        stringBuilder.append(",\n properties=").append(this.c);
        stringBuilder.append("\n}\n");
        return stringBuilder.toString();
    }

    public void update(Observable observable, Object obj) {
        if (observable instanceof ru) {
            a((ru) observable);
        }
    }
}
