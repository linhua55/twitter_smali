package defpackage;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cmc */
public class cmc {
    public final String a;
    public final int b;
    public final int c;

    public static cmc a(String str, cmb cmb) {
        try {
            if (ImageSpec.b >= 2.0f) {
                cmc cmc = (cmc) cmb.a(str + "_large", cmc.class);
                if (cmc != null) {
                    return cmc;
                }
            }
            return (cmc) cmb.a(str, cmc.class);
        } catch (ClassCastException e) {
            return null;
        }
    }

    public static cmc a(List<String> list, cmb cmb) {
        for (String a : list) {
            cmc a2 = cmc.a(a, cmb);
            if (a2 != null) {
                return a2;
            }
        }
        return null;
    }

    public static List<cmc> a(String[] strArr, cmb cmb) {
        n d = n.d();
        for (String a : strArr) {
            Object a2 = cmc.a(a, cmb);
            if (a2 != null) {
                d.c(a2);
            }
        }
        return (List) d.q();
    }

    @Deprecated
    public cmc(ImageSpec imageSpec) {
        this.a = (String) e.b(imageSpec.c, BuildConfig.VERSION_NAME);
        this.b = (int) imageSpec.d.x;
        this.c = (int) imageSpec.d.y;
    }

    public float a(float f) {
        return this.c > 0 ? ((float) this.b) / ((float) this.c) : f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cmc)) {
            return false;
        }
        cmc cmc = (cmc) obj;
        if (this.a.equals(cmc.a) && this.b == cmc.b && this.c == cmc.c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.a.hashCode() * 31) + this.b) * 31) + this.c;
    }
}
