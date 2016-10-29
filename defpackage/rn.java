package defpackage;

import java.util.List;

/* compiled from: Twttr */
/* renamed from: rn */
public class rn implements rg {
    private final List<rr> a;

    public rn(List<rr> list) {
        if (list == null) {
            throw new IllegalArgumentException("GeoJsonPolygons cannot be null");
        }
        this.a = list;
    }

    public String a() {
        return "MultiPolygon";
    }

    public List<rr> b() {
        return this.a;
    }

    public String toString() {
        StringBuilder append = new StringBuilder("MultiPolygon").append("{");
        append.append("\n Polygons=").append(this.a);
        append.append("\n}\n");
        return append.toString();
    }
}
