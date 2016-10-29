package org.parceler;

import android.os.Parcelable;
import java.util.LinkedHashMap;
import org.parceler.NonParcelRepository.LinkedHashMapParcelable;

/* compiled from: Twttr */
class aj implements bw<LinkedHashMap> {
    private aj() {
    }

    public Parcelable a(LinkedHashMap linkedHashMap) {
        return new LinkedHashMapParcelable(linkedHashMap);
    }
}
