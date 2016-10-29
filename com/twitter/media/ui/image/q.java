package com.twitter.media.ui.image;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.view.View.MeasureSpec;

/* compiled from: Twttr */
class q {
    private final Paint a;
    private final Matrix b;
    private final int c;
    private final Shape d;
    private final float[] e;
    private Bitmap f;
    private BitmapShader g;
    private int h;
    private int i;

    q(float[] fArr) {
        int i = 0;
        this.a = new Paint(1);
        this.b = new Matrix();
        this.h = 0;
        this.i = 0;
        this.e = fArr;
        this.d = new RoundRectShape(fArr, null, null);
        for (float f : fArr) {
            if (f > ((float) i)) {
                i = (int) f;
            }
        }
        this.c = i;
    }

    public void a(int i, int i2) {
        float f = 0.0f;
        this.d.resize((float) i, (float) i2);
        if (this.g == null) {
            return;
        }
        if (this.h != i || this.i != i2) {
            float f2;
            float f3;
            if (this.h * i2 > this.i * i) {
                f2 = ((float) i2) / ((float) this.i);
                f3 = (((float) i) - (((float) this.h) * f2)) * 0.5f;
            } else {
                f2 = ((float) i) / ((float) this.h);
                f3 = 0.0f;
                f = (((float) i2) - (((float) this.i) * f2)) * 0.5f;
            }
            this.b.setScale(f2, f2);
            this.b.postTranslate((float) ((int) (f3 + 0.5f)), (float) ((int) (f + 0.5f)));
            if (this.g != null) {
                this.g.setLocalMatrix(this.b);
            }
        }
    }

    public int a() {
        return this.h;
    }

    public int b() {
        return this.i;
    }

    public static int a(int i, int i2, int i3) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        switch (mode) {
            case Integer.MIN_VALUE:
                if (i2 == -2) {
                    return Math.min(size, i3);
                }
                if (i2 == -1) {
                    return size;
                }
                return Math.min(size, i2);
            case 1073741824:
                return size;
            default:
                return i3;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.content.Context r4, android.net.Uri r5) {
        /*
        r3 = this;
        r0 = r4.getContentResolver();	 Catch:{ FileNotFoundException -> 0x001c, OutOfMemoryError -> 0x0027 }
        r0 = r0.openInputStream(r5);	 Catch:{ FileNotFoundException -> 0x001c, OutOfMemoryError -> 0x0027 }
        r1 = r5.toString();	 Catch:{ FileNotFoundException -> 0x001c, OutOfMemoryError -> 0x0027 }
        r0 = android.graphics.drawable.Drawable.createFromStream(r0, r1);	 Catch:{ FileNotFoundException -> 0x001c, OutOfMemoryError -> 0x0027 }
        r1 = r3.c;	 Catch:{ FileNotFoundException -> 0x001c, OutOfMemoryError -> 0x0027 }
        r1 = r1 * 2;
        r0 = a(r0, r1);	 Catch:{ FileNotFoundException -> 0x001c, OutOfMemoryError -> 0x0027 }
        r3.a(r0);	 Catch:{ FileNotFoundException -> 0x001c, OutOfMemoryError -> 0x0027 }
    L_0x001b:
        return;
    L_0x001c:
        r0 = move-exception;
    L_0x001d:
        r1 = "RichImageView";
        r2 = "RichImageView.setImageURI failed";
        cfb.c(r1, r2, r0);
        goto L_0x001b;
    L_0x0027:
        r0 = move-exception;
        goto L_0x001d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.media.ui.image.q.a(android.content.Context, android.net.Uri):void");
    }

    public void a(Resources resources, int i) {
        a(a(resources.getDrawable(i), this.c * 2));
    }

    public void a(Drawable drawable) {
        a(drawable != null ? a(drawable, this.c * 2) : null);
    }

    public void a(Bitmap bitmap) {
        if (bitmap != null) {
            this.g = new BitmapShader(bitmap, TileMode.CLAMP, TileMode.CLAMP);
            this.h = bitmap.getWidth();
            this.i = bitmap.getHeight();
        } else {
            this.g = null;
            this.h = 0;
            this.i = 0;
        }
        this.f = bitmap;
        this.a.setShader(this.g);
    }

    public void a(Canvas canvas, int i, int i2) {
        canvas.translate((float) i, (float) i2);
        this.d.draw(canvas, this.a);
    }

    public static Bitmap a(Drawable drawable, int i) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (intrinsicWidth <= 0) {
            intrinsicWidth = i;
        }
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicHeight > 0) {
            i = intrinsicHeight;
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, i, Config.ARGB_8888);
            if (createBitmap == null) {
                return createBitmap;
            }
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (OutOfMemoryError e) {
            return null;
        }
    }
}
