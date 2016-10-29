package org.parceler;

import android.os.Parcelable;
import java.util.List;
import org.parceler.NonParcelRepository.ListParcelable;

/* compiled from: Twttr */
class as implements bw<List> {
    private as() {
    }

    public Parcelable a(List list) {
        return new ListParcelable(list);
    }
}
