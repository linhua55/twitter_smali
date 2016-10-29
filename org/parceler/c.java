package org.parceler;

import android.os.Parcelable;
import org.parceler.NonParcelRepository.BooleanArrayParcelable;

/* compiled from: Twttr */
class c implements bw<boolean[]> {
    private c() {
    }

    public Parcelable a(boolean[] zArr) {
        return new BooleanArrayParcelable(zArr);
    }
}
