package com.twitter.media.util;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.twitter.util.collection.k;
import com.twitter.util.math.Size;
import com.twitter.util.math.b;
import com.twitter.util.math.c;
import com.twitter.util.object.e;
import defpackage.cse;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public enum ImageOrientation {
    UNDEFINED(false, 0, 0),
    NORMAL(false, 0, 1),
    FLIP_HORIZONTAL(true, 0, 2),
    ROTATE_180(false, 180, 3),
    FLIP_VERTICAL(true, 180, 4),
    TRANSPOSE(true, 90, 5),
    ROTATE_90(false, 90, 6),
    TRANSVERSE(true, 270, 7),
    ROTATE_270(false, 270, 8);
    
    private static final k<ImageOrientation> j;
    public final int degrees;
    public final int exifOrientation;
    public final boolean flipped;

    static {
        j = new k();
        j.a(0, UNDEFINED);
        j.a(1, NORMAL);
        j.a(2, FLIP_HORIZONTAL);
        j.a(3, ROTATE_180);
        j.a(4, FLIP_VERTICAL);
        j.a(5, TRANSPOSE);
        j.a(6, ROTATE_90);
        j.a(7, TRANSVERSE);
        j.a(8, ROTATE_270);
    }

    private ImageOrientation(boolean z, int i, int i2) {
        this.flipped = z;
        this.degrees = i;
        this.exifOrientation = i2;
    }

    public static ImageOrientation a(int i) {
        return a(i, false);
    }

    public static ImageOrientation a(int i, boolean z) {
        switch (b.a(i, 360)) {
            case p.View_android_theme /*0*/:
                return z ? FLIP_HORIZONTAL : NORMAL;
            case cse.AppCompatTheme_controlBackground /*90*/:
                return z ? TRANSPOSE : ROTATE_90;
            case 180:
                return z ? FLIP_VERTICAL : ROTATE_180;
            case 270:
                return z ? TRANSVERSE : ROTATE_270;
            default:
                return UNDEFINED;
        }
    }

    public static ImageOrientation b(int i) {
        return (ImageOrientation) e.b(j.a(i), UNDEFINED);
    }

    public Matrix a() {
        if (this.degrees == 0 && !this.flipped) {
            return new Matrix();
        }
        Matrix matrix = new Matrix();
        if (this.flipped) {
            matrix.postScale(-1.0f, 1.0f);
        }
        matrix.postRotate((float) this.degrees);
        return matrix;
    }

    public ImageOrientation b() {
        return this.degrees == 0 ? this : a(-this.degrees, this.flipped);
    }

    public Size a(Size size) {
        return (this.degrees == 90 || this.degrees == 270) ? Size.a(size.b(), size.a()) : size;
    }

    public RectF a(RectF rectF, float f, float f2) {
        if (this.degrees == 0 && !this.flipped) {
            return rectF;
        }
        Matrix matrix = new Matrix();
        if (this.flipped) {
            matrix.postScale(-1.0f, 1.0f, f, f2);
        }
        matrix.postRotate((float) this.degrees, f, f2);
        RectF rectF2 = new RectF();
        matrix.mapRect(rectF2, rectF);
        return rectF2;
    }

    public c a(c cVar) {
        return (this.degrees != 0 || this.flipped) ? c.a(a(cVar.g(), 0.5f, 0.5f)) : cVar;
    }

    public ImageOrientation c(int i) {
        return a(this.degrees + i, this.flipped);
    }
}
