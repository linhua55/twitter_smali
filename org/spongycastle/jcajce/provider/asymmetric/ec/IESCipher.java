package org.spongycastle.jcajce.provider.asymmetric.ec;

import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.KeyEncoder;
import org.spongycastle.crypto.agreement.ECDHBasicAgreement;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.engines.AESEngine;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.IESEngine;
import org.spongycastle.crypto.generators.ECKeyPairGenerator;
import org.spongycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.spongycastle.crypto.generators.KDF2BytesGenerator;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.IESWithCipherParameters;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.parsers.ECIESPublicKeyParser;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.IESUtil;
import org.spongycastle.jce.interfaces.ECKey;
import org.spongycastle.jce.interfaces.ECPrivateKey;
import org.spongycastle.jce.interfaces.ECPublicKey;
import org.spongycastle.jce.interfaces.IESKey;
import org.spongycastle.jce.spec.IESParameterSpec;
import org.spongycastle.util.Strings;

/* compiled from: Twttr */
public class IESCipher extends CipherSpi {
    private int a;
    private IESEngine b;
    private int c;
    private ByteArrayOutputStream d;
    private AlgorithmParameters e;
    private IESParameterSpec f;
    private AsymmetricKeyParameter g;
    private SecureRandom h;
    private boolean i;
    private AsymmetricKeyParameter j;

    /* compiled from: Twttr */
    public class ECIES extends IESCipher {
        public ECIES() {
            super(new IESEngine(new ECDHBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()), new HMac(new SHA1Digest())));
        }
    }

    /* compiled from: Twttr */
    public class ECIESwithAES extends IESCipher {
        public ECIESwithAES() {
            super(new IESEngine(new ECDHBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()), new HMac(new SHA1Digest()), new PaddedBufferedBlockCipher(new AESEngine())));
        }
    }

    /* compiled from: Twttr */
    public class ECIESwithAESCBC extends IESCipher {
        public ECIESwithAESCBC() {
            super(new IESEngine(new ECDHBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()), new HMac(new SHA1Digest()), new PaddedBufferedBlockCipher(new CBCBlockCipher(new AESEngine()))), 16);
        }
    }

    /* compiled from: Twttr */
    public class ECIESwithDESede extends IESCipher {
        public ECIESwithDESede() {
            super(new IESEngine(new ECDHBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()), new HMac(new SHA1Digest()), new PaddedBufferedBlockCipher(new DESedeEngine())));
        }
    }

    /* compiled from: Twttr */
    public class ECIESwithDESedeCBC extends IESCipher {
        public ECIESwithDESedeCBC() {
            super(new IESEngine(new ECDHBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()), new HMac(new SHA1Digest()), new PaddedBufferedBlockCipher(new CBCBlockCipher(new DESedeEngine()))), 8);
        }
    }

    public IESCipher(IESEngine iESEngine) {
        this.c = -1;
        this.d = new ByteArrayOutputStream();
        this.e = null;
        this.f = null;
        this.i = false;
        this.j = null;
        this.b = iESEngine;
        this.a = 0;
    }

    public IESCipher(IESEngine iESEngine, int i) {
        this.c = -1;
        this.d = new ByteArrayOutputStream();
        this.e = null;
        this.f = null;
        this.i = false;
        this.j = null;
        this.b = iESEngine;
        this.a = i;
    }

    public int engineGetBlockSize() {
        if (this.b.a() != null) {
            return this.b.a().b();
        }
        return 0;
    }

    public int engineGetKeySize(Key key) {
        if (key instanceof ECKey) {
            return ((ECKey) key).b().b().a();
        }
        throw new IllegalArgumentException("not an EC key");
    }

    public byte[] engineGetIV() {
        return null;
    }

    public AlgorithmParameters engineGetParameters() {
        if (this.e == null && this.f != null) {
            try {
                this.e = AlgorithmParameters.getInstance("IES", "SC");
                this.e.init(this.f);
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        return this.e;
    }

    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        String b = Strings.b(str);
        if (b.equals("NONE")) {
            this.i = false;
        } else if (b.equals("DHAES")) {
            this.i = true;
        } else {
            throw new IllegalArgumentException("can't support mode " + str);
        }
    }

    public int engineGetOutputSize(int i) {
        int b = this.b.b().b();
        if (this.g != null) {
            int a = (((((ECKey) this.g).b().b().a() + 7) * 2) / 8) + 1;
            if (this.b.a() != null) {
                if (this.c == 1 || this.c == 3) {
                    i = this.b.a().b(i);
                } else if (this.c == 2 || this.c == 4) {
                    i = this.b.a().b((i - b) - a);
                } else {
                    throw new IllegalStateException("cipher not initialised");
                }
            }
            if (this.c == 1 || this.c == 3) {
                return (a + (b + this.d.size())) + i;
            }
            if (this.c == 2 || this.c == 4) {
                return ((this.d.size() - b) - a) + i;
            }
            throw new IllegalStateException("cipher not initialised");
        }
        throw new IllegalStateException("cipher not initialised");
    }

    public void engineSetPadding(String str) throws NoSuchPaddingException {
        String b = Strings.b(str);
        if (!b.equals("NOPADDING") && !b.equals("PKCS5PADDING") && !b.equals("PKCS7PADDING")) {
            throw new NoSuchPaddingException("padding not available with IESCipher");
        }
    }

    public void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec algorithmParameterSpec = null;
        if (algorithmParameters != null) {
            try {
                algorithmParameterSpec = algorithmParameters.getParameterSpec(IESParameterSpec.class);
            } catch (Exception e) {
                throw new InvalidAlgorithmParameterException("cannot recognise parameters: " + e.toString());
            }
        }
        this.e = algorithmParameters;
        engineInit(i, key, algorithmParameterSpec, secureRandom);
    }

    public void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException, InvalidKeyException {
        this.j = null;
        if (algorithmParameterSpec == null) {
            this.f = IESUtil.a(this.b);
        } else if (algorithmParameterSpec instanceof IESParameterSpec) {
            this.f = (IESParameterSpec) algorithmParameterSpec;
        } else {
            throw new InvalidAlgorithmParameterException("must be passed IES parameters");
        }
        byte[] e = this.f.e();
        if (e != null) {
            if (this.a == 0) {
                throw new InvalidAlgorithmParameterException("NONCE present in IES Parameters when none required");
            } else if (e.length != this.a) {
                throw new InvalidAlgorithmParameterException("NONCE in IES Parameters needs to be " + this.a + " bytes long");
            }
        }
        IESKey iESKey;
        if (i == 1 || i == 3) {
            if (key instanceof ECPublicKey) {
                this.g = ECUtil.a((PublicKey) key);
            } else if (key instanceof IESKey) {
                iESKey = (IESKey) key;
                this.g = ECUtil.a(iESKey.a());
                this.j = ECUtil.a(iESKey.b());
            } else {
                throw new InvalidKeyException("must be passed recipient's public EC key for encryption");
            }
        } else if (i != 2 && i != 4) {
            throw new InvalidKeyException("must be passed EC key");
        } else if (key instanceof ECPrivateKey) {
            this.g = ECUtil.a((PrivateKey) key);
        } else if (key instanceof IESKey) {
            iESKey = (IESKey) key;
            this.j = ECUtil.a(iESKey.a());
            this.g = ECUtil.a(iESKey.b());
        } else {
            throw new InvalidKeyException("must be passed recipient's private EC key for decryption");
        }
        this.h = secureRandom;
        this.c = i;
        this.d.reset();
    }

    public void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new IllegalArgumentException("can't handle supplied parameter spec");
        }
    }

    public byte[] engineUpdate(byte[] bArr, int i, int i2) {
        this.d.write(bArr, i, i2);
        return null;
    }

    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        this.d.write(bArr, i, i2);
        return 0;
    }

    public byte[] engineDoFinal(byte[] bArr, int i, int i2) throws IllegalBlockSizeException, BadPaddingException {
        if (i2 != 0) {
            this.d.write(bArr, i, i2);
        }
        byte[] toByteArray = this.d.toByteArray();
        this.d.reset();
        CipherParameters iESWithCipherParameters = new IESWithCipherParameters(this.f.a(), this.f.b(), this.f.c(), this.f.d());
        if (this.f.e() != null) {
            iESWithCipherParameters = new ParametersWithIV(iESWithCipherParameters, this.f.e());
        }
        ECDomainParameters b = ((ECKeyParameters) this.g).b();
        if (this.j != null) {
            try {
                if (this.c == 1 || this.c == 3) {
                    this.b.a(true, this.j, this.g, iESWithCipherParameters);
                } else {
                    this.b.a(false, this.g, this.j, iESWithCipherParameters);
                }
                return this.b.a(toByteArray, 0, toByteArray.length);
            } catch (Exception e) {
                throw new BadPaddingException(e.getMessage());
            }
        } else if (this.c == 1 || this.c == 3) {
            AsymmetricCipherKeyPairGenerator eCKeyPairGenerator = new ECKeyPairGenerator();
            eCKeyPairGenerator.a(new ECKeyGenerationParameters(b, this.h));
            try {
                this.b.a(this.g, iESWithCipherParameters, new EphemeralKeyPairGenerator(eCKeyPairGenerator, new KeyEncoder() {
                    final /* synthetic */ IESCipher a;

                    {
                        this.a = r1;
                    }

                    public byte[] a(AsymmetricKeyParameter asymmetricKeyParameter) {
                        return ((ECPublicKeyParameters) asymmetricKeyParameter).c().s();
                    }
                }));
                return this.b.a(toByteArray, 0, toByteArray.length);
            } catch (Exception e2) {
                throw new BadPaddingException(e2.getMessage());
            }
        } else if (this.c == 2 || this.c == 4) {
            try {
                this.b.a(this.g, iESWithCipherParameters, new ECIESPublicKeyParser(b));
                return this.b.a(toByteArray, 0, toByteArray.length);
            } catch (InvalidCipherTextException e3) {
                throw new BadPaddingException(e3.getMessage());
            }
        } else {
            throw new IllegalStateException("cipher not initialised");
        }
    }

    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        Object engineDoFinal = engineDoFinal(bArr, i, i2);
        System.arraycopy(engineDoFinal, 0, bArr2, i3, engineDoFinal.length);
        return engineDoFinal.length;
    }
}
