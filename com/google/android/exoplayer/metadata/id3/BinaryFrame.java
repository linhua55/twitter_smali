package com.google.android.exoplayer.metadata.id3;

/* compiled from: Twttr */
public final class BinaryFrame extends Id3Frame {
    public final byte[] data;

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.data = bArr;
    }
}
