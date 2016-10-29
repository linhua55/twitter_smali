package org.parceler;

import android.os.Parcelable;
import org.parceler.NonParcelRepository.FloatParcelable;

/* compiled from: Twttr */
class aa implements bw<Float> {
    private aa() {
    }

    public Parcelable a(Float f) {
        return new FloatParcelable(f);
    }
}
