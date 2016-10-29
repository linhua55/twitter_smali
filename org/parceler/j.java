package org.parceler;

import android.os.Parcelable;
import org.parceler.NonParcelRepository.ByteArrayParcelable;

/* compiled from: Twttr */
class j implements bw<byte[]> {
    private j() {
    }

    public Parcelable a(byte[] bArr) {
        return new ByteArrayParcelable(bArr);
    }
}
