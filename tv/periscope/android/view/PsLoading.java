package tv.periscope.android.view;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import tv.periscope.android.library.j;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class PsLoading extends ImageView {
    private Bitmap a;
    private Paint b;
    private AnimatorUpdateListener c;
    private ValueAnimator d;
    private ValueAnimator e;
    private BitmapDrawable f;
    private Rect g;
    private float h;
    private boolean i;

    public PsLoading(Context context) {
        super(context);
        a(context, null, 0);
    }

    public PsLoading(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public PsLoading(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    public void a() {
        this.i = false;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d();
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.PsLoading, i, 0);
        boolean z = obtainStyledAttributes.getBoolean(p.PsLoading_ps__halfHeight, false);
        obtainStyledAttributes.recycle();
        Drawable drawable = getDrawable();
        if (drawable != null) {
            this.f = (BitmapDrawable) drawable;
        } else if (z) {
            this.f = (BitmapDrawable) getResources().getDrawable(j.ps__bg_loading_half);
        } else {
            this.f = (BitmapDrawable) getResources().getDrawable(j.ps__bg_loading);
        }
        this.a = this.f.getBitmap();
        this.b = new Paint(6);
        this.g = new Rect(0, 0, 0, 0);
        this.c = new q(this);
        TimeInterpolator linearInterpolator = new LinearInterpolator();
        this.d = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        this.d.setInterpolator(linearInterpolator);
        this.d.setRepeatCount(-1);
        this.d.setRepeatMode(1);
        this.d.setDuration(1700);
        this.e = ValueAnimator.ofFloat(new float[]{1.0f, 0.0f});
        this.e.setInterpolator(new LinearInterpolator());
        this.e.setDuration(300);
        this.e.addUpdateListener(new r(this));
        this.e.addListener(new s(this));
    }

    protected void onDraw(Canvas canvas) {
        int width = getWidth();
        int width2 = this.a.getWidth();
        int i = (int) (-this.h);
        while (i < width) {
            canvas.drawBitmap(this.a, (float) i, 0.0f, this.b);
            i += width2;
        }
        if (i - width > 0) {
            this.g.set(i, 0, i - width, this.a.getHeight());
            canvas.drawBitmap(this.a, this.g, this.g, this.b);
        }
    }

    public void b() {
        setVisibility(0);
        a();
        this.d.addUpdateListener(this.c);
        this.d.start();
    }

    public void c() {
        this.e.start();
    }

    private void d() {
        clearAnimation();
        this.d.removeUpdateListener(this.c);
        setVisibility(8);
        a();
    }
}
