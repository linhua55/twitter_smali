package org.parceler;

import android.os.Parcelable;
import java.util.Map;
import org.parceler.NonParcelRepository.TreeMapParcelable;

/* compiled from: Twttr */
class bo implements bw<Map> {
    private bo() {
    }

    public Parcelable a(Map map) {
        return new TreeMapParcelable(map);
    }
}
