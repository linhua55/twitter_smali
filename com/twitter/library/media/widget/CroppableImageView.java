package com.twitter.library.media.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import bbn;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.AppConfig;
import com.twitter.media.util.a;
import com.twitter.util.math.b;
import defpackage.bct;
import defpackage.bcu;
import defpackage.bcw;
import defpackage.bdd;

/* compiled from: Twttr */
public class CroppableImageView extends MultiTouchImageView {
    private final Bitmap e;
    private final Bitmap f;
    private final Bitmap g;
    private final Bitmap h;
    private final Paint i;
    private final Paint j;
    private final Paint k;
    private final RectF l;
    private final PointF m;
    private boolean n;
    private boolean o;
    private m p;
    private boolean q;
    private int r;
    private int s;
    private final int t;
    private final int u;
    private int v;

    public CroppableImageView(Context context) {
        this(context, null);
    }

    public CroppableImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.croppableImageViewStyle);
    }

    public CroppableImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = new Paint();
        this.j = new Paint();
        this.k = new Paint();
        this.l = new RectF();
        this.m = new PointF();
        Resources resources = getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.CroppableImageView, i, 0);
        this.t = obtainStyledAttributes.getDimensionPixelSize(bdd.CroppableImageView_cropRectPadding, 0);
        this.u = obtainStyledAttributes.getDimensionPixelSize(bdd.CroppableImageView_toolbarMargin, 0);
        this.o = obtainStyledAttributes.getBoolean(bdd.CroppableImageView_draggableCorners, true);
        this.n = obtainStyledAttributes.getBoolean(bdd.CroppableImageView_showGrid, false);
        Paint paint = this.i;
        paint.setColor(obtainStyledAttributes.getColor(bdd.CroppableImageView_cropRectStrokeColor, resources.getColor(bcu.white)));
        paint.setStyle(Style.STROKE);
        paint.setStrokeWidth(obtainStyledAttributes.getFloat(bdd.CroppableImageView_cropRectStrokeWidth, 2.0f));
        paint = this.j;
        paint.setColor(obtainStyledAttributes.getColor(bdd.CroppableImageView_gridColor, 0));
        paint.setStyle(Style.STROKE);
        paint.setStrokeWidth(0.0f);
        this.k.setColor(obtainStyledAttributes.getColor(bdd.CroppableImageView_cropShadowColor, resources.getColor(bcu.dark_transparent_black)));
        obtainStyledAttributes.recycle();
        if (this.o) {
            Matrix matrix = new Matrix();
            this.e = BitmapFactory.decodeResource(getResources(), bcw.ic_filters_crop_corner);
            matrix.postRotate(90.0f);
            this.f = a.a(this.e, null, matrix, false);
            matrix.postRotate(90.0f);
            this.h = a.a(this.e, null, matrix, false);
            matrix.postRotate(90.0f);
            this.g = a.a(this.e, null, matrix, false);
            this.s = this.e.getWidth();
            return;
        }
        this.e = null;
        this.f = null;
        this.h = null;
        this.g = null;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.q || !c()) {
            return false;
        }
        if (!this.o) {
            return super.onTouchEvent(motionEvent);
        }
        switch (motionEvent.getAction() & NalUnitUtil.EXTENDED_SAR) {
            case Util.TYPE_DASH /*0*/:
                this.m.set(motionEvent.getX(), motionEvent.getY());
                this.r = a(this.m);
                if (this.r != 0) {
                    return true;
                }
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Util.TYPE_OTHER /*3*/:
                if (this.r != 0) {
                    this.r = 0;
                    a(true);
                    return true;
                }
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.r != 0) {
                    PointF pointF = new PointF(motionEvent.getX(0), motionEvent.getY(0));
                    pointF.set(b.a(pointF.x, 0.0f, 0.0f, this.b.left, this.b.right), b.a(pointF.y, 0.0f, 0.0f, this.b.top, this.b.bottom));
                    a(this.r, pointF.x - this.m.x, pointF.y - this.m.y);
                    if (this.p != null) {
                        this.p.a();
                    }
                    this.m.set(pointF);
                    return true;
                }
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCropAspectRatio(float f) {
        RectF imageRect = getImageRect();
        if (imageRect != null) {
            imageRect.intersect(getPaddedViewRect());
            if (imageRect.width() / imageRect.height() < f) {
                imageRect.inset(0.0f, (imageRect.height() - (imageRect.width() / f)) / 2.0f);
            } else {
                imageRect.inset((imageRect.width() - (imageRect.height() * f)) / 2.0f, 0.0f);
            }
            this.c.set(imageRect);
            a(true);
            invalidate();
            return;
        }
        Throwable illegalStateException = new IllegalStateException("Crop aspect ratio cannot be set until drawable is ready");
        bbn.a(illegalStateException);
        if (AppConfig.m().a()) {
            throw illegalStateException;
        }
    }

    public void a(int i, boolean z) {
        if (!this.q) {
            this.d += i;
            if (z) {
                new n(this, i).a();
                return;
            }
            a(this.c.centerX(), this.c.centerY(), 0.0f, 0.0f, 1.0f, i);
            e();
        }
    }

    public void setRotation(int i) {
        if (c()) {
            int i2 = i - this.d;
            a(this.c.centerX(), this.c.centerY(), 0.0f, 0.0f, 1.0f, i2);
            Matrix matrix = new Matrix();
            matrix.postRotate((float) i2, this.c.centerX(), this.c.centerY());
            matrix.mapRect(this.c);
            e();
            this.d = i;
            return;
        }
        this.v = i;
    }

    public void setCropListener(m mVar) {
        this.p = mVar;
    }

    public void setDraggableCorners(boolean z) {
        if (this.o != z) {
            this.o = z;
            invalidate();
        }
    }

    public void setShowGrid(boolean z) {
        if (this.n != z) {
            this.n = z;
            invalidate();
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        RectF rectF = this.c;
        RectF rectF2 = this.l;
        Paint paint = this.k;
        rectF2.set(0.0f, rectF.top, rectF.left, rectF.bottom);
        canvas.drawRect(rectF2, paint);
        rectF2.set(0.0f, 0.0f, (float) width, rectF.top);
        canvas.drawRect(rectF2, paint);
        rectF2.set(rectF.right, rectF.top, (float) width, rectF.bottom);
        canvas.drawRect(rectF2, paint);
        rectF2.set(0.0f, rectF.bottom, (float) width, (float) height);
        canvas.drawRect(rectF2, paint);
        canvas.drawRect(this.c, this.i);
        if (this.n) {
            float width2 = (rectF.width() * 0.33333334f) + rectF.left;
            float width3 = rectF.left + (rectF.width() * 0.6666667f);
            float height2 = rectF.top + (rectF.height() * 0.33333334f);
            float height3 = rectF.top + (rectF.height() * 0.6666667f);
            canvas.drawLine(width2, rectF.top, width2, rectF.bottom, this.j);
            canvas.drawLine(width3, rectF.top, width3, rectF.bottom, this.j);
            canvas.drawLine(rectF.left, height2, rectF.right, height2, this.j);
            canvas.drawLine(rectF.left, height3, rectF.right, height3, this.j);
            width = this.e.getWidth();
            width2 = (((float) width) * 0.13636364f) - 1.0f;
            canvas.drawBitmap(this.e, rectF.left - width2, rectF.top - width2, null);
            canvas.drawBitmap(this.f, (rectF.right - ((float) width)) + width2, rectF.top - width2, null);
            canvas.drawBitmap(this.h, (rectF.right - ((float) width)) + width2, (rectF.bottom - ((float) width)) + width2, null);
            canvas.drawBitmap(this.g, rectF.left - width2, (rectF.bottom - ((float) width)) + width2, null);
        }
    }

    private RectF getPaddedViewRect() {
        RectF rectF = new RectF(this.b);
        rectF.top += (float) this.u;
        rectF.inset((float) this.t, (float) this.t);
        return rectF;
    }

    protected void a() {
        a(false);
    }

    protected void b() {
        if (c() && this.v != 0) {
            setRotation(this.v);
            this.v = 0;
        }
        super.b();
    }

    private void a(boolean z) {
        RectF rectF = this.c;
        RectF paddedViewRect = getPaddedViewRect();
        float centerX = rectF.centerX();
        float centerY = rectF.centerY();
        float centerX2 = paddedViewRect.centerX();
        float centerY2 = paddedViewRect.centerY();
        float f = centerX2 - centerX;
        float f2 = centerY2 - centerY;
        float a = b.a(rectF, paddedViewRect, true);
        if (f != 0.0f || f2 != 0.0f || a != 1.0f) {
            if (z) {
                new o(this, centerX, centerX2, centerY, centerY2, a).a();
                return;
            }
            a(centerX, centerY, f, f2, a, 0);
            a(f, f2, a);
        }
    }

    private int a(PointF pointF) {
        RectF rectF = this.c;
        if (b.a(pointF, rectF.left, rectF.top) < ((float) this.s)) {
            return 1;
        }
        if (b.a(pointF, rectF.right, rectF.top) < ((float) this.s)) {
            return 2;
        }
        if (b.a(pointF, rectF.right, rectF.bottom) < ((float) this.s)) {
            return 3;
        }
        if (b.a(pointF, rectF.left, rectF.bottom) < ((float) this.s)) {
            return 4;
        }
        return 0;
    }

    private void a(int i, float f, float f2) {
        RectF imageRect = getImageRect();
        RectF rectF = this.c;
        float f3 = (float) this.s;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                rectF.left += b.a(f, rectF.left, rectF.left, imageRect.left, rectF.right - f3);
                rectF.top = b.a(f2, rectF.top, rectF.top, imageRect.top, rectF.bottom - f3) + rectF.top;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                rectF.right += b.a(f, rectF.right, rectF.right, rectF.left + f3, imageRect.right);
                rectF.top = b.a(f2, rectF.top, rectF.top, imageRect.top, rectF.bottom - f3) + rectF.top;
                break;
            case Util.TYPE_OTHER /*3*/:
                rectF.right += b.a(f, rectF.right, rectF.right, rectF.left + f3, imageRect.right);
                rectF.bottom = b.a(f2, rectF.bottom, rectF.bottom, f3 + rectF.top, imageRect.bottom) + rectF.bottom;
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                rectF.left += b.a(f, rectF.left, rectF.left, imageRect.left, rectF.right - f3);
                rectF.bottom = b.a(f2, rectF.bottom, rectF.bottom, f3 + rectF.top, imageRect.bottom) + rectF.bottom;
                break;
        }
        invalidate();
    }

    private void setAnimating(boolean z) {
        this.q = z;
    }
}
