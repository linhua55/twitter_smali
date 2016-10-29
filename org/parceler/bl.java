package org.parceler;

import android.os.Parcelable;
import org.parceler.NonParcelRepository.StringParcelable;

/* compiled from: Twttr */
class bl implements bw<String> {
    private bl() {
    }

    public Parcelable a(String str) {
        return new StringParcelable(null);
    }
}
