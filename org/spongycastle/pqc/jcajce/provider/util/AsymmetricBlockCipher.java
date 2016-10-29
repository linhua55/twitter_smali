package org.spongycastle.pqc.jcajce.provider.util;

import java.io.ByteArrayOutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public abstract class AsymmetricBlockCipher extends CipherSpiExt {
    protected int D_;
    protected ByteArrayOutputStream a;
    protected int c;

    protected abstract void a(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException;

    protected abstract void a(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    protected abstract byte[] a(byte[] bArr) throws IllegalBlockSizeException, BadPaddingException;

    protected abstract byte[] b(byte[] bArr) throws IllegalBlockSizeException, BadPaddingException;

    public AsymmetricBlockCipher() {
        this.a = new ByteArrayOutputStream();
    }

    public final int a() {
        return this.C_ == 1 ? this.D_ : this.c;
    }

    public final byte[] b() {
        return null;
    }

    public final int h_(int i) {
        int size = i + this.a.size();
        int a = a();
        if (size > a) {
            return 0;
        }
        return a;
    }

    public final void b(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.C_ = 1;
        a(key, algorithmParameterSpec, secureRandom);
    }

    public final void b(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.C_ = 2;
        a(key, algorithmParameterSpec);
    }

    public final byte[] a(byte[] bArr, int i, int i2) {
        if (i2 != 0) {
            this.a.write(bArr, i, i2);
        }
        return new byte[0];
    }

    public final int a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        a(bArr, i, i2);
        return 0;
    }

    public final byte[] b(byte[] bArr, int i, int i2) throws IllegalBlockSizeException, BadPaddingException {
        b(i2);
        a(bArr, i, i2);
        byte[] toByteArray = this.a.toByteArray();
        this.a.reset();
        switch (this.C_) {
            case p.View_android_focusable /*1*/:
                return a(toByteArray);
            case p.View_paddingStart /*2*/:
                return b(toByteArray);
            default:
                return null;
        }
    }

    public final int b(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        if (bArr2.length < h_(i2)) {
            throw new ShortBufferException("Output buffer too short.");
        }
        Object b = b(bArr, i, i2);
        System.arraycopy(b, 0, bArr2, i3, b.length);
        return b.length;
    }

    protected final void a(String str) {
    }

    protected final void b(String str) {
    }

    protected void b(int i) throws IllegalBlockSizeException {
        int size = this.a.size() + i;
        if (this.C_ == 1) {
            if (size > this.D_) {
                throw new IllegalBlockSizeException("The length of the plaintext (" + size + " bytes) is not supported by " + "the cipher (max. " + this.D_ + " bytes).");
            }
        } else if (this.C_ == 2 && size != this.c) {
            throw new IllegalBlockSizeException("Illegal ciphertext length (expected " + this.c + " bytes, was " + size + " bytes).");
        }
    }
}
