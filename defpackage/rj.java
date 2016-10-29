package defpackage;

import com.google.android.gms.maps.model.LatLng;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: rj */
public class rj implements rg {
    private final List<LatLng> a;

    public rj(List<LatLng> list) {
        if (list == null) {
            throw new IllegalArgumentException("Coordinates cannot be null");
        }
        this.a = list;
    }

    public String a() {
        return "LineString";
    }

    public List<LatLng> b() {
        return this.a;
    }

    public String toString() {
        StringBuilder append = new StringBuilder("LineString").append("{");
        append.append("\n coordinates=").append(this.a);
        append.append("\n}\n");
        return append.toString();
    }
}
