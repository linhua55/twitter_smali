package defpackage;

import android.animation.ObjectAnimator;
import com.twitter.util.object.b;

/* compiled from: Twttr */
/* renamed from: afd */
final class afd implements b<afc, ObjectAnimator> {
    afd() {
    }

    public ObjectAnimator a(afc afc) {
        return ObjectAnimator.ofFloat(afc, "zoomLevel", new float[]{0.0f, 1.0f});
    }
}
