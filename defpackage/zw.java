package defpackage;

import android.graphics.Bitmap;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.i;
import zv;

/* compiled from: Twttr */
/* renamed from: zw */
class zw implements i<ImageResponse> {
    final /* synthetic */ zv a;

    zw(zv zvVar) {
        this.a = zvVar;
    }

    public void a(ImageResponse imageResponse) {
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (bitmap != null) {
            zv.a(this.a, bitmap);
            return;
        }
        zv.a(this.a).setAlpha(255);
        if (zv.b(this.a) != null) {
            zv.b(this.a).a();
        }
    }
}
