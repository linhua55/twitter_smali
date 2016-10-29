package com.google.android.exoplayer.text.tx3g;

import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.Subtitle;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.android.exoplayer.util.MimeTypes;

/* compiled from: Twttr */
public final class Tx3gParser implements SubtitleParser {
    public boolean canParse(String str) {
        return MimeTypes.APPLICATION_TX3G.equals(str);
    }

    public Subtitle parse(byte[] bArr, int i, int i2) {
        return new Tx3gSubtitle(new Cue(new String(bArr, i, i2)));
    }
}
