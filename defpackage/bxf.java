package defpackage;

import android.content.Intent;
import android.location.Location;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bxf */
public class bxf implements bxe {
    final List<bxe> a;

    public bxf() {
        n d = n.d();
        d.c(new bxg());
        d.c(new bxh());
        this.a = (List) d.q();
    }

    public Location a(Intent intent) {
        for (bxe a : this.a) {
            Location a2 = a.a(intent);
            if (a2 != null) {
                return a2;
            }
        }
        return null;
    }
}
