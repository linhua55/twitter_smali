package com.twitter.media.ui.image;

import com.twitter.util.z;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class l implements z<Double> {
    private final WeakReference<MediaImageView> a;

    l(MediaImageView mediaImageView) {
        this.a = new WeakReference(mediaImageView);
    }

    public void a(Double d) {
        MediaImageView mediaImageView = (MediaImageView) this.a.get();
        if (mediaImageView != null && MediaImageView.b(mediaImageView) != null) {
            if (d == null || d.doubleValue() == -1.0d) {
                MediaImageView.b(mediaImageView).setIndeterminate(true);
            } else {
                MediaImageView.b(mediaImageView).a((int) Math.round(d.doubleValue()));
            }
        }
    }
}
