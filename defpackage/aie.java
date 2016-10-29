package defpackage;

import android.graphics.Bitmap;
import android.util.LruCache;
import com.twitter.model.moments.viewmodels.MomentPage;
import rx.w;

/* compiled from: Twttr */
/* renamed from: aie */
public class aie {
    private final aiy a;
    private final LruCache<String, Bitmap> b;
    private final MomentPage c;

    public aie(MomentPage momentPage, aiy aiy, LruCache<String, Bitmap> lruCache) {
        this.c = momentPage;
        this.a = aiy;
        this.b = lruCache;
    }

    public w<Bitmap> a() {
        Bitmap bitmap = (Bitmap) this.b.get(this.c.h());
        if (bitmap != null) {
            return w.a(bitmap);
        }
        return this.a.a().b(b());
    }

    private cys<Bitmap> b() {
        return new aif(this);
    }
}
