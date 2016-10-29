package org.parceler;

import android.os.Parcelable;
import org.parceler.NonParcelRepository.LongParcelable;

/* compiled from: Twttr */
class av implements bw<Long> {
    private av() {
    }

    public Parcelable a(Long l) {
        return new LongParcelable(l);
    }
}
