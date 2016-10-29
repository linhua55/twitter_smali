package defpackage;

import java.util.List;

/* compiled from: Twttr */
/* renamed from: rh */
public class rh implements rg {
    private final List<rg> a;

    public rh(List<rg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Geometries cannot be null");
        }
        this.a = list;
    }

    public String a() {
        return "GeometryCollection";
    }

    public List<rg> b() {
        return this.a;
    }

    public String toString() {
        StringBuilder append = new StringBuilder("GeometryCollection").append("{");
        append.append("\n Geometries=").append(this.a);
        append.append("\n}\n");
        return append.toString();
    }
}
