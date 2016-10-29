package org.parceler;

import android.os.Parcelable;
import java.util.Collection;
import org.parceler.NonParcelRepository.CollectionParcelable;

/* compiled from: Twttr */
class u implements bw<Collection> {
    private u() {
    }

    public Parcelable a(Collection collection) {
        return new CollectionParcelable(collection);
    }
}
