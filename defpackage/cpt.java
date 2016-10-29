package defpackage;

import android.graphics.RectF;
import android.view.View;
import com.twitter.util.math.Size;
import com.twitter.util.math.b;
import com.twitter.util.math.c;

/* compiled from: Twttr */
/* renamed from: cpt */
public class cpt {
    private final View a;
    private final RectF b;
    private final RectF c;

    public void a() {
        this.a.offsetLeftAndRight(a(this.a.getLeft()) - this.a.getLeft());
        this.a.offsetTopAndBottom(b(this.a.getTop()) - this.a.getTop());
    }

    public int a(int i) {
        float c = c();
        float f = this.b.left + c;
        return (int) b.a((float) i, (this.b.right - ((float) this.a.getWidth())) - c, f);
    }

    public int b(int i) {
        float d = d();
        float f = this.b.top + d;
        return (int) b.a((float) i, (this.b.bottom - ((float) this.a.getHeight())) - d, f);
    }

    public c b() {
        float g = g();
        float h = h();
        float i = i();
        float top = this.b.top - (((float) this.a.getTop()) - j());
        i = this.b.left - (((float) this.a.getLeft()) - i);
        this.c.set(i, top, this.b.width() + i, this.b.height() + top);
        return c.a(this.c, Size.a(g, h));
    }

    private float c() {
        return i() + f();
    }

    private float d() {
        return j() + e();
    }

    private float e() {
        float h = h();
        float height = this.b.height();
        return h < height ? (height - h) / 2.0f : 0.0f;
    }

    private float f() {
        float g = g();
        float width = this.b.width();
        return g < width ? (width - g) / 2.0f : 0.0f;
    }

    private float g() {
        return ((float) this.a.getWidth()) * this.a.getScaleX();
    }

    private float h() {
        return ((float) this.a.getHeight()) * this.a.getScaleY();
    }

    private float i() {
        return (g() - ((float) this.a.getWidth())) / 2.0f;
    }

    private float j() {
        return (h() - ((float) this.a.getHeight())) / 2.0f;
    }
}
