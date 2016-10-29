package org.spongycastle.util.test;

import java.security.SecureRandom;

/* compiled from: Twttr */
public class FixedSecureRandom extends SecureRandom {
    private byte[] _data;
    private int _index;
    private int _intPad;

    public void nextBytes(byte[] bArr) {
        System.arraycopy(this._data, this._index, bArr, 0, bArr.length);
        this._index += bArr.length;
    }

    public int nextInt() {
        int a = (0 | (a() << 24)) | (a() << 16);
        if (this._intPad == 2) {
            this._intPad--;
        } else {
            a |= a() << 8;
        }
        if (this._intPad != 1) {
            return a | a();
        }
        this._intPad--;
        return a;
    }

    public long nextLong() {
        return (((((((0 | (((long) a()) << 56)) | (((long) a()) << 48)) | (((long) a()) << 40)) | (((long) a()) << 32)) | (((long) a()) << 24)) | (((long) a()) << 16)) | (((long) a()) << 8)) | ((long) a());
    }

    private int a() {
        byte[] bArr = this._data;
        int i = this._index;
        this._index = i + 1;
        return bArr[i] & 255;
    }
}
