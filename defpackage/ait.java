package defpackage;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import com.twitter.util.math.Size;
import com.twitter.util.object.b;

/* compiled from: Twttr */
/* renamed from: ait */
public class ait implements b<Size, Bitmap> {
    public Bitmap a(Size size) {
        Bitmap createBitmap = Bitmap.createBitmap(size.a(), size.b(), Config.ARGB_8888);
        if (VERSION.SDK_INT >= 17) {
            createBitmap.setHasMipMap(true);
        }
        return createBitmap;
    }
}
