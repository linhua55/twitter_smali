package defpackage;

import android.graphics.Rect;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.moments.core.ui.widget.capsule.DrawableAwareImageView;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
/* renamed from: agb */
class agb implements afu {
    private final afc a;
    private final afg b;
    private final MediaImageView c;

    agb(afc afc, afg afg, MediaImageView mediaImageView) {
        this.a = afc;
        this.b = afg;
        this.c = mediaImageView;
    }

    public void a(ahh ahh, Size size, Rect rect) {
        a(size, rect);
        ((DrawableAwareImageView) this.c.getImageView()).setDrawableListener(new agc(this, size, rect));
    }

    public void a(ahh ahh) {
    }

    public void a(ahh ahh, boolean z) {
    }

    public void a(ahh ahh, int i) {
    }

    private void a(Size size, Rect rect) {
        this.a.a(this.b.a(Size.a(this.c), this.c.getImageView().getDrawable(), size, rect));
    }
}
