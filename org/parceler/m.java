package org.parceler;

import android.os.Parcelable;
import org.parceler.NonParcelRepository.ByteParcelable;

/* compiled from: Twttr */
class m implements bw<Byte> {
    private m() {
    }

    public Parcelable a(Byte b) {
        return new ByteParcelable(b);
    }
}
