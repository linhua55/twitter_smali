package defpackage;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import com.twitter.util.math.Size;
import com.twitter.util.math.b;

/* compiled from: Twttr */
/* renamed from: cpq */
public class cpq {
    private final Paint a;
    private final RectF b;
    private final Paint c;
    private final int d;
    private final float e;
    private final float f;
    private final int g;
    private Bitmap h;

    private cpq(cps cps) {
        this.b = new RectF();
        this.d = cps.f;
        this.e = cps.e;
        this.f = cps.a;
        this.g = cps.d;
        int e = cps.b;
        int f = cps.c;
        this.a = new Paint();
        this.a.setStyle(Style.STROKE);
        this.a.setAntiAlias(true);
        this.a.setStrokeWidth((float) e);
        this.a.setColor(f);
        this.c = new Paint();
        this.c.setXfermode(new PorterDuffXfermode(Mode.CLEAR));
    }

    public void a(int i, int i2) {
        b(i, i2);
    }

    private void b(int i, int i2) {
        this.b.set(b.a(new Rect(0, 0, i, i2), Size.a((float) this.d, ((float) this.d) * this.e)));
        if (this.h != null) {
            this.h.recycle();
        }
        this.h = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        Canvas canvas = new Canvas(this.h);
        this.h.eraseColor(0);
        canvas.drawColor(this.g);
        canvas.drawRoundRect(this.b, this.f, this.f, this.c);
        canvas.drawRoundRect(this.b, this.f, this.f, this.a);
    }

    public void a(Canvas canvas, int i, int i2) {
        if (this.h == null) {
            b(i, i2);
        }
        canvas.drawBitmap(this.h, 0.0f, 0.0f, null);
    }
}
