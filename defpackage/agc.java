package defpackage;

import android.graphics.Rect;
import android.widget.ImageView;
import com.twitter.moments.core.ui.widget.capsule.a;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
/* renamed from: agc */
class agc implements a {
    final /* synthetic */ Size a;
    final /* synthetic */ Rect b;
    final /* synthetic */ agb c;

    agc(agb agb, Size size, Rect rect) {
        this.c = agb;
        this.a = size;
        this.b = rect;
    }

    public void a(ImageView imageView) {
        this.c.a(this.a, this.b);
    }
}
