package defpackage;

import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.c;

/* compiled from: Twttr */
/* renamed from: aak */
class aak implements c {
    final /* synthetic */ aad a;
    final /* synthetic */ aaj b;

    aak(aaj aaj, aad aad) {
        this.b = aaj;
        this.a = aad;
    }

    public void a(ImageResponse imageResponse) {
        if (this.a != null) {
            this.a.c(this.b.a);
        }
        boolean d = imageResponse.d();
        this.b.f.e = !d;
        if (d) {
            this.b.a(this.b.f);
        }
    }
}
