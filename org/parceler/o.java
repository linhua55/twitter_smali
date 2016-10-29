package org.parceler;

import android.os.Parcelable;
import org.parceler.NonParcelRepository.CharArrayParcelable;

/* compiled from: Twttr */
class o implements bw<char[]> {
    private o() {
    }

    public Parcelable a(char[] cArr) {
        return new CharArrayParcelable(cArr);
    }
}
