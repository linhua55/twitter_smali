package tv.periscope.android.exoplayer.player;

import android.content.Context;
import android.graphics.Matrix;
import android.view.TextureView;
import defpackage.ddb;

/* compiled from: Twttr */
public class u {
    public static double a(String str) {
        if (str != null) {
            return Double.parseDouble(str);
        }
        throw new IllegalArgumentException("tkeyValueMetadata must be non-null");
    }

    public static int a(TextureView textureView, double d, int i, int i2) {
        int i3;
        int i4;
        Object obj;
        Object obj2;
        int i5;
        Object obj3;
        int i6;
        int width = textureView.getWidth();
        int height = textureView.getHeight();
        float f = ((float) i2) / ((float) i);
        int a = a(d);
        if ((a & 1) == 1) {
            f = ((float) i) / ((float) i2);
            i3 = width;
            i4 = height;
        } else {
            i3 = height;
            i4 = width;
        }
        float f2 = ((float) height) / ((float) width);
        Context context = textureView.getContext();
        if (f2 < 1.0f) {
            obj = 1;
        } else {
            obj = null;
        }
        if (f < 1.0f) {
            obj2 = 1;
        } else {
            obj2 = null;
        }
        int i7;
        if (obj == obj2) {
            if (((float) width) * f < ((float) height)) {
                i5 = (int) (((float) height) / f);
                obj3 = null;
                i6 = height;
            } else {
                i5 = width;
                i7 = (int) (f * ((float) width));
                obj3 = null;
                i6 = i7;
            }
        } else if (((float) height) > ((float) i4) * f) {
            i5 = width;
            i7 = (int) (f * ((float) width));
            int i8 = 1;
            i6 = i7;
        } else {
            i5 = (int) (((float) height) / f);
            obj3 = null;
            i6 = height;
        }
        float f3 = ((float) i5) / ((float) i4);
        float f4 = ((float) i6) / ((float) i3);
        Matrix matrix = new Matrix();
        matrix.setRotate(((float) a) * 90.0f, (float) (width / 2), (float) (height / 2));
        if ((a & 1) == 1) {
            matrix.postTranslate((float) ((height - width) / 2), (float) ((width - height) / 2));
        }
        matrix.postScale(f3, f4);
        matrix.postTranslate((float) ((width - i5) / 2), (float) ((height - i6) / 2));
        if (obj3 != null) {
            matrix.postTranslate(0.0f, (float) (-a(context)));
        }
        textureView.setTransform(matrix);
        return a;
    }

    public static int a(double d) {
        return ((int) (45.0d + d)) / 90;
    }

    private static int a(Context context) {
        return (int) (((float) ddb.a(context).y) * 0.15f);
    }
}
