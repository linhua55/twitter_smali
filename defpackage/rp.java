package defpackage;

import com.google.android.gms.maps.model.LatLng;

/* compiled from: Twttr */
/* renamed from: rp */
public class rp implements rg {
    private final LatLng a;

    public rp(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("Coordinate cannot be null");
        }
        this.a = latLng;
    }

    public String a() {
        return "Point";
    }

    public LatLng b() {
        return this.a;
    }

    public String toString() {
        StringBuilder append = new StringBuilder("Point").append("{");
        append.append("\n coordinates=").append(this.a);
        append.append("\n}\n");
        return append.toString();
    }
}
