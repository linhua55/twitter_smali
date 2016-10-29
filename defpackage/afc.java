package defpackage;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.view.animation.Interpolator;
import com.twitter.util.math.a;
import com.twitter.util.object.b;
import crd;

/* compiled from: Twttr */
/* renamed from: afc */
public class afc {
    public static final b<afc, ObjectAnimator> a;
    private final int b;
    private final afe c;
    private final aff d;
    private final aff e;
    private final aff f;
    private final aff g;
    private final Interpolator h;
    private final ObjectAnimator i;
    private float j;
    private float k;

    static {
        a = new afd();
    }

    public afc(Context context, afe afe) {
        this(context, afe, a);
    }

    @VisibleForTesting
    afc(Context context, afe afe, b<afc, ObjectAnimator> bVar) {
        this.d = new aff();
        this.e = new aff();
        this.f = new aff();
        this.g = new aff();
        this.j = 1.0f;
        this.k = 1.0f;
        this.c = afe;
        this.b = context.getResources().getInteger(2131755061);
        this.h = crd.a();
        this.i = (ObjectAnimator) bVar.a(this);
    }

    public static afc a(View view) {
        return new afc(view.getContext(), new afb(view));
    }

    private void a(float f, boolean z) {
        a(f);
        if (z) {
            this.i.setFloatValues(new float[]{0.0f, 1.0f});
            this.i.setDuration((long) b());
            this.i.setInterpolator(a());
            this.i.start();
            return;
        }
        setZoomLevel(1.0f);
    }

    @VisibleForTesting
    void a(float f) {
        this.e.a = this.c.a();
        this.e.b = this.c.b();
        this.e.c = this.c.c();
        this.k = f;
    }

    @aoa
    public void setZoomLevel(float f) {
        this.j = a.a(f, -0.2f, 5.0f);
        a(this.j, this.k);
    }

    public void b(float f) {
        c(f);
    }

    @aoa
    public float getZoomLevel() {
        return this.j;
    }

    public void a(boolean z) {
        a(0.0f, z);
    }

    public void b(boolean z) {
        a(1.0f, z);
    }

    public Interpolator a() {
        return this.h;
    }

    public int b() {
        return this.b;
    }

    private void a(float f, float f2) {
        aff aff = f2 == 1.0f ? this.g : this.f;
        this.d.a(a.a(this.e.a, aff.a, f, false), a.a(this.e.b, aff.b, f, false), a.a(this.e.c, aff.c, f, false));
        this.c.a(this.d);
    }

    private void c(float f) {
        float f2 = 0.0f;
        boolean z = f > 0.0f;
        aff aff = z ? this.f : this.g;
        aff aff2 = z ? this.g : this.f;
        float a = a.a(this.c.a() + f, this.f.a * 0.8f, this.g.a * 3.0f);
        float f3 = this.f.a;
        float f4 = this.g.a;
        if (f3 != f4) {
            f2 = f > 0.0f ? (a - f3) / (f4 - f3) : (a - f4) / (f3 - f4);
        }
        this.d.a(a, a.a(aff.b, aff2.b, f2, false), a.a(aff.c, aff2.c, f2, false));
        this.c.a(this.d);
    }

    public void a(aez aez) {
        this.g.a(aez.b);
        this.f.a(aez.a);
        setZoomLevel(getZoomLevel());
    }
}
