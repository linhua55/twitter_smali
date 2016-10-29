package org.parceler;

import android.os.Parcelable;
import java.util.Map;
import org.parceler.NonParcelRepository.MapParcelable;

/* compiled from: Twttr */
class ay implements bw<Map> {
    private ay() {
    }

    public Parcelable a(Map map) {
        return new MapParcelable(map);
    }
}
