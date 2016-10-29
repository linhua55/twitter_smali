package defpackage;

import android.graphics.Bitmap;
import com.google.android.gms.maps.n;

/* compiled from: Twttr */
/* renamed from: bws */
class bws implements n {
    final /* synthetic */ bwr a;

    bws(bwr bwr) {
        this.a = bwr;
    }

    public void a(Bitmap bitmap) {
        if (bitmap != null) {
            this.a.b.c.setImageBitmap(bitmap);
            this.a.b.c.setVisibility(0);
            this.a.b.b.setVisibility(8);
            if (this.a.a != null) {
                this.a.a.a(bitmap);
            }
        }
    }
}
