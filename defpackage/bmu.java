package defpackage;

import com.twitter.util.math.a;
import com.twitter.util.z;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bmu */
public class bmu implements z<bmx> {
    protected final boolean a;
    protected final String b;
    protected final Map<String, Integer> c;
    protected final int d;
    protected int e;
    private int f;

    public bmu(int i, String str, int i2, boolean z) {
        this.f = 0;
        this.c = new HashMap();
        this.e = i;
        this.b = str;
        this.d = i2;
        this.a = z;
    }

    public void a() {
        a(true);
    }

    public void a(boolean z) {
        if (z) {
            c();
        }
        bmw.a().a(bmx.a(this.b, this.d));
    }

    public void b() {
        c();
        this.f = 10000;
        bmw.a().a(bmx.b(this.b, this.d));
    }

    public void a(int i) {
        if (i > 0) {
            this.e = Math.max(i, this.c.size());
        }
    }

    public void c() {
        for (String b : this.c.keySet()) {
            bmw.a().b((z) this, b);
        }
        this.e = 1;
        this.c.clear();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName()).append("[");
        stringBuilder.append("id=").append(hashCode()).append("; ");
        stringBuilder.append("size=").append(this.e).append("; ");
        stringBuilder.append("progress=").append(this.f).append("; ");
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public synchronized void a(bmx bmx) {
        int i = 0;
        synchronized (this) {
            if (bmx.d && this.a) {
                bmw.a().a(bmx.a(this.b, this.d));
                c();
            } else {
                int i2;
                Integer num = (Integer) this.c.get(bmx.a);
                int intValue = num != null ? num.intValue() : 0;
                if (bmx.c >= intValue || ((double) bmx.c) >= 8000.0d) {
                    i2 = intValue;
                } else {
                    i2 = intValue + 50;
                }
                this.c.put(bmx.a, Integer.valueOf(a.a(bmx.e ? 10000 : bmx.c, i2, 10000)));
                for (Integer num2 : this.c.values()) {
                    i = num2.intValue() + i;
                }
                this.f = i / this.e;
                if (this.f < 10000) {
                    bmw.a().a(this.b, this.d, this.f);
                } else {
                    b();
                }
            }
        }
    }
}
