package com.twitter.android.media.stickers;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.twitter.media.util.a;
import com.twitter.util.math.Size;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class StickerSheenView extends ImageView {
    private final Paint a;
    private final Paint b;
    private final int[] c;
    private final Canvas d;
    private final Rect e;
    private final Matrix f;
    private ValueAnimator g;
    private Shader h;
    private Bitmap i;
    private int j;
    private int k;
    private int l;
    private float m;
    private float n;

    public StickerSheenView(Context context) {
        this(context, null, 0);
    }

    public StickerSheenView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StickerSheenView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = getColors();
        this.a = new Paint();
        this.b = new Paint();
        setLayerType(2, null);
        this.b.setXfermode(new PorterDuffXfermode(Mode.DST_IN));
        this.i = a.a(Size.a(1, 1), Config.ALPHA_8);
        this.d = new Canvas();
        if (this.i != null) {
            this.d.setBitmap(this.i);
        }
        this.e = new Rect();
        this.f = new Matrix();
    }

    public void a() {
        this.m = 0.0f;
        if (this.g == null) {
            this.g = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
            this.g.setDuration(700);
            this.g.addUpdateListener(new f(this));
            this.g.addListener(new g(this));
        }
        if (this.g.isRunning()) {
            this.g.cancel();
        }
        this.g.start();
    }

    public void b() {
        if (this.i != null) {
            this.i.recycle();
        }
        this.i = null;
        this.m = 0.0f;
    }

    public void c() {
        if (this.g != null) {
            this.g.cancel();
        }
        this.m = 0.0f;
    }

    protected void onDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        if (width == 0 || height == 0) {
            super.onDraw(canvas);
            return;
        }
        float rotation = getRotation();
        if (width == this.k && height == this.l && this.i != null) {
            this.f.reset();
            this.f.postTranslate(this.m, (float) this.e.top);
            if (this.n != rotation || this.h == null) {
                this.n = rotation;
                d();
            }
            this.h.setLocalMatrix(this.f);
        } else {
            if (this.i != null) {
                this.i.recycle();
            }
            this.i = a.a(Size.a(width, height), Config.ALPHA_8);
            if (this.i == null) {
                super.onDraw(canvas);
                return;
            }
            this.k = width;
            this.l = height;
            this.n = rotation;
            d();
        }
        this.d.setBitmap((Bitmap) e.a(this.i));
        super.onDraw(this.d);
        if (this.m >= ((float) (this.e.width() + this.j))) {
            this.m = 0.0f;
            return;
        }
        this.a.setShader(this.h);
        canvas.save();
        canvas.rotate(20.0f - rotation, (float) (width / 2), (float) (height / 2));
        canvas.drawPaint(this.a);
        canvas.restore();
        canvas.drawBitmap((Bitmap) e.a(this.i), 0.0f, 0.0f, this.b);
    }

    private void d() {
        this.e.set(0, 0, this.k, this.l);
        a(this.e, this.n);
        this.j = Math.round(((float) this.e.width()) * 0.7f);
        this.h = new LinearGradient((float) (this.e.left - this.j), (float) this.e.top, (float) this.e.left, (float) this.e.top, this.c, null, TileMode.CLAMP);
    }

    private static int[] getColors() {
        int i;
        int round = Math.round(76.5f);
        int i2 = round * 2;
        int[] iArr = new int[i2];
        for (i = 0; i < round; i++) {
            iArr[i] = (i << 24) | 16777215;
        }
        i = round;
        while (i > 0 && round < i2) {
            iArr[round] = ((i - 1) << 24) | 16777215;
            i--;
            round++;
        }
        return iArr;
    }

    private static void a(Rect rect, float f) {
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        int width = rect.width() / 2;
        int height = rect.height() / 2;
        double toRadians = Math.toRadians((double) f);
        double cos = Math.cos(toRadians);
        toRadians = Math.sin(toRadians);
        int i5 = (int) ((((double) width) + (((double) (i - width)) * cos)) + (((double) (i2 - height)) * toRadians));
        int i6 = (int) ((((double) height) - (((double) (i - width)) * toRadians)) + (((double) (i2 - height)) * cos));
        int i7 = (int) ((((double) width) + (((double) (i3 - width)) * cos)) + (((double) (i2 - height)) * toRadians));
        i2 = (int) ((((double) height) - (((double) (i3 - width)) * toRadians)) + (((double) (i2 - height)) * cos));
        int i8 = (int) ((((double) width) + (((double) (i3 - width)) * cos)) + (((double) (i4 - height)) * toRadians));
        i3 = (int) ((((double) height) - (((double) (i3 - width)) * toRadians)) + (((double) (i4 - height)) * cos));
        int i9 = (int) ((((double) width) + (((double) (i - width)) * cos)) + (((double) (i4 - height)) * toRadians));
        double d = (double) (i - width);
        double d2 = ((double) (i4 - height)) * cos;
        i = (int) (d2 + (((double) height) - (toRadians * r0)));
        rect.set(Math.min(Math.min(i5, i7), Math.min(i8, i9)), Math.min(Math.min(i6, i2), Math.min(i3, i)), Math.max(Math.max(i5, i7), Math.max(i8, i9)), Math.max(Math.max(i6, i2), Math.max(i3, i)));
    }
}
