package org.parceler;

import android.os.Parcelable;
import org.parceler.NonParcelRepository.DoubleParcelable;

/* compiled from: Twttr */
class x implements bw<Double> {
    private x() {
    }

    public Parcelable a(Double d) {
        return new DoubleParcelable(d);
    }
}
