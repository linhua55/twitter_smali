package defpackage;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import cfb;
import com.twitter.media.util.a;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;

/* compiled from: Twttr */
/* renamed from: cfh */
public class cfh implements cfg {
    private final int a;

    public cfh(int i) {
        this.a = i;
    }

    public boolean a(Size size, Size size2, c cVar, int i) {
        return true;
    }

    public Bitmap a(Bitmap bitmap) {
        Bitmap a = a.a(Size.a(bitmap), Config.ARGB_8888);
        if (a != null) {
            Canvas canvas = new Canvas(a);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, null);
            canvas.drawColor(this.a, Mode.SRC_ATOP);
            return a;
        }
        cfb.d("TintTransformation", "Out of memory. Not tinting media.");
        return bitmap;
    }

    public String a() {
        return "TintTransformation?color=" + Integer.toHexString(this.a);
    }
}
