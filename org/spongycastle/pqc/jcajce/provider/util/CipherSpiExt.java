package org.spongycastle.pqc.jcajce.provider.util;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;

/* compiled from: Twttr */
public abstract class CipherSpiExt extends CipherSpi {
    protected int C_;

    public abstract int a();

    public abstract int a(Key key) throws InvalidKeyException;

    public abstract int a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException;

    protected abstract void a(String str) throws NoSuchAlgorithmException;

    public abstract byte[] a(byte[] bArr, int i, int i2);

    public abstract int b(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException;

    protected abstract void b(String str) throws NoSuchPaddingException;

    public abstract void b(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException;

    public abstract void b(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    public abstract byte[] b();

    public abstract byte[] b(byte[] bArr, int i, int i2) throws IllegalBlockSizeException, BadPaddingException;

    public abstract int h_(int i);

    protected final void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new InvalidParameterException(e.getMessage());
        }
    }

    protected final void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameters == null) {
            engineInit(i, key, secureRandom);
        } else {
            engineInit(i, key, null, secureRandom);
        }
    }

    protected void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameterSpec != null && !(algorithmParameterSpec instanceof AlgorithmParameterSpec)) {
            throw new InvalidAlgorithmParameterException();
        } else if (key == null || !(key instanceof Key)) {
            throw new InvalidKeyException();
        } else {
            this.C_ = i;
            if (i == 1) {
                b(key, algorithmParameterSpec, secureRandom);
            } else if (i == 2) {
                b(key, algorithmParameterSpec);
            }
        }
    }

    protected final byte[] engineDoFinal(byte[] bArr, int i, int i2) throws IllegalBlockSizeException, BadPaddingException {
        return b(bArr, i, i2);
    }

    protected final int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        return b(bArr, i, i2, bArr2, i3);
    }

    protected final int engineGetBlockSize() {
        return a();
    }

    protected final int engineGetKeySize(Key key) throws InvalidKeyException {
        if (key instanceof Key) {
            return a(key);
        }
        throw new InvalidKeyException("Unsupported key.");
    }

    protected final byte[] engineGetIV() {
        return b();
    }

    protected final int engineGetOutputSize(int i) {
        return h_(i);
    }

    protected final AlgorithmParameters engineGetParameters() {
        return null;
    }

    protected final void engineSetMode(String str) throws NoSuchAlgorithmException {
        a(str);
    }

    protected final void engineSetPadding(String str) throws NoSuchPaddingException {
        b(str);
    }

    protected final byte[] engineUpdate(byte[] bArr, int i, int i2) {
        return a(bArr, i, i2);
    }

    protected final int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException {
        return a(bArr, i, i2, bArr2, i3);
    }
}
