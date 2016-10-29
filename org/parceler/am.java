package org.parceler;

import android.os.Parcelable;
import java.util.LinkedHashSet;
import org.parceler.NonParcelRepository.LinkedHashSetParcelable;

/* compiled from: Twttr */
class am implements bw<LinkedHashSet> {
    private am() {
    }

    public Parcelable a(LinkedHashSet linkedHashSet) {
        return new LinkedHashSetParcelable(linkedHashSet);
    }
}
