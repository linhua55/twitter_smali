package defpackage;

import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.twitter.util.math.Size;
import com.twitter.util.math.b;
import cpk;

/* compiled from: Twttr */
/* renamed from: afg */
public class afg {
    private final aez a;

    public afg() {
        this.a = new aez();
    }

    public aez a(Size size, Drawable drawable, Size size2, Rect rect) {
        Rect a;
        int intrinsicWidth;
        int intrinsicHeight;
        int a2;
        if (rect != null) {
            a = cpk.a(size2, size, rect);
        } else {
            a = cpk.b(size2, size);
        }
        if (drawable != null) {
            intrinsicWidth = drawable.getIntrinsicWidth();
            intrinsicHeight = drawable.getIntrinsicHeight();
        } else {
            intrinsicWidth = size2.a();
            intrinsicHeight = size2.b();
        }
        float f = ((float) intrinsicWidth) / ((float) intrinsicHeight);
        if (size.a() < size.b()) {
            a2 = size.a();
            intrinsicWidth = (int) (((float) a2) / f);
        } else {
            intrinsicWidth = size.b();
            a2 = (int) (((float) intrinsicWidth) * f);
        }
        this.a.a.a(((float) intrinsicWidth) / ((float) intrinsicHeight), (float) ((size.a() - a2) / 2), (float) ((size.b() - intrinsicWidth) / 2));
        this.a.b.a(((float) a.height()) / ((float) intrinsicHeight), (float) a.left, (float) a.top);
        return this.a;
    }

    public aez a(Size size, Size size2, Rect rect) {
        Rect a = cpk.a(size, size2);
        this.a.a.a(b.a(new RectF(rect), new RectF(a), true), (float) (a.centerX() - rect.centerX()), (float) (a.centerY() - rect.centerY()));
        this.a.b.a(1.0f, 0.0f, 0.0f);
        return this.a;
    }
}
