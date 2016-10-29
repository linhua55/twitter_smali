package com.google.android.exoplayer.metadata;

import com.google.android.exoplayer.ParserException;

/* compiled from: Twttr */
public interface MetadataParser<T> {
    boolean canParse(String str);

    T parse(byte[] bArr, int i) throws ParserException;
}
