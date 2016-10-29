package defpackage;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.util.Pair;
import java.io.InputStream;
import javax.annotation.Nullable;

/* compiled from: Twttr */
/* renamed from: gp */
public final class gp {
    @SuppressLint({"NewApi"})
    public static int a(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        if (VERSION.SDK_INT > 19) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException e) {
            }
        }
        if (VERSION.SDK_INT >= 12) {
            return bitmap.getByteCount();
        }
        return bitmap.getWidth() * bitmap.getRowBytes();
    }

    @Nullable
    public static Pair<Integer, Integer> a(InputStream inputStream) {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            return null;
        }
        return new Pair(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
    }
}
