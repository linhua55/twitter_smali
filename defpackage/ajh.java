package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.LruCache;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.util.math.Size;
import com.twitter.util.object.b;

/* compiled from: Twttr */
/* renamed from: ajh */
public class ajh implements b<MomentPage, aje> {
    final Context a;
    final Size b;
    final Size c;
    final LruCache<String, Bitmap> d;

    public ajh(Context context, Size size, Size size2, LruCache<String, Bitmap> lruCache) {
        this.a = context;
        this.b = size;
        this.c = size2;
        this.d = lruCache;
    }

    public aje a(MomentPage momentPage) {
        return aje.a(this.a, momentPage, this.b, this.c, this.d);
    }
}
