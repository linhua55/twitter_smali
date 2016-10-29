package org.parceler;

import android.os.Parcelable;
import android.util.SparseBooleanArray;
import org.parceler.NonParcelRepository.SparseBooleanArrayParcelable;

/* compiled from: Twttr */
class bj implements bw<SparseBooleanArray> {
    private bj() {
    }

    public Parcelable a(SparseBooleanArray sparseBooleanArray) {
        return new SparseBooleanArrayParcelable(sparseBooleanArray);
    }
}
