package defpackage;

import com.google.android.gms.maps.a;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.t;
import com.twitter.model.geo.d;

/* compiled from: Twttr */
/* renamed from: bwo */
class bwo implements t {
    final /* synthetic */ a a;
    final /* synthetic */ d b;
    final /* synthetic */ bwi c;
    final /* synthetic */ bwk d;

    bwo(bwk bwk, a aVar, d dVar, bwi bwi) {
        this.d = bwk;
        this.a = aVar;
        this.b = dVar;
        this.c = bwi;
    }

    public void a(c cVar) {
        c map = this.d.b.getMap();
        this.d.e();
        this.d.a(map, this.a);
        this.d.a(map, this.b);
        this.d.a(map, this.c);
    }
}
