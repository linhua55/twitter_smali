package defpackage;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.t;

/* compiled from: Twttr */
/* renamed from: bwl */
class bwl implements t {
    final /* synthetic */ Resources a;
    final /* synthetic */ bwk b;

    bwl(bwk bwk, Resources resources) {
        this.b = bwk;
        this.a = resources;
    }

    public void a(c cVar) {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(this.a, bcw.ic_location_pin, options);
        cVar.a(0, options.outHeight, 0, 0);
    }
}
