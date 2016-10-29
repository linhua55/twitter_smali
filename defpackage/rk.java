package defpackage;

import com.google.android.gms.maps.model.PolylineOptions;
import java.util.Arrays;
import java.util.Observable;

/* compiled from: Twttr */
/* renamed from: rk */
public class rk extends Observable implements ru {
    private static final String[] a;
    private final PolylineOptions b;

    static {
        a = new String[]{"LineString", "MultiLineString", "GeometryCollection"};
    }

    public rk() {
        this.b = new PolylineOptions();
    }

    public String[] a() {
        return a;
    }

    public int b() {
        return this.b.d();
    }

    public boolean c() {
        return this.b.g();
    }

    public float d() {
        return this.b.c();
    }

    public float e() {
        return this.b.e();
    }

    public boolean f() {
        return this.b.f();
    }

    public PolylineOptions g() {
        PolylineOptions polylineOptions = new PolylineOptions();
        polylineOptions.a(this.b.d());
        polylineOptions.b(this.b.g());
        polylineOptions.a(this.b.f());
        polylineOptions.a(this.b.c());
        polylineOptions.b(this.b.e());
        return polylineOptions;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("LineStringStyle{");
        stringBuilder.append("\n geometry type=").append(Arrays.toString(a));
        stringBuilder.append(",\n color=").append(b());
        stringBuilder.append(",\n geodesic=").append(c());
        stringBuilder.append(",\n visible=").append(f());
        stringBuilder.append(",\n width=").append(d());
        stringBuilder.append(",\n z index=").append(e());
        stringBuilder.append("\n}\n");
        return stringBuilder.toString();
    }
}
