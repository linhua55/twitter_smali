package com.facebook.shimmer;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bdd;

/* compiled from: Twttr */
public class ShimmerFrameLayout extends FrameLayout {
    private static final PorterDuffXfermode c;
    protected ValueAnimator a;
    protected Bitmap b;
    private Paint d;
    private Paint e;
    private f f;
    private g g;
    private Bitmap h;
    private Bitmap i;
    private boolean j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private boolean q;
    private OnGlobalLayoutListener r;

    /* compiled from: Twttr */
    public enum MaskAngle {
        CW_0,
        CW_90,
        CW_180,
        CW_270
    }

    /* compiled from: Twttr */
    public enum MaskShape {
        LINEAR,
        RADIAL
    }

    static {
        c = new PorterDuffXfermode(Mode.DST_IN);
    }

    public ShimmerFrameLayout(Context context) {
        this(context, null, 0);
    }

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setWillNotDraw(false);
        this.f = new f();
        this.d = new Paint();
        this.e = new Paint();
        this.e.setAntiAlias(true);
        this.e.setDither(true);
        this.e.setFilterBitmap(true);
        this.e.setXfermode(c);
        a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.ShimmerFrameLayout, 0, 0);
            try {
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_auto_start)) {
                    setAutoStart(obtainStyledAttributes.getBoolean(b.ShimmerFrameLayout_auto_start, false));
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_base_alpha)) {
                    setBaseAlpha(obtainStyledAttributes.getFloat(b.ShimmerFrameLayout_base_alpha, 0.0f));
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_duration)) {
                    setDuration(obtainStyledAttributes.getInt(b.ShimmerFrameLayout_duration, 0));
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_repeat_count)) {
                    setRepeatCount(obtainStyledAttributes.getInt(b.ShimmerFrameLayout_repeat_count, 0));
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_repeat_delay)) {
                    setRepeatDelay(obtainStyledAttributes.getInt(b.ShimmerFrameLayout_repeat_delay, 0));
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_repeat_mode)) {
                    setRepeatMode(obtainStyledAttributes.getInt(b.ShimmerFrameLayout_repeat_mode, 0));
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_angle)) {
                    switch (obtainStyledAttributes.getInt(b.ShimmerFrameLayout_angle, 0)) {
                        case bdd.AppCompatTheme_controlBackground /*90*/:
                            this.f.a = MaskAngle.CW_90;
                            break;
                        case 180:
                            this.f.a = MaskAngle.CW_180;
                            break;
                        case 270:
                            this.f.a = MaskAngle.CW_270;
                            break;
                        default:
                            this.f.a = MaskAngle.CW_0;
                            break;
                    }
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_shape)) {
                    switch (obtainStyledAttributes.getInt(b.ShimmerFrameLayout_shape, 0)) {
                        case ModuleDescriptor.MODULE_VERSION /*1*/:
                            this.f.i = MaskShape.RADIAL;
                            break;
                        default:
                            this.f.i = MaskShape.LINEAR;
                            break;
                    }
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_dropoff)) {
                    this.f.c = obtainStyledAttributes.getFloat(b.ShimmerFrameLayout_dropoff, 0.0f);
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_fixed_width)) {
                    this.f.d = obtainStyledAttributes.getDimensionPixelSize(b.ShimmerFrameLayout_fixed_width, 0);
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_fixed_height)) {
                    this.f.e = obtainStyledAttributes.getDimensionPixelSize(b.ShimmerFrameLayout_fixed_height, 0);
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_intensity)) {
                    this.f.f = obtainStyledAttributes.getFloat(b.ShimmerFrameLayout_intensity, 0.0f);
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_relative_width)) {
                    this.f.g = obtainStyledAttributes.getFloat(b.ShimmerFrameLayout_relative_width, 0.0f);
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_relative_height)) {
                    this.f.h = obtainStyledAttributes.getFloat(b.ShimmerFrameLayout_relative_height, 0.0f);
                }
                if (obtainStyledAttributes.hasValue(b.ShimmerFrameLayout_tilt)) {
                    this.f.b = obtainStyledAttributes.getFloat(b.ShimmerFrameLayout_tilt, 0.0f);
                }
                obtainStyledAttributes.recycle();
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
            }
        }
    }

    public void a() {
        setAutoStart(false);
        setDuration(ExoPlayerImplInternal.MSG_SEEK_COMPLETE);
        setRepeatCount(-1);
        setRepeatDelay(0);
        setRepeatMode(1);
        this.f.a = MaskAngle.CW_0;
        this.f.i = MaskShape.LINEAR;
        this.f.c = 0.5f;
        this.f.d = 0;
        this.f.e = 0;
        this.f.f = 0.0f;
        this.f.g = 1.0f;
        this.f.h = 1.0f;
        this.f.b = 20.0f;
        this.g = new g();
        setBaseAlpha(0.3f);
        g();
    }

    public void setAutoStart(boolean z) {
        this.j = z;
        g();
    }

    public float getBaseAlpha() {
        return ((float) this.d.getAlpha()) / 255.0f;
    }

    public void setBaseAlpha(float f) {
        this.d.setAlpha((int) (a(0.0f, 1.0f, f) * 255.0f));
        g();
    }

    public int getDuration() {
        return this.k;
    }

    public void setDuration(int i) {
        this.k = i;
        g();
    }

    public int getRepeatCount() {
        return this.l;
    }

    public void setRepeatCount(int i) {
        this.l = i;
        g();
    }

    public int getRepeatDelay() {
        return this.m;
    }

    public void setRepeatDelay(int i) {
        this.m = i;
        g();
    }

    public int getRepeatMode() {
        return this.n;
    }

    public void setRepeatMode(int i) {
        this.n = i;
        g();
    }

    public MaskShape getMaskShape() {
        return this.f.i;
    }

    public void setMaskShape(MaskShape maskShape) {
        this.f.i = maskShape;
        g();
    }

    public MaskAngle getAngle() {
        return this.f.a;
    }

    public void setAngle(MaskAngle maskAngle) {
        this.f.a = maskAngle;
        g();
    }

    public float getDropoff() {
        return this.f.c;
    }

    public void setDropoff(float f) {
        this.f.c = f;
        g();
    }

    public int getFixedWidth() {
        return this.f.d;
    }

    public void setFixedWidth(int i) {
        this.f.d = i;
        g();
    }

    public int getFixedHeight() {
        return this.f.e;
    }

    public void setFixedHeight(int i) {
        this.f.e = i;
        g();
    }

    public float getIntensity() {
        return this.f.f;
    }

    public void setIntensity(float f) {
        this.f.f = f;
        g();
    }

    public float getRelativeWidth() {
        return this.f.g;
    }

    public void setRelativeWidth(int i) {
        this.f.g = (float) i;
        g();
    }

    public float getRelativeHeight() {
        return this.f.h;
    }

    public void setRelativeHeight(int i) {
        this.f.h = (float) i;
        g();
    }

    public float getTilt() {
        return this.f.b;
    }

    public void setTilt(float f) {
        this.f.b = f;
        g();
    }

    public void b() {
        if (!this.q) {
            getShimmerAnimation().start();
            this.q = true;
        }
    }

    public void c() {
        if (this.a != null) {
            this.a.end();
            this.a.removeAllUpdateListeners();
            this.a.cancel();
        }
        this.a = null;
        this.q = false;
    }

    private void setMaskOffsetX(int i) {
        if (this.o != i) {
            this.o = i;
            invalidate();
        }
    }

    private void setMaskOffsetY(int i) {
        if (this.p != i) {
            this.p = i;
            invalidate();
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.r == null) {
            this.r = getLayoutListener();
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.r);
    }

    private OnGlobalLayoutListener getLayoutListener() {
        return new c(this);
    }

    protected void onDetachedFromWindow() {
        c();
        if (this.r != null) {
            getViewTreeObserver().removeGlobalOnLayoutListener(this.r);
            this.r = null;
        }
        super.onDetachedFromWindow();
    }

    protected void dispatchDraw(Canvas canvas) {
        if (!this.q || getWidth() <= 0 || getHeight() <= 0) {
            super.dispatchDraw(canvas);
        } else {
            a(canvas);
        }
    }

    private static float a(float f, float f2, float f3) {
        return Math.min(f2, Math.max(f, f3));
    }

    private boolean a(Canvas canvas) {
        Bitmap d = d();
        Bitmap e = e();
        if (d == null || e == null) {
            return false;
        }
        b(new Canvas(d));
        canvas.drawBitmap(d, 0.0f, 0.0f, this.d);
        c(new Canvas(e));
        canvas.drawBitmap(e, 0.0f, 0.0f, null);
        return true;
    }

    private Bitmap d() {
        if (this.i == null) {
            this.i = f();
        }
        return this.i;
    }

    private Bitmap e() {
        if (this.h == null) {
            this.h = f();
        }
        return this.h;
    }

    private Bitmap f() {
        int width = getWidth();
        int height = getHeight();
        try {
            return a(width, height);
        } catch (OutOfMemoryError e) {
            StringBuilder stringBuilder = new StringBuilder("ShimmerFrameLayout failed to create working bitmap");
            stringBuilder.append(" (width = ");
            stringBuilder.append(width);
            stringBuilder.append(", height = ");
            stringBuilder.append(height);
            stringBuilder.append(")\n\n");
            for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
                stringBuilder.append(stackTraceElement.toString());
                stringBuilder.append("\n");
            }
            Log.d("ShimmerFrameLayout", stringBuilder.toString());
            return null;
        }
    }

    private void b(Canvas canvas) {
        canvas.drawColor(0, Mode.CLEAR);
        super.dispatchDraw(canvas);
    }

    private void c(Canvas canvas) {
        Bitmap maskBitmap = getMaskBitmap();
        if (maskBitmap != null) {
            canvas.clipRect(this.o, this.p, this.o + maskBitmap.getWidth(), this.p + maskBitmap.getHeight());
            canvas.drawColor(0, Mode.CLEAR);
            super.dispatchDraw(canvas);
            canvas.drawBitmap(maskBitmap, (float) this.o, (float) this.p, this.e);
        }
    }

    private void g() {
        c();
        h();
        i();
    }

    private void h() {
        if (this.b != null) {
            this.b.recycle();
            this.b = null;
        }
    }

    private void i() {
        if (this.i != null) {
            this.i.recycle();
            this.i = null;
        }
        if (this.h != null) {
            this.h.recycle();
            this.h = null;
        }
    }

    private Bitmap getMaskBitmap() {
        if (this.b != null) {
            return this.b;
        }
        Shader radialGradient;
        int a = this.f.a(getWidth());
        int b = this.f.b(getHeight());
        this.b = a(a, b);
        Canvas canvas = new Canvas(this.b);
        switch (e.a[this.f.i.ordinal()]) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                radialGradient = new RadialGradient((float) (a / 2), (float) (b / 2), (float) (((double) Math.max(a, b)) / Math.sqrt(2.0d)), this.f.a(), this.f.b(), TileMode.REPEAT);
                break;
            default:
                int i;
                int i2;
                int i3;
                int i4;
                switch (e.b[this.f.a.ordinal()]) {
                    case Buffer.FLAG_DECODE_ONLY /*2*/:
                        i = b;
                        i2 = 0;
                        i3 = 0;
                        i4 = 0;
                        break;
                    case Util.TYPE_OTHER /*3*/:
                        i = 0;
                        i2 = 0;
                        i3 = 0;
                        i4 = a;
                        break;
                    case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                        i = 0;
                        i2 = 0;
                        i3 = b;
                        i4 = 0;
                        break;
                    default:
                        i = 0;
                        i2 = a;
                        i3 = 0;
                        i4 = 0;
                        break;
                }
                radialGradient = new LinearGradient((float) i4, (float) i3, (float) i2, (float) i, this.f.a(), this.f.b(), TileMode.REPEAT);
                break;
        }
        canvas.rotate(this.f.b, (float) (a / 2), (float) (b / 2));
        Paint paint = new Paint();
        paint.setShader(radialGradient);
        int sqrt = ((int) (Math.sqrt(2.0d) * ((double) Math.max(a, b)))) / 2;
        float f = (float) (sqrt + b);
        canvas.drawRect((float) (-sqrt), (float) (-sqrt), (float) (a + sqrt), f, paint);
        return this.b;
    }

    private Animator getShimmerAnimation() {
        if (this.a != null) {
            return this.a;
        }
        int width = getWidth();
        int height = getHeight();
        int i = e.a[this.f.i.ordinal()];
        switch (e.b[this.f.a.ordinal()]) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.g.a(0, -height, 0, height);
                break;
            case Util.TYPE_OTHER /*3*/:
                this.g.a(width, 0, -width, 0);
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                this.g.a(0, height, 0, -height);
                break;
            default:
                this.g.a(-width, 0, width, 0);
                break;
        }
        this.a = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f + (((float) this.m) / ((float) this.k))});
        this.a.setDuration((long) (this.k + this.m));
        this.a.setRepeatCount(this.l);
        this.a.setRepeatMode(this.n);
        this.a.addUpdateListener(new d(this));
        return this.a;
    }

    protected static Bitmap a(int i, int i2) {
        try {
            return Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        } catch (OutOfMemoryError e) {
            System.gc();
            return Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        }
    }
}
