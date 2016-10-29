package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import com.twitter.media.util.q;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;

/* compiled from: Twttr */
/* renamed from: cfd */
public class cfd implements cfg {
    private final Context a;
    private final int b;

    public cfd(Context context, int i) {
        this.b = i;
        this.a = context.getApplicationContext();
    }

    public boolean a(Size size, Size size2, c cVar, int i) {
        return true;
    }

    public Bitmap a(Bitmap bitmap) {
        return q.a(this.a, bitmap, (float) this.b);
    }

    public String a() {
        return "BlurTransformation?mRadius=" + this.b;
    }
}
