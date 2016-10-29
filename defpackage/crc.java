package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: crc */
public class crc extends crb {
    private final List<Integer> b;

    public crc(Resources resources, List<Integer> list) {
        super(resources);
        this.b = list;
    }

    protected Bitmap a(Options options, int i) {
        return BitmapFactory.decodeResource(this.a, ((Integer) this.b.get(i)).intValue(), options);
    }
}
