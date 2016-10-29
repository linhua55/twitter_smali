package org.spongycastle.jcajce.provider.symmetric.util;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.jcajce.provider.symmetric.util.PBE.Util;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class BaseStreamCipher extends BaseWrapCipher implements PBE {
    private Class[] e;
    private StreamCipher f;
    private ParametersWithIV g;
    private int h;
    private PBEParameterSpec i;
    private String j;

    protected BaseStreamCipher(StreamCipher streamCipher, int i) {
        this.e = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.h = 0;
        this.i = null;
        this.j = null;
        this.f = streamCipher;
        this.h = i;
    }

    protected int engineGetBlockSize() {
        return 0;
    }

    protected byte[] engineGetIV() {
        return this.g != null ? this.g.a() : null;
    }

    protected int engineGetKeySize(Key key) {
        return key.getEncoded().length * 8;
    }

    protected int engineGetOutputSize(int i) {
        return i;
    }

    protected AlgorithmParameters engineGetParameters() {
        if (this.c != null || this.i == null) {
            return this.c;
        }
        try {
            AlgorithmParameters instance = AlgorithmParameters.getInstance(this.j, "SC");
            instance.init(this.i);
            return instance;
        } catch (Exception e) {
            return null;
        }
    }

    protected void engineSetMode(String str) {
        if (!str.equalsIgnoreCase("ECB")) {
            throw new IllegalArgumentException("can't support mode " + str);
        }
    }

    protected void engineSetPadding(String str) throws NoSuchPaddingException {
        if (!str.equalsIgnoreCase("NoPadding")) {
            throw new NoSuchPaddingException("Padding " + str + " unknown.");
        }
    }

    protected void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.i = null;
        this.j = null;
        this.c = null;
        if (key instanceof SecretKey) {
            CipherParameters cipherParameters;
            ParametersWithIV parametersWithIV;
            if (key instanceof BCPBEKey) {
                CipherParameters e;
                BCPBEKey bCPBEKey = (BCPBEKey) key;
                if (bCPBEKey.f() != null) {
                    this.j = bCPBEKey.f().a();
                } else {
                    this.j = bCPBEKey.getAlgorithm();
                }
                if (bCPBEKey.e() != null) {
                    e = bCPBEKey.e();
                    this.i = new PBEParameterSpec(bCPBEKey.getSalt(), bCPBEKey.getIterationCount());
                } else if (algorithmParameterSpec instanceof PBEParameterSpec) {
                    e = Util.a(bCPBEKey, algorithmParameterSpec, this.f.a());
                    this.i = (PBEParameterSpec) algorithmParameterSpec;
                } else {
                    throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
                }
                if (bCPBEKey.d() != 0) {
                    this.g = (ParametersWithIV) e;
                }
                cipherParameters = e;
            } else if (algorithmParameterSpec == null) {
                r0 = new KeyParameter(key.getEncoded());
            } else if (algorithmParameterSpec instanceof IvParameterSpec) {
                parametersWithIV = new ParametersWithIV(new KeyParameter(key.getEncoded()), ((IvParameterSpec) algorithmParameterSpec).getIV());
                this.g = parametersWithIV;
                r0 = parametersWithIV;
            } else {
                throw new InvalidAlgorithmParameterException("unknown parameter type.");
            }
            if (!(this.h == 0 || (cipherParameters instanceof ParametersWithIV))) {
                if (secureRandom == null) {
                    secureRandom = new SecureRandom();
                }
                if (i == 1 || i == 3) {
                    byte[] bArr = new byte[this.h];
                    secureRandom.nextBytes(bArr);
                    parametersWithIV = new ParametersWithIV(cipherParameters, bArr);
                    this.g = parametersWithIV;
                    cipherParameters = parametersWithIV;
                } else {
                    throw new InvalidAlgorithmParameterException("no IV set when one expected");
                }
            }
            switch (i) {
                case p.View_android_focusable /*1*/:
                case p.View_paddingEnd /*3*/:
                    this.f.a(true, cipherParameters);
                    return;
                case p.View_paddingStart /*2*/:
                case p.View_theme /*4*/:
                    this.f.a(false, cipherParameters);
                    return;
                default:
                    try {
                        throw new InvalidParameterException("unknown opmode " + i + " passed");
                    } catch (Exception e2) {
                        throw new InvalidKeyException(e2.getMessage());
                    }
            }
            throw new InvalidKeyException(e2.getMessage());
        }
        throw new InvalidKeyException("Key for algorithm " + key.getAlgorithm() + " not suitable for symmetric enryption.");
    }

    protected void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            int i2 = 0;
            while (i2 != this.e.length) {
                try {
                    parameterSpec = algorithmParameters.getParameterSpec(this.e[i2]);
                    break;
                } catch (Exception e) {
                    i2++;
                }
            }
            parameterSpec = null;
            if (parameterSpec == null) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        }
        parameterSpec = null;
        engineInit(i, key, parameterSpec, secureRandom);
        this.c = algorithmParameters;
    }

    protected void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new InvalidKeyException(e.getMessage());
        }
    }

    protected byte[] engineUpdate(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f.a(bArr, i, i2, bArr2, 0);
        return bArr2;
    }

    protected int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException {
        try {
            this.f.a(bArr, i, i2, bArr2, i3);
            return i2;
        } catch (DataLengthException e) {
            throw new ShortBufferException(e.getMessage());
        }
    }

    protected byte[] engineDoFinal(byte[] bArr, int i, int i2) {
        if (i2 != 0) {
            byte[] engineUpdate = engineUpdate(bArr, i, i2);
            this.f.c();
            return engineUpdate;
        }
        this.f.c();
        return new byte[0];
    }

    protected int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i2 != 0) {
            this.f.a(bArr, i, i2, bArr2, i3);
        }
        this.f.c();
        return i2;
    }
}
