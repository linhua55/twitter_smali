package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import bbr;
import cfb;
import com.twitter.util.math.Size;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: crb */
public abstract class crb {
    protected final Resources a;
    private final List<Options> b;
    private Size c;

    protected abstract Bitmap a(Options options, int i);

    protected crb(Resources resources) {
        this.b = new ArrayList(2);
        this.a = resources;
    }

    public void a() {
        try {
            this.c = c();
            if (!this.c.c()) {
                for (int i = 0; i < 2; i++) {
                    Bitmap createBitmap = Bitmap.createBitmap(this.c.a(), this.c.b(), Config.ARGB_8888);
                    Options options = new Options();
                    options.inBitmap = createBitmap;
                    options.inMutable = true;
                    options.inSampleSize = 1;
                    this.b.add(options);
                }
            }
        } catch (OutOfMemoryError e) {
            bbr.a(e);
        } catch (Throwable e2) {
            cfb.b(cqs.class.getSimpleName(), "Error initializing FrameDecoder", e2);
        }
    }

    public Size b() {
        return this.c;
    }

    public Bitmap a(int i) {
        try {
            return a((Options) this.b.get(i % this.b.size()), i);
        } catch (OutOfMemoryError e) {
            bbr.a(e);
            return null;
        } catch (Throwable e2) {
            cfb.b(cqs.class.getSimpleName(), "Error decoding resource", e2);
            return null;
        }
    }

    protected Size c() {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        a(options, 0);
        if (options.inDensity == 0) {
            return Size.a(options);
        }
        float f = ((float) options.inTargetDensity) / ((float) options.inDensity);
        return Size.a((int) ((((float) options.outWidth) * f) + 0.5f), (int) ((((float) options.outHeight) * f) + 0.5f));
    }
}
