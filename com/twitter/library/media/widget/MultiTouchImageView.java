package com.twitter.library.media.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.util.ab;
import com.twitter.util.math.Size;
import com.twitter.util.math.b;
import com.twitter.util.math.c;
import com.twitter.util.object.e;
import com.twitter.util.ui.r;
import cqq;

/* compiled from: Twttr */
public class MultiTouchImageView extends ImageView implements cqq {
    protected final Matrix a;
    protected final RectF b;
    protected final RectF c;
    protected int d;
    private final Rect e;
    private final PointF f;
    private final int g;
    private boolean h;
    private int i;
    private float j;
    private c k;
    private boolean l;
    private s m;

    public MultiTouchImageView(Context context) {
        this(context, null);
    }

    public MultiTouchImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MultiTouchImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new Matrix();
        this.b = new RectF();
        this.c = new RectF();
        this.e = new Rect();
        this.f = new PointF();
        this.h = true;
        this.i = 0;
        this.j = 1.0f;
        this.g = ViewConfiguration.get(context).getScaledTouchSlop();
        setScaleType(ScaleType.MATRIX);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            getDrawingRect(this.e);
            this.b.set(this.e);
            b();
        }
    }

    public void setImageBitmap(Bitmap bitmap) {
        boolean z = this.h && !getDrawableSize().d(Size.a(bitmap));
        this.h = z;
        super.setImageBitmap(bitmap);
        b();
    }

    public void setImageDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setImageDrawable(null);
            return;
        }
        boolean z = this.h && !getDrawableSize().d(Size.a(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight()));
        this.h = z;
        super.setImageDrawable(drawable);
        b();
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable bundle = new Bundle();
        bundle.putParcelable("parent_bundle", super.onSaveInstanceState());
        ab.a(bundle, "image_selection", getNormalizedImageSelection(), c.a);
        bundle.putInt("rotation", this.d);
        return bundle;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        this.h = false;
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("parent_bundle"));
        a((c) e.a(ab.a(bundle, "image_selection", c.a)), bundle.getInt("rotation", 0));
    }

    private void a(c cVar, int i) {
        if (i != 0) {
            this.d = i;
            a(this.b.centerX(), this.b.centerY(), 0.0f, 0.0f, 1.0f, i);
        }
        this.k = cVar.a(this.a);
    }

    protected void b() {
        if (c()) {
            if (this.k != null) {
                setImageSelection(this.k);
                this.k = null;
            }
            if (this.h) {
                this.c.set(getImageRect());
            }
            a();
            e();
        }
    }

    protected boolean c() {
        Drawable drawable = getDrawable();
        return drawable != null && drawable.getIntrinsicWidth() > 0 && this.b.width() > 0.0f;
    }

    public void d() {
        if (c()) {
            this.j = 1.0f;
            this.c.set(getImageRect());
            a();
            e();
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!c()) {
            return false;
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        RectF imageRect;
        switch (motionEvent.getAction() & NalUnitUtil.EXTENDED_SAR) {
            case Util.TYPE_DASH /*0*/:
                if (this.i == 0) {
                    this.f.set(motionEvent.getX(), motionEvent.getY());
                    this.i = 1;
                    break;
                }
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Util.TYPE_OTHER /*3*/:
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                if (!(this.m == null || f())) {
                    imageRect = getImageRect();
                    if (imageRect != null && (!imageRect.contains(this.c) || this.i == 1)) {
                        this.l = false;
                        this.m.b();
                    }
                }
                this.i = 0;
                e();
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.i == 1 || this.i == 3) {
                    PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
                    imageRect = getImageRect();
                    float a = b.a(pointF.x - this.f.x, imageRect.right, imageRect.left, this.c.right, this.c.left);
                    boolean a2 = a(0.0f, 0.0f, a, b.a(pointF.y - this.f.y, imageRect.bottom, imageRect.top, this.c.bottom, this.c.top), 1.0f, 0);
                    Object obj = (a != 0.0f || a == pointF.x - this.f.x) ? null : 1;
                    getParent().requestDisallowInterceptTouchEvent(obj == null);
                    if (Math.abs(pointF.x - this.f.x) >= ((float) this.g) || Math.abs(pointF.y - this.f.y) >= ((float) this.g) || a2) {
                        this.i = 3;
                    }
                    this.f.set(pointF);
                    break;
                } else if (this.i == 2) {
                    float a3 = a(motionEvent);
                    if (this.j != 0.0f) {
                        a(this.c.centerX(), this.c.centerY(), 0.0f, 0.0f, a3 / this.j, 0);
                        if (this.m != null) {
                            this.m.a();
                            this.l = true;
                        }
                    }
                    this.j = a3;
                    break;
                } else {
                    return super.onTouchEvent(motionEvent);
                }
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                if (this.i == 1) {
                    this.j = a(motionEvent);
                    this.i = 2;
                    break;
                }
                break;
            default:
                return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public boolean a(float f, float f2, float f3, float f4, float f5, int i) {
        int i2 = i % 360;
        if (i2 == 0 && f5 == 1.0f && f3 == 0.0f && f4 == 0.0f) {
            return false;
        }
        if (i2 != 0) {
            this.a.postRotate((float) i2, f, f2);
        }
        if (f5 != 1.0f) {
            this.a.postScale(f5, f5, f, f2);
        }
        if (!(f3 == 0.0f && f4 == 0.0f)) {
            this.a.postTranslate(f3, f4);
        }
        setScaleType(ScaleType.MATRIX);
        setImageMatrix(this.a);
        return true;
    }

    public void setScaleType(ScaleType scaleType) {
        super.setScaleType(ScaleType.MATRIX);
    }

    protected void e() {
        RectF imageRect = getImageRect();
        if (imageRect != null && !imageRect.contains(this.c)) {
            RectF rectF = this.c;
            RectF rectF2 = this.b;
            float max = Math.max(1.0f, b.a(imageRect, rectF, false));
            float centerX = rectF2.centerX();
            float centerY = rectF2.centerY();
            a(centerX, centerY, 0.0f, 0.0f, max, 0);
            imageRect.set(getImageRect());
            a(centerX, centerY, b.a(0.0f, imageRect.right, imageRect.left, rectF.right, rectF.left), b.a(0.0f, imageRect.bottom, imageRect.top, rectF.bottom, rectF.top), 1.0f, 0);
            this.j = 1.0f;
        }
    }

    protected void a(float f, float f2, float f3) {
        if (f3 != 1.0f || f != 0.0f || f2 != 0.0f) {
            if (f3 != 1.0f) {
                this.c.inset(((1.0f - f3) * this.c.width()) / 2.0f, ((1.0f - f3) * this.c.height()) / 2.0f);
            }
            if (!(f == 0.0f && f2 == 0.0f)) {
                this.c.offset(f, f2);
            }
            invalidate();
        }
    }

    protected void a() {
        RectF rectF = new RectF(this.c);
        RectF rectF2 = new RectF(this.b);
        float centerX = rectF.centerX();
        float centerY = rectF.centerY();
        float centerX2 = rectF2.centerX() - centerX;
        float centerY2 = rectF2.centerY() - centerY;
        float a = b.a(rectF, rectF2, true);
        a(centerX, centerY, centerX2, centerY2, a, 0);
        a(centerX2, centerY2, a);
    }

    private static float a(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() > 1) {
            return b.a(motionEvent.getX(0) - motionEvent.getX(1), motionEvent.getY(0) - motionEvent.getY(1));
        }
        return 0.0f;
    }

    public void setMultiTouchListener(s sVar) {
        this.m = sVar;
    }

    private Size getDrawableSize() {
        return getDrawable() != null ? Size.a(getDrawable()) : Size.b;
    }

    protected RectF getImageRect() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return null;
        }
        RectF rectF = new RectF(0.0f, 0.0f, (float) drawable.getIntrinsicWidth(), (float) drawable.getIntrinsicHeight());
        this.a.mapRect(rectF);
        return rectF;
    }

    public RectF getActiveRect() {
        return this.c;
    }

    public c getNormalizedImageSelection() {
        Size drawableSize = getDrawableSize();
        if (drawableSize.c()) {
            return c.c;
        }
        RectF rectF = new RectF(this.c);
        Matrix matrix = new Matrix();
        this.a.invert(matrix);
        matrix.mapRect(rectF);
        return c.a(rectF, drawableSize);
    }

    public void setImageSelection(c cVar) {
        if (c()) {
            RectF b = cVar.b(getDrawableSize());
            this.h = false;
            this.a.mapRect(b);
            this.c.set(b);
            a();
            e();
            return;
        }
        this.k = cVar;
    }

    public int getImageRotation() {
        return r.a(this.d);
    }

    public boolean f() {
        return this.j == 1.0f;
    }

    public boolean g() {
        return this.l;
    }
}
