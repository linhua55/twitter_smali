package com.twitter.util.math;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;

/* compiled from: Twttr */
public class b extends a {
    public static Rect a(Rect rect, int i, int i2) {
        return new Rect(rect.left + i, rect.top + i2, rect.right + i, rect.bottom + i2);
    }

    public static Rect a(Rect rect, Matrix matrix) {
        if (matrix == null || matrix.isIdentity()) {
            return rect;
        }
        RectF rectF = new RectF(rect);
        matrix.mapRect(rectF);
        return a(rectF);
    }

    public static RectF a(RectF rectF, float f, float f2) {
        return new RectF(rectF.left * f, rectF.top * f2, rectF.right * f, rectF.bottom * f2);
    }

    public static Rect a(RectF rectF) {
        Rect rect = new Rect();
        rectF.round(rect);
        return rect;
    }

    public static Rect a(Rect rect, Rect rect2) {
        Rect rect3 = new Rect();
        rect3.setIntersect(rect, rect2);
        return rect3;
    }

    public static float a(PointF pointF, float f, float f2) {
        return a.a(pointF.x - f, pointF.y - f2);
    }

    public static float b(Rect rect, Rect rect2) {
        return a.a(rect.exactCenterX() - rect2.exactCenterX(), rect.exactCenterY() - rect2.exactCenterY());
    }

    public static float a(RectF rectF, RectF rectF2, boolean z) {
        if (z) {
            return Math.min(rectF2.height() / rectF.height(), rectF2.width() / rectF.width());
        }
        return Math.max(rectF2.height() / rectF.height(), rectF2.width() / rectF.width());
    }

    public static float a(Size size, Size size2, boolean z) {
        return a(size.g(), size2.g(), z);
    }

    public static Rect a(Rect rect, Size size) {
        Rect f = size.f();
        f.offset(rect.centerX() - f.centerX(), rect.centerY() - f.centerY());
        return f;
    }
}
