package org.parceler;

import android.os.Parcelable;
import org.parceler.NonParcelRepository.CharacterParcelable;

/* compiled from: Twttr */
class r implements bw<Character> {
    private r() {
    }

    public Parcelable a(Character ch) {
        return new CharacterParcelable(ch);
    }
}
