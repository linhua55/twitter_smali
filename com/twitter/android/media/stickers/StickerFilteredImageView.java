package com.twitter.android.media.stickers;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.media.widget.HoverGarbageCanView;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.FilteredImageView;
import com.twitter.media.util.ImageOrientation;
import com.twitter.model.media.EditableImage;
import com.twitter.util.math.Size;
import com.twitter.util.math.b;
import com.twitter.util.math.c;
import com.twitter.util.object.e;
import defpackage.bdd;
import java.util.ArrayList;

/* compiled from: Twttr */
public class StickerFilteredImageView extends FilteredImageView {
    private EditableImage A;
    private int B;
    private final Matrix a;
    private final HoverGarbageCanView h;
    private final View i;
    private final float j;
    private final int k;
    private final Rect l;
    private float m;
    private float n;
    private float o;
    private float p;
    private double q;
    private int r;
    private int s;
    private boolean t;
    private boolean u;
    private boolean v;
    private StickerView w;
    private a x;
    private boolean y;
    private Size z;

    public StickerFilteredImageView(Context context) {
        this(context, null);
    }

    public StickerFilteredImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StickerFilteredImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new Matrix();
        this.l = new Rect();
        this.m = -1.0f;
        this.n = -1.0f;
        this.o = -1.0f;
        this.p = -1.0f;
        this.q = 0.0d;
        this.r = -1;
        this.s = -1;
        this.z = Size.b;
        this.j = (float) ViewConfiguration.get(context).getScaledTouchSlop();
        this.i = LayoutInflater.from(context).inflate(2130969425, this, false);
        this.h = (HoverGarbageCanView) this.i.findViewById(2131953303);
        this.k = getResources().getDimensionPixelSize(2131690059);
        addView(this.i);
        this.h.b();
    }

    public void setStickerEditListener(a aVar) {
        this.x = aVar;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        w();
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (childAt instanceof StickerView)) {
                StickerView stickerView = (StickerView) childAt;
                k displayInfo = stickerView.getDisplayInfo();
                if (displayInfo.a() == 0.0f) {
                    int dimensionPixelSize = getResources().getDimensionPixelSize(2131690501);
                    displayInfo.a(((float) this.z.a()) / 2.0f, ((float) this.z.b()) / 2.0f, this.z.a());
                    displayInfo.a(((float) dimensionPixelSize) / ((float) this.B));
                    b(stickerView);
                }
                Size a = displayInfo.a(this.B);
                stickerView.measure(getChildMeasureSpec(i, 0, a.a()), getChildMeasureSpec(i2, 0, a.b()));
                View imageView = ((StickerView) childAt).getImageView();
                imageView.setScaleX(1.0f);
                imageView.setScaleY(1.0f);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z2 = this.w != null;
        boolean z3;
        float x2;
        float y2;
        float abs;
        float x3;
        switch (actionMasked) {
            case Util.TYPE_DASH /*0*/:
                StickerView stickerView = this.w;
                boolean a = a(motionEvent, null);
                z3 = a && stickerView == this.w;
                this.u = z3;
                if (z2 && !a) {
                    z = true;
                }
                this.v = z;
                requestDisallowInterceptTouchEvent(true);
                this.m = x;
                this.n = y;
                this.r = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                if (this.r != -1 && a) {
                    return true;
                }
                this.r = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                actionMasked = MotionEventCompat.findPointerIndex(motionEvent, this.r);
                x2 = MotionEventCompat.getX(motionEvent, actionMasked);
                y2 = MotionEventCompat.getY(motionEvent, actionMasked);
                this.m = x2;
                this.n = y2;
                return true;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (this.h.getGarbageCanState() != 2) {
                    if (this.u && this.w != null) {
                        a(motionEvent, this.w);
                        break;
                    }
                }
                b();
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (z2) {
                    int round;
                    if (this.s == -1) {
                        y2 = Math.abs(x - this.m);
                        abs = Math.abs(y - this.n);
                        if (!this.t) {
                            z3 = y2 >= this.j || abs >= this.j;
                            this.t = z3;
                        }
                        if (this.t) {
                            this.u = false;
                            this.v = false;
                            s();
                            if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.r) {
                                y2 = x - this.m;
                                x2 = y - this.n;
                                this.w.offsetLeftAndRight(Math.round(y2));
                                this.w.offsetTopAndBottom(Math.round(x2));
                                a(this.w.getDisplayInfo(), y2, x2);
                                actionMasked = Math.round(motionEvent.getX());
                                round = Math.round(motionEvent.getY());
                                this.l.left = actionMasked - this.k;
                                this.l.top = round - this.k;
                                this.l.right = actionMasked + this.k;
                                this.l.bottom = round + this.k;
                                if (this.h.a((View) this, this.l)) {
                                    this.w.setAlpha(0.5f);
                                } else {
                                    this.w.setAlpha(1.0f);
                                }
                            }
                            this.m = x;
                            this.n = y;
                            invalidate();
                            return true;
                        }
                    } else if (this.r != -1) {
                        this.u = false;
                        this.v = false;
                        s();
                        this.w.setFromMemoryOnly(true);
                        actionMasked = MotionEventCompat.findPointerIndex(motionEvent, this.r);
                        round = MotionEventCompat.findPointerIndex(motionEvent, this.s);
                        abs = MotionEventCompat.getX(motionEvent, actionMasked);
                        y2 = MotionEventCompat.getY(motionEvent, actionMasked);
                        x3 = MotionEventCompat.getX(motionEvent, round);
                        x2 = MotionEventCompat.getY(motionEvent, round);
                        x = (abs + x3) / 2.0f;
                        y = (y2 + x2) / 2.0f;
                        PointF pointF = new PointF(x, y);
                        double a2 = a(x, y, abs, y2);
                        a(this.w, (float) (this.q - a2));
                        b(this.w, (b.a(pointF, this.m, this.n) - b.a(pointF, abs, y2)) + (b.a(pointF, this.o, this.p) - b.a(pointF, x3, x2)));
                        this.m = abs;
                        this.n = y2;
                        this.o = x3;
                        this.p = x2;
                        this.q = a2;
                        return true;
                    }
                }
                break;
            case Util.TYPE_OTHER /*3*/:
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                this.u = false;
                this.v = false;
                this.s = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                if (this.r == -1 || this.s == -1) {
                    return true;
                }
                actionMasked = MotionEventCompat.findPointerIndex(motionEvent, this.r);
                x2 = MotionEventCompat.getX(motionEvent, actionMasked);
                y2 = MotionEventCompat.getY(motionEvent, actionMasked);
                int findPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.s);
                x3 = MotionEventCompat.getX(motionEvent, findPointerIndex);
                abs = MotionEventCompat.getY(motionEvent, findPointerIndex);
                this.m = x2;
                this.n = y2;
                this.o = x3;
                this.p = abs;
                this.q = a((x3 + x2) / 2.0f, (abs + y2) / 2.0f, x2, y2);
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                u();
                return true;
        }
        u();
        if (z2) {
            this.w.setFromMemoryOnly(false);
            this.w.requestLayout();
            if (this.v) {
                b(null);
            }
        }
        requestDisallowInterceptTouchEvent(false);
        requestDisallowInterceptTouchEvent(false);
        return false;
    }

    private boolean a(MotionEvent motionEvent, StickerView stickerView) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt != stickerView && (childAt instanceof StickerView)) {
                StickerView stickerView2 = (StickerView) childAt;
                Matrix matrix = stickerView2.getMatrix();
                Matrix matrix2 = new Matrix();
                matrix.invert(matrix2);
                Rect rect = new Rect();
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.transform(matrix2);
                stickerView2.getGlobalVisibleRect(rect);
                int round = Math.round(obtain.getRawX());
                int round2 = Math.round(obtain.getRawY());
                obtain.recycle();
                if (rect.contains(round, round2)) {
                    b(stickerView2);
                    bringChildToFront(stickerView2);
                    bringChildToFront(this.i);
                    if (stickerView != null) {
                        removeView(stickerView);
                        int i = 0;
                        while (!(getChildAt(i) instanceof StickerView)) {
                            i++;
                        }
                        addView(stickerView, i);
                    }
                    return true;
                }
            }
        }
        return false;
    }

    private void s() {
        if (this.x != null && !this.y) {
            this.x.a();
            this.y = true;
        }
    }

    private void t() {
        if (this.x != null && this.y) {
            this.x.b();
            this.y = false;
        }
    }

    public void a() {
        b(null);
    }

    public ArrayList<k> getStickers() {
        ArrayList<k> arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            if (getChildAt(i) instanceof StickerView) {
                arrayList.add(((StickerView) getChildAt(i)).getDisplayInfo());
            }
        }
        return arrayList;
    }

    private void a(k kVar, float f, float f2) {
        switch (this.A.e) {
            case bdd.AppCompatTheme_controlBackground /*90*/:
                f = -f;
                break;
            case 180:
                float f3 = -f;
                f = -f2;
                f2 = f3;
                break;
            case 270:
                f2 = -f2;
                break;
            default:
                float f4 = f2;
                f2 = f;
                f = f4;
                break;
        }
        kVar.a(f2, f, this.B);
    }

    private void a(StickerView stickerView, float f) {
        k displayInfo = stickerView.getDisplayInfo();
        float c = displayInfo.c() + f;
        stickerView.setRotation(((float) this.A.e) - c);
        displayInfo.b(c);
    }

    private void b(StickerView stickerView, float f) {
        k displayInfo = stickerView.getDisplayInfo();
        displayInfo.a(f, this.B);
        c(this.w);
        Size a = displayInfo.a(this.B);
        float a2 = ((float) a.a()) / ((float) stickerView.getMeasuredWidth());
        float b = ((float) a.b()) / ((float) stickerView.getMeasuredHeight());
        View imageView = stickerView.getImageView();
        imageView.setPivotX(0.0f);
        imageView.setPivotY(0.0f);
        imageView.setScaleX(a2);
        imageView.setScaleY(b);
    }

    private void b(StickerView stickerView) {
        if (this.w != stickerView) {
            if (this.w != null) {
                this.w.setAlpha(1.0f);
                this.w.setIsActive(false);
                this.w.invalidate();
            }
            this.w = stickerView;
            if (stickerView != null) {
                stickerView.setIsActive(true);
                stickerView.invalidate();
            }
            u();
        }
    }

    private void u() {
        this.s = -1;
        this.r = -1;
        this.m = -1.0f;
        this.n = -1.0f;
        this.o = -1.0f;
        this.p = -1.0f;
        this.q = 0.0d;
        this.t = false;
        if (this.w != null) {
            t();
            this.w.setAlpha(1.0f);
        }
        this.h.a();
        requestLayout();
    }

    public void a(StickerView stickerView) {
        if (!q()) {
            stickerView.setVisibility(8);
        }
        addView(stickerView);
        bringChildToFront(this.i);
    }

    public void b() {
        if (this.w != null) {
            removeView(this.w);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() == 0 && (childAt instanceof StickerView)) {
                c((StickerView) childAt);
            }
        }
    }

    public boolean a(EditableImage editableImage) {
        this.A = editableImage;
        return a(a.a(editableImage.e().toString()).a(editableImage.f).a(editableImage.e), true);
    }

    public boolean a(com.twitter.media.request.b bVar) {
        return super.a(bVar != null ? bVar.a(true) : null);
    }

    public boolean a(com.twitter.media.request.b bVar, boolean z) {
        return super.a(bVar != null ? bVar.a(true) : null, z);
    }

    private void c(StickerView stickerView) {
        k displayInfo = stickerView.getDisplayInfo();
        Rect a = a(displayInfo);
        stickerView.layout(a.left, a.top, a.right, a.bottom);
        stickerView.setRotation(displayInfo.c() + ((float) this.A.e));
    }

    private Rect a(k kVar) {
        int i = this.B;
        Size a = kVar.a(i);
        float[] fArr = new float[2];
        fArr[0] = (((float) a.a()) / 2.0f) + kVar.b(i);
        fArr[1] = kVar.c(i) + (((float) a.b()) / 2.0f);
        this.a.mapPoints(fArr);
        return a.b(Math.round(fArr[0]), Math.round(fArr[1]));
    }

    private void v() {
        if (this.A == null) {
            this.B = 0;
            return;
        }
        c cVar = this.A.f;
        if (cVar == null && this.A.e == 0) {
            this.B = this.z.a();
            return;
        }
        ImageOrientation a = ImageOrientation.a(-this.A.e);
        this.B = Math.round(((float) a.a(this.z).a()) / a.a((c) e.b(cVar, c.c)).c());
    }

    public void a(ImageResponse imageResponse, Drawable drawable) {
        super.a(imageResponse, drawable);
        if (drawable != null) {
            this.z = Size.a(drawable);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt instanceof StickerView) {
                    childAt.setVisibility(0);
                }
            }
            requestLayout();
        }
    }

    private void w() {
        if (this.A != null) {
            v();
            this.z = this.z.c(Size.a((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()));
            float measuredHeight = (float) ((getMeasuredHeight() - this.z.b()) / 2);
            float measuredWidth = (float) ((getMeasuredWidth() - this.z.a()) / 2);
            this.z.f().offset(Math.round(measuredHeight), Math.round(measuredWidth));
            int i = this.B;
            RectF b = ImageOrientation.a(-this.A.e).a((c) e.b(this.A.f, c.c)).b(Size.a(i, Math.round(((float) i) / this.A.f().e())));
            Matrix matrix = this.a;
            matrix.setTranslate(-b.left, -b.top);
            matrix.postRotate((float) this.A.e, b.width() / 2.0f, b.height() / 2.0f);
            RectF rectF = new RectF();
            matrix.mapRect(rectF, b);
            matrix.postTranslate(measuredWidth - rectF.left, measuredHeight - rectF.top);
        }
    }

    private static double a(float f, float f2, float f3, float f4) {
        double toDegrees = Math.toDegrees(Math.atan2((double) (f3 - f), (double) (f4 - f2)));
        return toDegrees > 0.0d ? toDegrees : toDegrees + 360.0d;
    }
}
