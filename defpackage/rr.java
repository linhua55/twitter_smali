package defpackage;

import com.google.android.gms.maps.model.LatLng;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: rr */
public class rr implements rg {
    private final List<? extends List<LatLng>> a;

    public rr(List<? extends List<LatLng>> list) {
        if (list == null) {
            throw new IllegalArgumentException("Coordinates cannot be null");
        }
        this.a = list;
    }

    public String a() {
        return "Polygon";
    }

    public List<? extends List<LatLng>> b() {
        return this.a;
    }

    public String toString() {
        StringBuilder append = new StringBuilder("Polygon").append("{");
        append.append("\n coordinates=").append(this.a);
        append.append("\n}\n");
        return append.toString();
    }
}
