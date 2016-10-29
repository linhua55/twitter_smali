package defpackage;

import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.model.core.EscherbirdAnnotation.DomainType;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bvq */
public class bvq {
    public static boolean a(int i) {
        if (!bvq.a()) {
            return false;
        }
        if (bvq.c(i)) {
            return true;
        }
        return bvq.d(i);
    }

    public static List<DomainType> b(int i) {
        if (!bvq.a()) {
            return n.g();
        }
        n d = n.d();
        if (bvq.c(i)) {
            d.c(DomainType.h);
        }
        if (bvq.d(i)) {
            d.c(DomainType.c);
        }
        return (List) d.q();
    }

    public static boolean c(int i) {
        if (i == 0 && bvq.b() && bvq.d()) {
            return true;
        }
        return false;
    }

    public static boolean d(int i) {
        if (i != 0) {
            return false;
        }
        return bvq.c();
    }

    public static boolean a() {
        return d.a("display_see_more");
    }

    public static boolean b() {
        return d.a("display_see_more_products");
    }

    public static boolean c() {
        return d.a("display_see_more_tv");
    }

    public static boolean d() {
        return c.a("commerce_see_more_products_mvp_android_3400", new String[]{"test"});
    }
}
