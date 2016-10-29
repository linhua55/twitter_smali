package defpackage;

import android.graphics.Bitmap;
import com.twitter.media.request.ImageResponse;
import rx.w;

/* compiled from: Twttr */
/* renamed from: age */
class age implements cyw<ImageResponse, w<Integer>> {
    final /* synthetic */ agd a;

    age(agd agd) {
        this.a = agd;
    }

    public w<Integer> a(ImageResponse imageResponse) {
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (this.a.d != null) {
            this.a.d.a(imageResponse);
        }
        if (!this.a.a.c().g || bitmap == null) {
            return w.a(Integer.valueOf(0));
        }
        return this.a.b.a(bitmap);
    }
}
