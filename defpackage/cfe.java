package defpackage;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cfe */
public class cfe implements cfg {
    private List<cfg> a;

    public cfe(cfg... cfgArr) {
        this.a = n.a(cfgArr);
    }

    public boolean a(Size size, Size size2, c cVar, int i) {
        n a = n.a(this.a.size());
        for (cfg cfg : this.a) {
            if (cfg.a(size, size2, cVar, i)) {
                a.c(cfg);
            }
        }
        this.a = (List) a.q();
        return !this.a.isEmpty();
    }

    public Bitmap a(Bitmap bitmap) {
        Bitmap copy = bitmap.copy((Config) e.b(bitmap.getConfig(), Config.ARGB_8888), true);
        Bitmap bitmap2 = copy;
        for (cfg cfg : this.a) {
            if (bitmap2 != null) {
                copy = cfg.a(bitmap2);
            } else {
                copy = bitmap2;
            }
            bitmap2 = copy;
        }
        return bitmap2 != null ? bitmap2 : bitmap;
    }

    public String a() {
        StringBuilder stringBuilder = new StringBuilder("compound_with");
        for (cfg a : this.a) {
            stringBuilder.append('_').append(a.a());
        }
        return stringBuilder.toString();
    }
}
