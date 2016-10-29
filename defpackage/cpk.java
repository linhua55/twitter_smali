package defpackage;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.twitter.model.moments.g;
import com.twitter.util.math.Size;
import com.twitter.util.math.b;

/* compiled from: Twttr */
/* renamed from: cpk */
public final class cpk {
    private static final cpl a;

    static {
        a = new cpl();
    }

    public static Rect a(Size size, Size size2) {
        return cpk.a(size, size2, true);
    }

    public static Rect b(Size size, Size size2) {
        return cpk.a(size, size2, false);
    }

    public static Rect a(Size size, Size size2, Rect rect) {
        if (rect.left < 0 || rect.top < 0 || rect.right > size.a() || rect.bottom > size.b()) {
            return cpk.b(size, size2);
        }
        Rect a = cpk.a(size, size2, rect, true);
        if (a.width() >= size2.a() && a.height() >= size2.b()) {
            return a;
        }
        a.set(cpk.a(size, size2, rect, false));
        return a;
    }

    private static Rect a(Size size, Size size2, Rect rect, boolean z) {
        RectF rectF = new RectF(rect);
        float a = b.a(rectF, size2.g(), z);
        Rect rect2 = new Rect();
        b.a(rectF, a, a).round(rect2);
        Size a2 = size.a(a);
        int a3 = ((size2.a() - rect2.width()) / 2) + (-rect2.left);
        int b = (-rect2.top) + ((size2.b() - rect2.height()) / 2);
        return b.a(a2.f(), (int) (((float) a3) - b.a(0.0f, 0.0f, (float) size2.a(), (float) a3, (float) (a3 + a2.a()))), (int) (((float) b) - b.a(0.0f, 0.0f, (float) size2.b(), (float) b, (float) (b + a2.b()))));
    }

    private static Rect a(Size size, Size size2, boolean z) {
        Size a = size.a(b.a(size, size2, z));
        return b.a(a.f(), (size2.a() - a.a()) / 2, (size2.b() - a.b()) / 2);
    }

    public static Rect a(g gVar, Size size, Size size2) {
        if (gVar != null) {
            return cpk.a(gVar.f, size2, gVar.a());
        }
        return cpk.b(size, size2);
    }

    public static Matrix a(ImageView imageView, Rect rect) {
        if (imageView.getDrawable() == null) {
            return null;
        }
        Drawable drawable = imageView.getDrawable();
        return a.a(imageView.getWidth(), imageView.getHeight(), drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, 1.0f);
    }
}
