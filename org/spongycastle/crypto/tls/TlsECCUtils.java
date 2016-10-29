package org.spongycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Hashtable;
import org.spongycastle.asn1.x9.ECNamedCurveTable;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.agreement.ECDHBasicAgreement;
import org.spongycastle.crypto.ec.CustomNamedCurves;
import org.spongycastle.crypto.generators.ECKeyPairGenerator;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.field.PolynomialExtensionField;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;
import org.spongycastle.util.Integers;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class TlsECCUtils {
    public static final Integer a;
    public static final Integer b;
    private static final String[] c;

    static {
        a = Integers.a(10);
        b = Integers.a(11);
        c = new String[]{"sect163k1", "sect163r1", "sect163r2", "sect193r1", "sect193r2", "sect233k1", "sect233r1", "sect239k1", "sect283k1", "sect283r1", "sect409k1", "sect409r1", "sect571k1", "sect571r1", "secp160k1", "secp160r1", "secp160r2", "secp192k1", "secp192r1", "secp224k1", "secp224r1", "secp256k1", "secp256r1", "secp384r1", "secp521r1", "brainpoolP256r1", "brainpoolP384r1", "brainpoolP512r1"};
    }

    public static int[] a(Hashtable hashtable) throws IOException {
        byte[] a = TlsUtils.a(hashtable, a);
        return a == null ? null : a(a);
    }

    public static short[] b(Hashtable hashtable) throws IOException {
        byte[] a = TlsUtils.a(hashtable, b);
        return a == null ? null : b(a);
    }

    public static int[] a(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        InputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        int b = TlsUtils.b(byteArrayInputStream);
        if (b < 2 || (b & 1) != 0) {
            throw new TlsFatalAlert((short) 50);
        }
        int[] d = TlsUtils.d(b / 2, byteArrayInputStream);
        TlsProtocol.d(byteArrayInputStream);
        return d;
    }

    public static short[] b(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        InputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        int a = TlsUtils.a(byteArrayInputStream);
        if (a < (short) 1) {
            throw new TlsFatalAlert((short) 50);
        }
        short[] c = TlsUtils.c(a, byteArrayInputStream);
        TlsProtocol.d(byteArrayInputStream);
        if (Arrays.a(c, (short) 0)) {
            return c;
        }
        throw new TlsFatalAlert((short) 47);
    }

    public static String a(int i) {
        return d(i) ? c[i - 1] : null;
    }

    public static ECDomainParameters b(int i) {
        String a = a(i);
        if (a == null) {
            return null;
        }
        X9ECParameters a2 = CustomNamedCurves.a(a);
        if (a2 == null) {
            a2 = ECNamedCurveTable.a(a);
            if (a2 == null) {
                return null;
            }
        }
        X9ECParameters x9ECParameters = a2;
        return new ECDomainParameters(x9ECParameters.a(), x9ECParameters.b(), x9ECParameters.c(), x9ECParameters.e(), x9ECParameters.h());
    }

    public static boolean c(int i) {
        switch (i) {
            case 49153:
            case 49154:
            case 49155:
            case 49156:
            case 49157:
            case 49158:
            case 49159:
            case 49160:
            case 49161:
            case 49162:
            case 49163:
            case 49164:
            case 49165:
            case 49166:
            case 49167:
            case 49168:
            case 49169:
            case 49170:
            case 49171:
            case 49172:
            case 49173:
            case 49174:
            case 49175:
            case 49176:
            case 49177:
            case 49187:
            case 49188:
            case 49189:
            case 49190:
            case 49191:
            case 49192:
            case 49193:
            case 49194:
            case 49195:
            case 49196:
            case 49197:
            case 49198:
            case 49199:
            case 49200:
            case 49201:
            case 49202:
            case 49203:
            case 49204:
            case 49205:
            case 49206:
            case 49207:
            case 49208:
            case 49209:
            case 49210:
            case 49211:
            case 49266:
            case 49267:
            case 49268:
            case 49269:
            case 49270:
            case 49271:
            case 49272:
            case 49273:
            case 49286:
            case 49287:
            case 49288:
            case 49289:
            case 49290:
            case 49291:
            case 49292:
            case 49293:
            case 49306:
            case 49307:
            case 52243:
            case 52244:
            case 58386:
            case 58387:
            case 58388:
            case 58389:
            case 58392:
            case 58393:
                return true;
            default:
                return false;
        }
    }

    public static boolean d(int i) {
        return i > 0 && i <= c.length;
    }

    public static boolean a(short[] sArr, short s) {
        if (sArr == null) {
            return false;
        }
        for (short s2 : sArr) {
            if (s2 == (short) 0) {
                return false;
            }
            if (s2 == s) {
                return true;
            }
        }
        return false;
    }

    public static byte[] a(short[] sArr, ECPoint eCPoint) throws IOException {
        ECCurve d = eCPoint.d();
        boolean z = false;
        if (ECAlgorithms.b(d)) {
            z = a(sArr, (short) 1);
        } else if (ECAlgorithms.a(d)) {
            z = a(sArr, (short) 2);
        }
        return eCPoint.a(z);
    }

    public static BigInteger a(int i, byte[] bArr) throws IOException {
        if (bArr.length == (i + 7) / 8) {
            return new BigInteger(1, bArr);
        }
        throw new TlsFatalAlert((short) 50);
    }

    public static ECPoint a(short[] sArr, ECCurve eCCurve, byte[] bArr) throws IOException {
        short s = (short) 1;
        if (bArr == null || bArr.length < 1) {
            throw new TlsFatalAlert((short) 47);
        }
        switch (bArr[0]) {
            case p.View_paddingStart /*2*/:
            case p.View_paddingEnd /*3*/:
                if (ECAlgorithms.a(eCCurve)) {
                    s = (short) 2;
                    break;
                } else if (!ECAlgorithms.b(eCCurve)) {
                    throw new TlsFatalAlert((short) 47);
                }
                break;
            case p.View_theme /*4*/:
                s = (short) 0;
                break;
            default:
                throw new TlsFatalAlert((short) 47);
        }
        if (Arrays.a(sArr, s)) {
            return eCCurve.a(bArr);
        }
        throw new TlsFatalAlert((short) 47);
    }

    public static ECPublicKeyParameters a(short[] sArr, ECDomainParameters eCDomainParameters, byte[] bArr) throws IOException {
        try {
            return new ECPublicKeyParameters(a(sArr, eCDomainParameters.a(), bArr), eCDomainParameters);
        } catch (RuntimeException e) {
            throw new TlsFatalAlert((short) 47);
        }
    }

    public static byte[] a(ECPublicKeyParameters eCPublicKeyParameters, ECPrivateKeyParameters eCPrivateKeyParameters) {
        ECDHBasicAgreement eCDHBasicAgreement = new ECDHBasicAgreement();
        eCDHBasicAgreement.a(eCPrivateKeyParameters);
        return BigIntegers.a(eCDHBasicAgreement.a(), eCDHBasicAgreement.b(eCPublicKeyParameters));
    }

    public static AsymmetricCipherKeyPair a(SecureRandom secureRandom, ECDomainParameters eCDomainParameters) {
        ECKeyPairGenerator eCKeyPairGenerator = new ECKeyPairGenerator();
        eCKeyPairGenerator.a(new ECKeyGenerationParameters(eCDomainParameters, secureRandom));
        return eCKeyPairGenerator.a();
    }

    public static ECPrivateKeyParameters a(SecureRandom secureRandom, short[] sArr, ECDomainParameters eCDomainParameters, OutputStream outputStream) throws IOException {
        AsymmetricCipherKeyPair a = a(secureRandom, eCDomainParameters);
        a(sArr, ((ECPublicKeyParameters) a.a()).c(), outputStream);
        return (ECPrivateKeyParameters) a.b();
    }

    public static ECPublicKeyParameters a(ECPublicKeyParameters eCPublicKeyParameters) throws IOException {
        return eCPublicKeyParameters;
    }

    public static int a(int i, InputStream inputStream) throws IOException {
        BigInteger a = a(inputStream);
        if (a.bitLength() < 32) {
            int intValue = a.intValue();
            if (intValue > 0 && intValue < i) {
                return intValue;
            }
        }
        throw new TlsFatalAlert((short) 47);
    }

    public static BigInteger b(int i, InputStream inputStream) throws IOException {
        return a(i, TlsUtils.e(inputStream));
    }

    public static BigInteger a(InputStream inputStream) throws IOException {
        return new BigInteger(1, TlsUtils.e(inputStream));
    }

    public static ECDomainParameters a(int[] iArr, short[] sArr, InputStream inputStream) throws IOException {
        try {
            BigInteger a;
            switch (TlsUtils.a(inputStream)) {
                case p.View_android_focusable /*1*/:
                    a(iArr, 65281);
                    BigInteger a2 = a(inputStream);
                    BigInteger b = b(a2.bitLength(), inputStream);
                    BigInteger b2 = b(a2.bitLength(), inputStream);
                    byte[] e = TlsUtils.e(inputStream);
                    BigInteger a3 = a(inputStream);
                    a = a(inputStream);
                    ECCurve fp = new Fp(a2, b, b2, a3, a);
                    return new ECDomainParameters(fp, a(sArr, fp, e), a3, a);
                case p.View_paddingStart /*2*/:
                    a(iArr, 65282);
                    int b3 = TlsUtils.b(inputStream);
                    short a4 = TlsUtils.a(inputStream);
                    if (ECBasisType.a(a4)) {
                        int a5 = a(b3, inputStream);
                        int i = -1;
                        int i2 = -1;
                        if (a4 == (short) 2) {
                            i = a(b3, inputStream);
                            i2 = a(b3, inputStream);
                        }
                        a = b(b3, inputStream);
                        BigInteger b4 = b(b3, inputStream);
                        byte[] e2 = TlsUtils.e(inputStream);
                        BigInteger a6 = a(inputStream);
                        BigInteger a7 = a(inputStream);
                        ECCurve f2m = a4 == (short) 2 ? new F2m(b3, a5, i, i2, a, b4, a6, a7) : new F2m(b3, a5, a, b4, a6, a7);
                        return new ECDomainParameters(f2m, a(sArr, f2m, e2), a6, a7);
                    }
                    throw new TlsFatalAlert((short) 47);
                case p.View_paddingEnd /*3*/:
                    int b5 = TlsUtils.b(inputStream);
                    if (NamedCurve.b(b5)) {
                        a(iArr, b5);
                        return b(b5);
                    }
                    throw new TlsFatalAlert((short) 47);
                default:
                    throw new TlsFatalAlert((short) 47);
            }
        } catch (RuntimeException e3) {
            throw new TlsFatalAlert((short) 47);
        }
        throw new TlsFatalAlert((short) 47);
    }

    private static void a(int[] iArr, int i) throws IOException {
        if (iArr != null && !Arrays.a(iArr, i)) {
            throw new TlsFatalAlert((short) 47);
        }
    }

    public static void a(int i, OutputStream outputStream) throws IOException {
        a(BigInteger.valueOf((long) i), outputStream);
    }

    public static void a(ECFieldElement eCFieldElement, OutputStream outputStream) throws IOException {
        TlsUtils.a(eCFieldElement.l(), outputStream);
    }

    public static void a(BigInteger bigInteger, OutputStream outputStream) throws IOException {
        TlsUtils.a(BigIntegers.a(bigInteger), outputStream);
    }

    public static void a(short[] sArr, ECDomainParameters eCDomainParameters, OutputStream outputStream) throws IOException {
        ECCurve a = eCDomainParameters.a();
        if (ECAlgorithms.b(a)) {
            TlsUtils.a((short) 1, outputStream);
            a(a.f().a(), outputStream);
        } else if (ECAlgorithms.a(a)) {
            int[] b = ((PolynomialExtensionField) a.f()).c().b();
            TlsUtils.a((short) 2, outputStream);
            int i = b[b.length - 1];
            TlsUtils.b(i);
            TlsUtils.b(i, outputStream);
            if (b.length == 3) {
                TlsUtils.a((short) 1, outputStream);
                a(b[1], outputStream);
            } else if (b.length == 5) {
                TlsUtils.a((short) 2, outputStream);
                a(b[1], outputStream);
                a(b[2], outputStream);
                a(b[3], outputStream);
            } else {
                throw new IllegalArgumentException("Only trinomial and pentomial curves are supported");
            }
        } else {
            throw new IllegalArgumentException("'ecParameters' not a known curve type");
        }
        a(a.g(), outputStream);
        a(a.h(), outputStream);
        TlsUtils.a(a(sArr, eCDomainParameters.b()), outputStream);
        a(eCDomainParameters.c(), outputStream);
        a(eCDomainParameters.d(), outputStream);
    }

    public static void a(short[] sArr, ECPoint eCPoint, OutputStream outputStream) throws IOException {
        TlsUtils.a(a(sArr, eCPoint), outputStream);
    }

    public static void b(int i, OutputStream outputStream) throws IOException {
        if (NamedCurve.b(i)) {
            TlsUtils.a((short) 3, outputStream);
            TlsUtils.b(i);
            TlsUtils.b(i, outputStream);
            return;
        }
        throw new TlsFatalAlert((short) 80);
    }
}
