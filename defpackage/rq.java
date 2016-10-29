package defpackage;

import com.google.android.gms.maps.model.MarkerOptions;
import java.util.Arrays;
import java.util.Observable;

/* compiled from: Twttr */
/* renamed from: rq */
public class rq extends Observable implements ru {
    private static final String[] a;
    private final MarkerOptions b;

    static {
        a = new String[]{"Point", "MultiPoint", "GeometryCollection"};
    }

    public rq() {
        this.b = new MarkerOptions();
    }

    public String[] a() {
        return a;
    }

    public float b() {
        return this.b.o();
    }

    public float c() {
        return this.b.g();
    }

    public float d() {
        return this.b.h();
    }

    public boolean e() {
        return this.b.i();
    }

    public boolean f() {
        return this.b.k();
    }

    public float g() {
        return this.b.m();
    }

    public float h() {
        return this.b.n();
    }

    public float i() {
        return this.b.l();
    }

    public String j() {
        return this.b.e();
    }

    public String k() {
        return this.b.d();
    }

    public boolean l() {
        return this.b.j();
    }

    public MarkerOptions m() {
        MarkerOptions markerOptions = new MarkerOptions();
        markerOptions.b(this.b.o());
        markerOptions.a(this.b.g(), this.b.h());
        markerOptions.a(this.b.i());
        markerOptions.c(this.b.k());
        markerOptions.a(this.b.f());
        markerOptions.b(this.b.m(), this.b.n());
        markerOptions.a(this.b.l());
        markerOptions.b(this.b.e());
        markerOptions.a(this.b.d());
        markerOptions.b(this.b.j());
        return markerOptions;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("PointStyle{");
        stringBuilder.append("\n geometry type=").append(Arrays.toString(a));
        stringBuilder.append(",\n alpha=").append(b());
        stringBuilder.append(",\n anchor U=").append(c());
        stringBuilder.append(",\n anchor V=").append(d());
        stringBuilder.append(",\n draggable=").append(e());
        stringBuilder.append(",\n flat=").append(f());
        stringBuilder.append(",\n info window anchor U=").append(g());
        stringBuilder.append(",\n info window anchor V=").append(h());
        stringBuilder.append(",\n rotation=").append(i());
        stringBuilder.append(",\n snippet=").append(j());
        stringBuilder.append(",\n title=").append(k());
        stringBuilder.append(",\n visible=").append(l());
        stringBuilder.append("\n}\n");
        return stringBuilder.toString();
    }
}
