package defpackage;

import com.google.android.gms.maps.a;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.t;
import ri;

/* compiled from: Twttr */
/* renamed from: bwp */
class bwp implements t {
    final /* synthetic */ String a;
    final /* synthetic */ bwi b;
    final /* synthetic */ bwk c;

    bwp(bwk bwk, String str, bwi bwi) {
        this.c = bwk;
        this.a = str;
        this.b = bwi;
    }

    public void a(c cVar) {
        c map = this.c.b.getMap();
        ri a = bwk.b(map, this.a);
        if (a != null) {
            this.c.a(a);
            this.c.e();
            a a2 = this.c.a(a.c());
            if (a2 != null) {
                this.c.a(map, a2);
            }
            a.a();
            this.c.a(map, this.b);
        }
    }
}
