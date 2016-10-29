package defpackage;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.FrameLayout;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.util.math.Size;
import com.twitter.util.object.c;
import cvq;
import cyx;
import rx.o;
import rx.w;

/* compiled from: Twttr */
/* renamed from: aiy */
public class aiy {
    private final MomentPage a;
    private final ajx b;
    private final ajt c;
    private final Size d;
    private final Size e;
    private final c<FrameLayout> f;

    public aiy(MomentPage momentPage, Size size, Size size2, ajx ajx, ajt ajt, c<FrameLayout> cVar) {
        this.a = momentPage;
        this.b = ajx;
        this.c = ajt;
        this.d = size;
        this.e = size2;
        this.f = cVar;
    }

    public w<Bitmap> a() {
        return cvq.a(w.a(this.b).b(a(this.a)).a(a(this.d)).c(d()).g(b()).a(c()).g(a(this.d, this.e)), null);
    }

    private o<View> b() {
        return o.b(this.f.b());
    }

    private cys<ahj<? extends MomentPage>> a(Size size) {
        return new aiz(this, size);
    }

    private cyx<View, View, View> c() {
        return new aja(this);
    }

    private cyw<ahj<? extends MomentPage>, o<View>> d() {
        return new ajb(this);
    }

    private cyw<ajx, o<ahj<? extends MomentPage>>> a(MomentPage momentPage) {
        return new ajc(this, momentPage);
    }

    private cyw<View, Bitmap> a(Size size, Size size2) {
        return new ajd(this, size, size2);
    }
}
