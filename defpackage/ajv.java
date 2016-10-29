package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import com.twitter.util.math.Size;
import com.twitter.util.object.b;

/* compiled from: Twttr */
/* renamed from: ajv */
public class ajv implements ajt {
    private final b<Bitmap, Canvas> b;
    private final ait c;

    public static ajv a() {
        return new ajv(new ajw(), new ait());
    }

    public ajv(b<Bitmap, Canvas> bVar, ait ait) {
        this.b = bVar;
        this.c = ait;
    }

    public Bitmap a(View view, Size size, Size size2) {
        ajy.a(view, size);
        Bitmap a = this.c.a(size2);
        if (a != null) {
            Canvas canvas = (Canvas) this.b.a(a);
            float a2 = com.twitter.util.math.b.a(size, Size.a(a), false);
            canvas.scale(a2, a2);
            view.draw(canvas);
        }
        return a;
    }
}
