package org.parceler;

import android.os.Parcelable;
import org.parceler.NonParcelRepository.BooleanParcelable;

/* compiled from: Twttr */
class f implements bw<Boolean> {
    private f() {
    }

    public Parcelable a(Boolean bool) {
        return new BooleanParcelable(bool.booleanValue());
    }
}
