package defpackage;

import com.google.android.gms.maps.c;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* compiled from: Twttr */
/* renamed from: ri */
public class ri {
    private final rt a;
    private LatLngBounds b;

    public ri(c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            throw new IllegalArgumentException("GeoJSON file cannot be null");
        }
        this.b = null;
        ro roVar = new ro(jSONObject);
        this.b = roVar.b();
        HashMap hashMap = new HashMap();
        Iterator it = roVar.a().iterator();
        while (it.hasNext()) {
            hashMap.put((rf) it.next(), null);
        }
        this.a = new rt(cVar, hashMap);
    }

    public void a() {
        this.a.a();
    }

    public rs b() {
        return this.a.c();
    }

    public LatLngBounds c() {
        return this.b;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Collection{");
        stringBuilder.append("\n Bounding box=").append(this.b);
        stringBuilder.append("\n}\n");
        return stringBuilder.toString();
    }
}
