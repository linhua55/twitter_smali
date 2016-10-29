package org.spongycastle.pqc.jcajce.provider.util;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.ShortBufferException;

/* compiled from: Twttr */
public abstract class AsymmetricHybridCipher extends CipherSpiExt {
    protected abstract int a(int i);

    protected abstract void a(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException;

    protected abstract void a(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    public abstract byte[] a(byte[] bArr, int i, int i2);

    protected abstract int b(int i);

    public abstract byte[] b(byte[] bArr, int i, int i2) throws BadPaddingException;

    protected final void a(String str) {
    }

    protected final void b(String str) {
    }

    public final byte[] b() {
        return null;
    }

    public final int a() {
        return 0;
    }

    public final int h_(int i) {
        return this.C_ == 1 ? a(i) : b(i);
    }

    public final void b(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.C_ = 1;
        a(key, algorithmParameterSpec, secureRandom);
    }

    public final void b(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.C_ = 2;
        a(key, algorithmParameterSpec);
    }

    public final int a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException {
        if (bArr2.length < h_(i2)) {
            throw new ShortBufferException("output");
        }
        Object a = a(bArr, i, i2);
        System.arraycopy(a, 0, bArr2, i3, a.length);
        return a.length;
    }

    public final int b(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException, BadPaddingException {
        if (bArr2.length < h_(i2)) {
            throw new ShortBufferException("Output buffer too short.");
        }
        Object b = b(bArr, i, i2);
        System.arraycopy(b, 0, bArr2, i3, b.length);
        return b.length;
    }
}
