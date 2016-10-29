package defpackage;

import java.util.List;

/* compiled from: Twttr */
/* renamed from: rl */
public class rl implements rg {
    private final List<rj> a;

    public rl(List<rj> list) {
        if (list == null) {
            throw new IllegalArgumentException("GeoJsonLineStrings cannot be null");
        }
        this.a = list;
    }

    public String a() {
        return "MultiLineString";
    }

    public List<rj> b() {
        return this.a;
    }

    public String toString() {
        StringBuilder append = new StringBuilder("MultiLineString").append("{");
        append.append("\n LineStrings=").append(this.a);
        append.append("\n}\n");
        return append.toString();
    }
}
