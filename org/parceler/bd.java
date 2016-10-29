package org.parceler;

import android.os.Parcelable;
import java.util.Set;
import org.parceler.NonParcelRepository.SetParcelable;

/* compiled from: Twttr */
class bd implements bw<Set> {
    private bd() {
    }

    public Parcelable a(Set set) {
        return new SetParcelable(set);
    }
}
