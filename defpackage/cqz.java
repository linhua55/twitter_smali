package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cqz */
public class cqz extends crb {
    private final List<String> b;

    public cqz(Resources resources, List<String> list) {
        super(resources);
        this.b = list;
    }

    protected Bitmap a(Options options, int i) {
        a(options);
        return BitmapFactory.decodeFile((String) this.b.get(i), options);
    }

    private void a(Options options) {
        if (options.inDensity == 0) {
            options.inDensity = 480;
        }
        if (options.inTargetDensity == 0) {
            options.inTargetDensity = this.a.getDisplayMetrics().densityDpi;
        }
    }
}
