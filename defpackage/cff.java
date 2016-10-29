package defpackage;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.twitter.media.filters.Filters;
import com.twitter.media.filters.g;
import com.twitter.media.util.a;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;
import cvi;
import java.util.Locale;

/* compiled from: Twttr */
/* renamed from: cff */
public class cff implements cfg {
    private static final ThreadLocal<Filters> a;
    private final int b;
    private final boolean c;
    private final Context d;
    private final float e;
    private final Filters f;

    static {
        a = new ThreadLocal();
    }

    public cff(Context context, int i, boolean z, float f) {
        this(context, i, z, f, null);
    }

    public cff(Context context, int i, boolean z, float f, Filters filters) {
        this.d = context;
        this.b = i;
        this.c = z;
        this.f = filters;
        this.e = f;
    }

    public boolean a(Size size, Size size2, c cVar, int i) {
        return g.a(this.d) && (this.b != 0 || this.c);
    }

    public Bitmap a(Bitmap bitmap) {
        Bitmap a = a.a(Size.a(bitmap), Config.ARGB_8888);
        if (a != null) {
            Filters filters;
            Object obj;
            if (this.f == null) {
                if (a.get() == null) {
                    AssetFileDescriptor openRawResourceFd = this.d.getResources().openRawResourceFd(cfj.filter_resources);
                    try {
                        Filters filters2 = new Filters();
                        filters2.a(this.d, openRawResourceFd, this.b > 8);
                        a.set(filters2);
                    } finally {
                        cvi.a(openRawResourceFd);
                    }
                }
                filters = (Filters) a.get();
            } else {
                filters = this.f;
            }
            int a2 = filters.a(bitmap, this.c);
            if (a2 <= 0 || !filters.a(this.b, a2, a, 1.0f, this.e)) {
                obj = null;
            } else {
                obj = 1;
            }
            filters.a(a2);
            if (obj != null) {
                return a;
            }
            a.recycle();
        }
        return bitmap;
    }

    public String a() {
        return String.format(Locale.ENGLISH, "filter_%d_enhance_%b_intensity%f", new Object[]{Integer.valueOf(this.b), Boolean.valueOf(this.c), Float.valueOf(this.e)});
    }
}
