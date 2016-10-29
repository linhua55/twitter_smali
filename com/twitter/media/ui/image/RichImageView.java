package com.twitter.media.ui.image;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.twitter.media.ui.image.config.CommonRoundingStrategy;
import com.twitter.media.ui.image.config.a;
import com.twitter.media.ui.image.config.d;
import com.twitter.media.ui.image.config.e;
import com.twitter.media.ui.image.config.f;
import com.twitter.media.ui.image.config.g;
import com.twitter.media.ui.k;
import java.util.Arrays;

/* compiled from: Twttr */
public class RichImageView extends FixedSizeImageView implements a, e {
    private final Paint a;
    private final Path b;
    private final RectF c;
    private p d;
    private q e;
    private float f;
    private float[] g;
    private g h;
    private f i;
    private o j;
    private int k;

    public RichImageView(Context context) {
        super(context);
        this.a = new Paint(1);
        this.b = new Path();
        this.c = new RectF();
        this.h = CommonRoundingStrategy.a;
        this.i = f.a;
        a(context, null);
    }

    public RichImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new Paint(1);
        this.b = new Path();
        this.c = new RectF();
        this.h = CommonRoundingStrategy.a;
        this.i = f.a;
        a(context, attributeSet);
    }

    public RichImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new Paint(1);
        this.b = new Path();
        this.c = new RectF();
        this.h = CommonRoundingStrategy.a;
        this.i = f.a;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.RichImageView);
        try {
            setOverlayDrawable(obtainStyledAttributes.getDrawable(k.RichImageView_overlayDrawable));
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(k.RichImageView_cornerRadius, 0);
            setRoundingStrategy(d.a((float) obtainStyledAttributes.getDimensionPixelSize(k.RichImageView_cornerRadiusTopLeft, dimensionPixelSize), (float) obtainStyledAttributes.getDimensionPixelSize(k.RichImageView_cornerRadiusTopRight, dimensionPixelSize), (float) obtainStyledAttributes.getDimensionPixelSize(k.RichImageView_cornerRadiusBottomRight, dimensionPixelSize), (float) obtainStyledAttributes.getDimensionPixelSize(k.RichImageView_cornerRadiusBottomLeft, dimensionPixelSize)));
            this.a.setStyle(Style.STROKE);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    protected void onDraw(Canvas canvas) {
        if (this.e == null || q.a(this.e) == null) {
            super.onDraw(canvas);
        } else {
            this.e.a((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
            this.e.a(canvas, getPaddingLeft(), getPaddingTop());
        }
        if (this.d != null) {
            this.d.a(canvas);
        }
        if (this.f > 0.0f) {
            this.a.setStrokeWidth(this.f);
            canvas.drawPath(this.b, this.a);
        }
        if (this.j != null) {
            canvas.save();
            canvas.translate((float) this.k, (float) ((getHeight() - this.j.c) - this.k));
            this.j.a.draw(canvas);
            canvas.restore();
        }
    }

    protected boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (this.d != null) {
            this.d.a = true;
            this.d.a(getMeasuredWidth(), getMeasuredHeight());
        }
        return frame;
    }

    protected void onMeasure(int i, int i2) {
        if (this.e != null) {
            setMeasuredDimension(q.a(i, getLayoutParams().width, this.e.a()), q.a(i2, getLayoutParams().height, this.e.b()));
        } else {
            super.onMeasure(i, i2);
        }
        if (this.d != null) {
            this.d.a(getMeasuredWidth(), getMeasuredHeight());
        }
        if (!(this.j == null || this.j.a.getVisibility() == 8)) {
            this.j.a.measure(MeasureSpec.makeMeasureSpec(this.j.b, 1073741824), MeasureSpec.makeMeasureSpec(this.j.c, 1073741824));
        }
        b();
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.e != null) {
            this.e.a((i - getPaddingLeft()) - getPaddingRight(), (i2 - getPaddingTop()) - getPaddingBottom());
        }
        if (this.d != null) {
            this.d.a(i, i2);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.j != null && this.j.a.getVisibility() != 8) {
            int i5 = i4 - i2;
            this.j.a.layout(this.k, (i5 - this.k) - this.j.c, this.j.b + this.k, i5 - this.k);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.d != null) {
            this.d.b(this);
        }
    }

    public void a(int i, float f) {
        this.a.setColor(i);
        this.f = f;
        b();
    }

    public void setImageDrawable(Drawable drawable) {
        if (this.e != null) {
            this.e.a(drawable);
            invalidate();
            return;
        }
        super.setImageDrawable(drawable);
    }

    public void setImageBitmap(Bitmap bitmap) {
        if (this.e != null) {
            this.e.a(bitmap);
            invalidate();
            return;
        }
        super.setImageBitmap(bitmap);
    }

    public void setImageResource(int i) {
        if (this.e != null) {
            this.e.a(getResources(), i);
            invalidate();
            return;
        }
        super.setImageResource(i);
    }

    public void setImageURI(Uri uri) {
        if (this.e != null) {
            this.e.a(getContext(), uri);
            invalidate();
            return;
        }
        super.setImageURI(uri);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && VERSION.SDK_INT >= 21) {
            drawableHotspotChanged(motionEvent.getX(), motionEvent.getY());
        }
        return false;
    }

    public void drawableHotspotChanged(float f, float f2) {
        if (VERSION.SDK_INT >= 21 && this.d != null) {
            super.drawableHotspotChanged(f, f2);
            this.d.b.setHotspot(f, f2);
        }
    }

    public void invalidateDrawable(Drawable drawable) {
        if (this.d == null || drawable != this.d.b) {
            super.invalidateDrawable(drawable);
        } else {
            invalidate();
        }
    }

    public void a(@DrawableRes int i, int i2) {
        a(i != 0 ? getResources().getDrawable(i) : null, i2);
    }

    public void a(Drawable drawable, int i) {
        ImageView imageView = null;
        this.k = i;
        if (drawable != null) {
            if (this.j != null) {
                imageView = this.j.a;
            }
            if (imageView == null) {
                imageView = new ImageView(getContext());
                imageView.setScaleType(ScaleType.CENTER);
            }
            this.j = new o(imageView, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            imageView.setVisibility(0);
            imageView.setImageDrawable(drawable);
        } else if (this.j != null) {
            this.j.a.setVisibility(4);
            this.j.a.setImageDrawable(null);
        }
    }

    public void setOverlayDrawable(@DrawableRes int i) {
        setOverlayDrawable(i != 0 ? getResources().getDrawable(i) : null);
    }

    public void setOverlayDrawable(Drawable drawable) {
        if (!(this.d == null || this.d.b == drawable)) {
            this.d.a(this);
        }
        if (drawable != null) {
            p pVar;
            if (this.d != null) {
                pVar = this.d;
            } else {
                pVar = new p(null);
            }
            pVar.b = drawable;
            pVar.b.setCallback(this);
            pVar.b(this);
            setIgnoreLayoutRequest(true);
            requestLayout();
            setIgnoreLayoutRequest(false);
            this.d = pVar;
            if (getMeasuredWidth() != 0) {
                this.d.a(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            return;
        }
        this.d = null;
    }

    public void setOverlayVisible(boolean z) {
        if (this.d == null) {
            throw new IllegalStateException("Calling setOverlayVisible() requires a prior call to setOverlayDrawable() or setting the overlayDrawable attribute in the XML declaration of the " + getClass().getSimpleName() + " element.");
        }
        this.d.c = z;
        invalidate();
    }

    public float[] getCornerRadii() {
        return this.g;
    }

    public void setRoundingStrategy(g gVar) {
        this.h = gVar;
        a();
    }

    public void setRoundingConfig(f fVar) {
        this.i = fVar;
        a();
    }

    private void a() {
        float b = this.h.b(this.i);
        float c = this.h.c(this.i);
        float d = this.h.d(this.i);
        float e = this.h.e(this.i);
        setCornerRadii(new float[]{b, b, c, c, d, d, e, e});
    }

    private void setCornerRadii(float[] fArr) {
        Object obj;
        Object obj2 = 1;
        for (float f : fArr) {
            if (f > 0.0f) {
                obj = 1;
                break;
            }
        }
        obj = null;
        if (this.e == null) {
            obj2 = null;
        }
        if (!(obj2 == obj && (obj2 == null || Arrays.equals(q.b(this.e), fArr)))) {
            Bitmap a;
            q qVar;
            if (obj2 != null) {
                a = q.a(this.e);
            } else {
                a = null;
            }
            if (obj != null) {
                qVar = new q(fArr);
            } else {
                qVar = null;
            }
            this.e = qVar;
            if (a != null) {
                setImageBitmap(a);
            } else {
                setImageDrawable(getDrawable());
            }
            b();
        }
        this.g = fArr;
    }

    private void b() {
        float measuredWidth = ((float) ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) - (this.f / 2.0f);
        float f = this.f / 2.0f;
        this.c.set(f, f, measuredWidth, ((float) ((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom())) - (this.f / 2.0f));
        this.b.reset();
        if (this.e != null) {
            this.b.addRoundRect(this.c, q.b(this.e), Direction.CW);
        } else {
            this.b.addRect(this.c, Direction.CW);
        }
    }
}
