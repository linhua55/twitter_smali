package defpackage;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
/* renamed from: csg */
public class csg extends Drawable implements Animatable {
    private csk a;
    private boolean b;
    private final Paint c;
    private final ValueAnimator d;
    private WeakReference<csi> e;
    private int f;
    private float g;
    private boolean h;

    public /* synthetic */ Drawable mutate() {
        return a();
    }

    public csg(int i) {
        this(new csk());
        a(i);
    }

    csg(csk csk) {
        this.c = new Paint();
        this.d = new ValueAnimator();
        this.a = csk;
        this.d.setDuration(150);
        Object csj = new csj();
        this.d.addListener(csj);
        this.d.addUpdateListener(csj);
        a(1.0f);
        b(1.0f);
    }

    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        f();
    }

    public void setAlpha(int i) {
        this.c.setAlpha(i);
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.c.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public int getOpacity() {
        return -3;
    }

    public int getAlpha() {
        return this.c.getAlpha();
    }

    public int getIntrinsicHeight() {
        return (int) this.a.b;
    }

    public ConstantState getConstantState() {
        return this.a;
    }

    public csg a() {
        if (!this.b && super.mutate() == this) {
            this.a = new csk(this.a);
            this.b = true;
        }
        return this;
    }

    public void draw(Canvas canvas) {
        this.c.setColor(this.a.a);
        this.c.setStrokeWidth(this.a.b);
        int i = getBounds().left;
        int i2 = getBounds().right;
        int i3 = (int) (((float) getBounds().bottom) - (this.a.b / 2.0f));
        int i4 = i2 - this.f;
        Canvas canvas2 = canvas;
        canvas2.drawLine((float) Math.max(this.f - ((int) (((float) (this.f - i)) * this.g)), i), (float) i3, (float) Math.min(this.f + ((int) (((float) i4) * this.g)), i2), (float) i3, this.c);
    }

    public void start() {
        a(true);
    }

    public void stop() {
        if (this.d.isStarted()) {
            this.d.end();
        }
    }

    public boolean isRunning() {
        return this.d.isRunning();
    }

    public void b() {
        a(false);
    }

    private void a(boolean z) {
        if (!this.d.isRunning() || this.h != z) {
            this.d.cancel();
            ValueAnimator valueAnimator = this.d;
            float[] fArr = new float[2];
            fArr[0] = d();
            fArr[1] = z ? 1.0f : 0.0f;
            valueAnimator.setFloatValues(fArr);
            this.d.start();
            this.h = z;
        }
    }

    public int c() {
        return this.a.a;
    }

    public void a(int i) {
        if (this.a.a != i) {
            this.a.a = i;
            invalidateSelf();
        }
    }

    public void a(float f) {
        if (this.a.b != f) {
            this.a.b = f;
            invalidateSelf();
        }
    }

    public float d() {
        return this.g;
    }

    public void b(float f) {
        this.g = f;
        invalidateSelf();
    }

    public int e() {
        return this.f;
    }

    public void b(int i) {
        this.f = i;
    }

    public void f() {
        this.f = getBounds().centerX();
    }

    public void a(csi csi) {
        if (csi == null) {
            this.e = null;
        } else {
            this.e = new WeakReference(csi);
        }
    }

    public csi g() {
        return this.e != null ? (csi) this.e.get() : null;
    }
}
