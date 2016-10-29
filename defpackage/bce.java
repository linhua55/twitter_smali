package defpackage;

import java.security.Provider.Service;
import java.util.Comparator;
import java.util.Locale;

/* compiled from: Twttr */
/* renamed from: bce */
public class bce {
    public static final Comparator<bce> a;
    private final Service b;
    private final bch[] c;
    private final int d;

    static {
        a = new bcf();
    }

    public bce(Service service, bcg bcg) {
        this.b = service;
        this.c = bcg.a(this.b);
        this.d = bce.a(this.c);
    }

    private static int a(bch[] bchArr) {
        int i = 0;
        int i2 = 0;
        while (i < bchArr.length) {
            i2 += bchArr[i].b();
            if (i < bchArr.length - 1) {
                i2 *= 100;
            }
            i++;
        }
        return i2;
    }

    int a() {
        return this.d;
    }

    public String b() {
        int length = this.c.length * 2;
        return String.format(Locale.US, "%0" + length + "d", new Object[]{Integer.valueOf(this.d)});
    }

    public String c() {
        return String.format(Locale.US, "%s/%s/%s", new Object[]{this.b.getProvider().getName(), this.b.getType(), this.b.getAlgorithm()});
    }

    public bch[] d() {
        return this.c;
    }
}
