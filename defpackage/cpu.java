package defpackage;

import android.view.View;
import android.view.animation.Interpolator;
import com.twitter.util.math.b;

/* compiled from: Twttr */
/* renamed from: cpu */
public class cpu {
    private static final Interpolator a;
    private final View b;
    private final cpw c;
    private float d;
    private float e;
    private float f;

    static {
        a = new cqr();
    }

    public void a(float f) {
        float a = b.a(this.b.getScaleX() * f, this.d, this.f);
        this.b.setScaleX(a);
        this.b.setScaleY(a);
    }

    public void a(cpt cpt) {
        float scaleX = this.b.getScaleX();
        float f = (this.e + this.d) / 2.0f;
        if (scaleX < this.e && scaleX < f) {
            this.c.a(this.b, this.d, new cpv(this, cpt));
        } else if (scaleX < this.e && scaleX > f) {
            this.c.a(this.b, this.e, null);
        }
    }
}
