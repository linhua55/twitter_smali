package org.parceler;

import android.os.Parcelable;
import android.util.SparseArray;
import org.parceler.NonParcelRepository.SparseArrayParcelable;

/* compiled from: Twttr */
class bg implements bw<SparseArray> {
    private bg() {
    }

    public Parcelable a(SparseArray sparseArray) {
        return new SparseArrayParcelable(sparseArray);
    }
}
