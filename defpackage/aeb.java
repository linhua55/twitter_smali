package defpackage;

import com.twitter.android.moments.viewmodels.j;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.f;
import com.twitter.model.moments.g;
import com.twitter.util.math.c;

/* compiled from: Twttr */
/* renamed from: aeb */
final class aeb implements f<MediaImageView> {
    final /* synthetic */ j a;

    aeb(j jVar) {
        this.a = jVar;
    }

    public c a(MediaImageView mediaImageView) {
        g g = this.a.g();
        if (g != null) {
            return c.a(g.a(), this.a.f());
        }
        return null;
    }
}
