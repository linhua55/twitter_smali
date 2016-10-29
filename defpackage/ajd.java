package defpackage;

import android.graphics.Bitmap;
import android.view.View;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
/* renamed from: ajd */
class ajd implements cyw<View, Bitmap> {
    final /* synthetic */ Size a;
    final /* synthetic */ Size b;
    final /* synthetic */ aiy c;

    ajd(aiy aiy, Size size, Size size2) {
        this.c = aiy;
        this.a = size;
        this.b = size2;
    }

    public Bitmap a(View view) {
        return this.c.c.a(view, this.a, this.b);
    }
}
