package defpackage;

import com.twitter.android.moments.viewmodels.j;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: aea */
public class aea {
    public static void a(j jVar, MediaImageView mediaImageView) {
        if (aj.b(jVar.d())) {
            mediaImageView.setCroppingRectangleProvider(new aeb(jVar));
            mediaImageView.a(new b(jVar.d()));
        }
    }
}
