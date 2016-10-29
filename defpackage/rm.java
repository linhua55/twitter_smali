package defpackage;

import java.util.List;

/* compiled from: Twttr */
/* renamed from: rm */
public class rm implements rg {
    private final List<rp> a;

    public rm(List<rp> list) {
        if (list == null) {
            throw new IllegalArgumentException("GeoJsonPoints cannot be null");
        }
        this.a = list;
    }

    public String a() {
        return "MultiPoint";
    }

    public List<rp> b() {
        return this.a;
    }

    public String toString() {
        StringBuilder append = new StringBuilder("MultiPoint").append("{");
        append.append("\n points=").append(this.a);
        append.append("\n}\n");
        return append.toString();
    }
}
