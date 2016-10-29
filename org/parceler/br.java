package org.parceler;

import android.os.Parcelable;
import java.util.Set;
import org.parceler.NonParcelRepository.TreeSetParcelable;

/* compiled from: Twttr */
class br implements bw<Set> {
    private br() {
    }

    public Parcelable a(Set set) {
        return new TreeSetParcelable(set);
    }
}
