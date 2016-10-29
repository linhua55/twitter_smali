package defpackage;

import com.google.android.gms.maps.model.PolygonOptions;
import java.util.Arrays;
import java.util.Observable;

/* compiled from: Twttr */
/* renamed from: rs */
public class rs extends Observable implements ru {
    private static final String[] a;
    private final PolygonOptions b;

    static {
        a = new String[]{"Polygon", "MultiPolygon", "GeometryCollection"};
    }

    public rs() {
        this.b = new PolygonOptions();
    }

    public String[] a() {
        return a;
    }

    public int b() {
        return this.b.f();
    }

    public void a(int i) {
        this.b.b(i);
        i();
    }

    public boolean c() {
        return this.b.i();
    }

    public int d() {
        return this.b.e();
    }

    public void b(int i) {
        this.b.a(i);
        i();
    }

    public float e() {
        return this.b.d();
    }

    public void a(float f) {
        this.b.a(f);
        i();
    }

    public float f() {
        return this.b.g();
    }

    public boolean g() {
        return this.b.h();
    }

    private void i() {
        setChanged();
        notifyObservers();
    }

    public PolygonOptions h() {
        PolygonOptions polygonOptions = new PolygonOptions();
        polygonOptions.b(this.b.f());
        polygonOptions.b(this.b.i());
        polygonOptions.a(this.b.e());
        polygonOptions.a(this.b.d());
        polygonOptions.a(this.b.h());
        polygonOptions.b(this.b.g());
        return polygonOptions;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("PolygonStyle{");
        stringBuilder.append("\n geometry type=").append(Arrays.toString(a));
        stringBuilder.append(",\n fill color=").append(b());
        stringBuilder.append(",\n geodesic=").append(c());
        stringBuilder.append(",\n stroke color=").append(d());
        stringBuilder.append(",\n stroke width=").append(e());
        stringBuilder.append(",\n visible=").append(g());
        stringBuilder.append(",\n z index=").append(f());
        stringBuilder.append("\n}\n");
        return stringBuilder.toString();
    }
}
