package com.google.android.exoplayer.text;

import com.google.android.exoplayer.ParserException;

/* compiled from: Twttr */
public interface SubtitleParser {
    boolean canParse(String str);

    Subtitle parse(byte[] bArr, int i, int i2) throws ParserException;
}
