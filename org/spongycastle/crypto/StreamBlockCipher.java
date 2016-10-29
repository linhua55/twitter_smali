package org.spongycastle.crypto;

/* compiled from: Twttr */
public abstract class StreamBlockCipher implements BlockCipher, StreamCipher {
    private final BlockCipher a;

    protected abstract byte b(byte b);

    protected StreamBlockCipher(BlockCipher blockCipher) {
        this.a = blockCipher;
    }

    public BlockCipher e() {
        return this.a;
    }

    public final byte a(byte b) {
        return b(b);
    }

    public int a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
        if (i3 + i2 > bArr2.length) {
            throw new DataLengthException("output buffer too short");
        } else if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too small");
        } else {
            int i4 = i + i2;
            while (i < i4) {
                int i5 = i3 + 1;
                int i6 = i + 1;
                bArr2[i3] = b(bArr[i]);
                i3 = i5;
                i = i6;
            }
            return i2;
        }
    }
}
