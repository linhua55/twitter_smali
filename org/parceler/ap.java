package org.parceler;

import android.os.Parcelable;
import java.util.LinkedList;
import org.parceler.NonParcelRepository.LinkedListParcelable;

/* compiled from: Twttr */
class ap implements bw<LinkedList> {
    private ap() {
    }

    public Parcelable a(LinkedList linkedList) {
        return new LinkedListParcelable(linkedList);
    }
}
