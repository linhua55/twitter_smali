package org.parceler;

import android.os.Parcelable;
import org.parceler.NonParcelRepository.IntegerParcelable;

/* compiled from: Twttr */
class ag implements bw<Integer> {
    private ag() {
    }

    public Parcelable a(Integer num) {
        return new IntegerParcelable(num);
    }
}
