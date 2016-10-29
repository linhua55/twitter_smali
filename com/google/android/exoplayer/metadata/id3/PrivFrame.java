package com.google.android.exoplayer.metadata.id3;

/* compiled from: Twttr */
public final class PrivFrame extends Id3Frame {
    public static final String ID = "PRIV";
    public final String owner;
    public final byte[] privateData;

    public PrivFrame(String str, byte[] bArr) {
        super(ID);
        this.owner = str;
        this.privateData = bArr;
    }
}
