package org.spongycastle.crypto.tls;

import defpackage.cse;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.Certificate;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.KeyUsage;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.MD5Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.util.PublicKeyFactory;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;
import org.spongycastle.util.Strings;
import org.spongycastle.util.io.Streams;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class TlsUtils {
    public static final byte[] a;
    public static final Integer b;
    static final byte[] c;
    static final byte[] d;
    static final byte[][] e;

    static {
        a = new byte[0];
        b = Integers.a(13);
        c = new byte[]{(byte) 67, (byte) 76, (byte) 78, (byte) 84};
        d = new byte[]{(byte) 83, (byte) 82, (byte) 86, (byte) 82};
        e = d();
    }

    public static void a(int i) throws IOException {
        if (!d(i)) {
            throw new TlsFatalAlert((short) 80);
        }
    }

    public static void b(int i) throws IOException {
        if (!e(i)) {
            throw new TlsFatalAlert((short) 80);
        }
    }

    public static void c(int i) throws IOException {
        if (!f(i)) {
            throw new TlsFatalAlert((short) 80);
        }
    }

    public static boolean a(short s) {
        return (s & 255) == s;
    }

    public static boolean d(int i) {
        return (i & 255) == i;
    }

    public static boolean e(int i) {
        return (65535 & i) == i;
    }

    public static boolean f(int i) {
        return (16777215 & i) == i;
    }

    public static boolean a(TlsContext tlsContext) {
        return tlsContext.e().d();
    }

    public static boolean b(TlsContext tlsContext) {
        return ProtocolVersion.c.a(tlsContext.e().e());
    }

    public static boolean c(TlsContext tlsContext) {
        return ProtocolVersion.d.a(tlsContext.e().e());
    }

    public static void a(short s, OutputStream outputStream) throws IOException {
        outputStream.write(s);
    }

    public static void a(int i, OutputStream outputStream) throws IOException {
        outputStream.write(i);
    }

    public static void a(short s, byte[] bArr, int i) {
        bArr[i] = (byte) s;
    }

    public static void b(int i, OutputStream outputStream) throws IOException {
        outputStream.write(i >>> 8);
        outputStream.write(i);
    }

    public static void a(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 8);
        bArr[i2 + 1] = (byte) i;
    }

    public static void c(int i, OutputStream outputStream) throws IOException {
        outputStream.write((byte) (i >>> 16));
        outputStream.write((byte) (i >>> 8));
        outputStream.write((byte) i);
    }

    public static void b(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 16);
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) i;
    }

    public static void a(long j, OutputStream outputStream) throws IOException {
        outputStream.write((byte) ((int) (j >>> 24)));
        outputStream.write((byte) ((int) (j >>> 16)));
        outputStream.write((byte) ((int) (j >>> 8)));
        outputStream.write((byte) ((int) j));
    }

    public static void a(long j, byte[] bArr, int i) {
        bArr[i] = (byte) ((int) (j >>> 56));
        bArr[i + 1] = (byte) ((int) (j >>> 48));
        bArr[i + 2] = (byte) ((int) (j >>> 40));
        bArr[i + 3] = (byte) ((int) (j >>> 32));
        bArr[i + 4] = (byte) ((int) (j >>> 24));
        bArr[i + 5] = (byte) ((int) (j >>> 16));
        bArr[i + 6] = (byte) ((int) (j >>> 8));
        bArr[i + 7] = (byte) ((int) j);
    }

    public static void a(byte[] bArr, OutputStream outputStream) throws IOException {
        a(bArr.length);
        a(bArr.length, outputStream);
        outputStream.write(bArr);
    }

    public static void b(byte[] bArr, OutputStream outputStream) throws IOException {
        b(bArr.length);
        b(bArr.length, outputStream);
        outputStream.write(bArr);
    }

    public static void c(byte[] bArr, OutputStream outputStream) throws IOException {
        c(bArr.length);
        c(bArr.length, outputStream);
        outputStream.write(bArr);
    }

    public static void a(short[] sArr, OutputStream outputStream) throws IOException {
        for (short a : sArr) {
            a(a, outputStream);
        }
    }

    public static void b(short[] sArr, OutputStream outputStream) throws IOException {
        a(sArr.length);
        a(sArr.length, outputStream);
        a(sArr, outputStream);
    }

    public static byte[] a(byte[] bArr) throws IOException {
        a(bArr.length);
        return Arrays.b(bArr, (byte) bArr.length);
    }

    public static short a(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read >= 0) {
            return (short) read;
        }
        throw new EOFException();
    }

    public static short a(byte[] bArr, int i) {
        return (short) bArr[i];
    }

    public static int b(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        int read2 = inputStream.read();
        if (read2 >= 0) {
            return (read << 8) | read2;
        }
        throw new EOFException();
    }

    public static int b(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 8) | (bArr[i + 1] & 255);
    }

    public static int c(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        if (read3 >= 0) {
            return ((read << 16) | (read2 << 8)) | read3;
        }
        throw new EOFException();
    }

    public static long d(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        int read4 = inputStream.read();
        if (read4 >= 0) {
            return ((long) ((((read << 2) | (read2 << 16)) | (read3 << 8)) | read4)) & 4294967295L;
        }
        throw new EOFException();
    }

    public static byte[] a(int i, InputStream inputStream) throws IOException {
        if (i < 1) {
            return a;
        }
        byte[] bArr = new byte[i];
        int a = Streams.a(inputStream, bArr);
        if (a == 0) {
            return null;
        }
        if (a == i) {
            return bArr;
        }
        throw new EOFException();
    }

    public static byte[] b(int i, InputStream inputStream) throws IOException {
        if (i < 1) {
            return a;
        }
        byte[] bArr = new byte[i];
        if (i == Streams.a(inputStream, bArr)) {
            return bArr;
        }
        throw new EOFException();
    }

    public static byte[] e(InputStream inputStream) throws IOException {
        return b(a(inputStream), inputStream);
    }

    public static byte[] f(InputStream inputStream) throws IOException {
        return b(b(inputStream), inputStream);
    }

    public static byte[] g(InputStream inputStream) throws IOException {
        return b(c(inputStream), inputStream);
    }

    public static short[] c(int i, InputStream inputStream) throws IOException {
        short[] sArr = new short[i];
        for (int i2 = 0; i2 < i; i2++) {
            sArr[i2] = a(inputStream);
        }
        return sArr;
    }

    public static int[] d(int i, InputStream inputStream) throws IOException {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = b(inputStream);
        }
        return iArr;
    }

    public static ProtocolVersion c(byte[] bArr, int i) throws IOException {
        return ProtocolVersion.a(bArr[i] & 255, bArr[i + 1] & 255);
    }

    public static ProtocolVersion h(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        int read2 = inputStream.read();
        if (read2 >= 0) {
            return ProtocolVersion.a(read, read2);
        }
        throw new EOFException();
    }

    public static int d(byte[] bArr, int i) throws IOException {
        return (bArr[i] << 8) | bArr[i + 1];
    }

    public static ASN1Primitive b(byte[] bArr) throws IOException {
        ASN1InputStream aSN1InputStream = new ASN1InputStream(bArr);
        ASN1Primitive d = aSN1InputStream.d();
        if (d == null) {
            throw new TlsFatalAlert((short) 50);
        } else if (aSN1InputStream.d() == null) {
            return d;
        } else {
            throw new TlsFatalAlert((short) 50);
        }
    }

    public static ASN1Primitive c(byte[] bArr) throws IOException {
        ASN1Primitive b = b(bArr);
        if (Arrays.a(b.a("DER"), bArr)) {
            return b;
        }
        throw new TlsFatalAlert((short) 50);
    }

    public static void a(ProtocolVersion protocolVersion, OutputStream outputStream) throws IOException {
        outputStream.write(protocolVersion.a());
        outputStream.write(protocolVersion.b());
    }

    public static void a(ProtocolVersion protocolVersion, byte[] bArr, int i) {
        bArr[i] = (byte) protocolVersion.a();
        bArr[i + 1] = (byte) protocolVersion.b();
    }

    public static Vector a() {
        return a(new SignatureAndHashAlgorithm((short) 2, (short) 2));
    }

    public static Vector b() {
        return a(new SignatureAndHashAlgorithm((short) 2, (short) 3));
    }

    public static Vector c() {
        return a(new SignatureAndHashAlgorithm((short) 2, (short) 1));
    }

    public static byte[] a(Hashtable hashtable, Integer num) {
        return hashtable == null ? null : (byte[]) hashtable.get(num);
    }

    public static boolean a(Hashtable hashtable, Integer num, short s) throws IOException {
        byte[] a = a(hashtable, num);
        if (a == null) {
            return false;
        }
        if (a.length == 0) {
            return true;
        }
        throw new TlsFatalAlert(s);
    }

    public static boolean a(ProtocolVersion protocolVersion) {
        return ProtocolVersion.d.a(protocolVersion.e());
    }

    public static void a(Vector vector, boolean z, OutputStream outputStream) throws IOException {
        if (vector == null || vector.size() < 1 || vector.size() >= 32768) {
            throw new IllegalArgumentException("'supportedSignatureAlgorithms' must have length from 1 to (2^15 - 1)");
        }
        int size = vector.size() * 2;
        b(size);
        b(size, outputStream);
        int i = 0;
        while (i < vector.size()) {
            SignatureAndHashAlgorithm signatureAndHashAlgorithm = (SignatureAndHashAlgorithm) vector.elementAt(i);
            if (z || signatureAndHashAlgorithm.b() != (short) 0) {
                signatureAndHashAlgorithm.a(outputStream);
                i++;
            } else {
                throw new IllegalArgumentException("SignatureAlgorithm.anonymous MUST NOT appear in the signature_algorithms extension");
            }
        }
    }

    public static Vector a(boolean z, InputStream inputStream) throws IOException {
        int b = b(inputStream);
        if (b < 2 || (b & 1) != 0) {
            throw new TlsFatalAlert((short) 50);
        }
        int i = b / 2;
        Vector vector = new Vector(i);
        b = 0;
        while (b < i) {
            SignatureAndHashAlgorithm a = SignatureAndHashAlgorithm.a(inputStream);
            if (z || a.b() != (short) 0) {
                vector.addElement(a);
                b++;
            } else {
                throw new TlsFatalAlert((short) 47);
            }
        }
        return vector;
    }

    public static byte[] a(TlsContext tlsContext, byte[] bArr, String str, byte[] bArr2, int i) {
        if (tlsContext.e().d()) {
            throw new IllegalStateException("No PRF available for SSLv3 session");
        }
        byte[] d = Strings.d(str);
        byte[] a = a(d, bArr2);
        int b = tlsContext.c().b();
        if (b == 0) {
            return a(bArr, d, a, i);
        }
        d = new byte[i];
        a(g(b), bArr, a, d);
        return d;
    }

    static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        int i2 = 0;
        int length = (bArr.length + 1) / 2;
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[length];
        System.arraycopy(bArr, 0, bArr4, 0, length);
        System.arraycopy(bArr, bArr.length - length, bArr5, 0, length);
        byte[] bArr6 = new byte[i];
        byte[] bArr7 = new byte[i];
        a(b((short) 1), bArr4, bArr3, bArr6);
        a(b((short) 2), bArr5, bArr3, bArr7);
        while (i2 < i) {
            bArr6[i2] = (byte) (bArr6[i2] ^ bArr7[i2]);
            i2++;
        }
        return bArr6;
    }

    static byte[] a(byte[] bArr, byte[] bArr2) {
        Object obj = new byte[(bArr.length + bArr2.length)];
        System.arraycopy(bArr, 0, obj, 0, bArr.length);
        System.arraycopy(bArr2, 0, obj, bArr.length, bArr2.length);
        return obj;
    }

    static void a(Digest digest, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        HMac hMac = new HMac(digest);
        hMac.a(new KeyParameter(bArr));
        int b = digest.b();
        int length = ((bArr3.length + b) - 1) / b;
        byte[] bArr4 = new byte[hMac.b()];
        Object obj = new byte[hMac.b()];
        int i = 0;
        byte[] bArr5 = bArr2;
        while (i < length) {
            hMac.a(bArr5, 0, bArr5.length);
            hMac.a(bArr4, 0);
            hMac.a(bArr4, 0, bArr4.length);
            hMac.a(bArr2, 0, bArr2.length);
            hMac.a(obj, 0);
            System.arraycopy(obj, 0, bArr3, b * i, Math.min(b, bArr3.length - (b * i)));
            i++;
            bArr5 = bArr4;
        }
    }

    static void a(Certificate certificate, int i) throws IOException {
        Extensions n = certificate.a().n();
        if (n != null) {
            KeyUsage a = KeyUsage.a(n);
            if (a != null && ((a.a()[0] & 255) & i) != i) {
                throw new TlsFatalAlert((short) 46);
            }
        }
    }

    static byte[] a(TlsContext tlsContext, int i) {
        SecurityParameters c = tlsContext.c();
        byte[] d = c.d();
        byte[] a = a(c.f(), c.e());
        if (a(tlsContext)) {
            return a(d, a, i);
        }
        return a(tlsContext, d, "key expansion", a, i);
    }

    static byte[] a(byte[] bArr, byte[] bArr2, int i) {
        Digest b = b((short) 1);
        Digest b2 = b((short) 2);
        int b3 = b.b();
        byte[] bArr3 = new byte[b2.b()];
        Object obj = new byte[(i + b3)];
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            byte[] bArr4 = e[i3];
            b2.a(bArr4, 0, bArr4.length);
            b2.a(bArr, 0, bArr.length);
            b2.a(bArr2, 0, bArr2.length);
            b2.a(bArr3, 0);
            b.a(bArr, 0, bArr.length);
            b.a(bArr3, 0, bArr3.length);
            b.a(obj, i2);
            i2 += b3;
            i3++;
        }
        Object obj2 = new byte[i];
        System.arraycopy(obj, 0, obj2, 0, i);
        return obj2;
    }

    static byte[] a(TlsContext tlsContext, byte[] bArr) {
        SecurityParameters c = tlsContext.c();
        byte[] a = a(c.e(), c.f());
        if (a(tlsContext)) {
            return b(bArr, a);
        }
        return a(tlsContext, bArr, "master secret", a, 48);
    }

    static byte[] b(byte[] bArr, byte[] bArr2) {
        Digest b = b((short) 1);
        Digest b2 = b((short) 2);
        int b3 = b.b();
        byte[] bArr3 = new byte[b2.b()];
        byte[] bArr4 = new byte[(b3 * 3)];
        int i = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            byte[] bArr5 = e[i2];
            b2.a(bArr5, 0, bArr5.length);
            b2.a(bArr, 0, bArr.length);
            b2.a(bArr2, 0, bArr2.length);
            b2.a(bArr3, 0);
            b.a(bArr, 0, bArr.length);
            b.a(bArr3, 0, bArr3.length);
            b.a(bArr4, i);
            i += b3;
        }
        return bArr4;
    }

    static byte[] a(TlsContext tlsContext, String str, byte[] bArr) {
        if (a(tlsContext)) {
            return bArr;
        }
        SecurityParameters c = tlsContext.c();
        return a(tlsContext, c.d(), str, bArr, c.c());
    }

    public static Digest b(short s) {
        switch (s) {
            case p.View_android_focusable /*1*/:
                return new MD5Digest();
            case p.View_paddingStart /*2*/:
                return new SHA1Digest();
            case p.View_paddingEnd /*3*/:
                return new SHA224Digest();
            case p.View_theme /*4*/:
                return new SHA256Digest();
            case p.Toolbar_contentInsetStart /*5*/:
                return new SHA384Digest();
            case p.Toolbar_contentInsetEnd /*6*/:
                return new SHA512Digest();
            default:
                throw new IllegalArgumentException("unknown HashAlgorithm");
        }
    }

    public static Digest a(short s, Digest digest) {
        switch (s) {
            case p.View_android_focusable /*1*/:
                return new MD5Digest((MD5Digest) digest);
            case p.View_paddingStart /*2*/:
                return new SHA1Digest((SHA1Digest) digest);
            case p.View_paddingEnd /*3*/:
                return new SHA224Digest((SHA224Digest) digest);
            case p.View_theme /*4*/:
                return new SHA256Digest((SHA256Digest) digest);
            case p.Toolbar_contentInsetStart /*5*/:
                return new SHA384Digest((SHA384Digest) digest);
            case p.Toolbar_contentInsetEnd /*6*/:
                return new SHA512Digest((SHA512Digest) digest);
            default:
                throw new IllegalArgumentException("unknown HashAlgorithm");
        }
    }

    public static Digest g(int i) {
        switch (i) {
            case p.View_android_theme /*0*/:
                return new CombinedHash();
            default:
                return b(h(i));
        }
    }

    public static short h(int i) {
        switch (i) {
            case p.View_android_theme /*0*/:
                throw new IllegalArgumentException("legacy PRF not a valid algorithm");
            case p.View_android_focusable /*1*/:
                return (short) 4;
            case p.View_paddingStart /*2*/:
                return (short) 5;
            default:
                throw new IllegalArgumentException("unknown PRFAlgorithm");
        }
    }

    public static ASN1ObjectIdentifier c(short s) {
        switch (s) {
            case p.View_android_focusable /*1*/:
                return PKCSObjectIdentifiers.H;
            case p.View_paddingStart /*2*/:
                return X509ObjectIdentifiers.i;
            case p.View_paddingEnd /*3*/:
                return NISTObjectIdentifiers.f;
            case p.View_theme /*4*/:
                return NISTObjectIdentifiers.c;
            case p.Toolbar_contentInsetStart /*5*/:
                return NISTObjectIdentifiers.d;
            case p.Toolbar_contentInsetEnd /*6*/:
                return NISTObjectIdentifiers.e;
            default:
                throw new IllegalArgumentException("unknown HashAlgorithm");
        }
    }

    static short a(Certificate certificate, Certificate certificate2) throws IOException {
        if (certificate.c()) {
            return (short) -1;
        }
        Certificate a = certificate.a(0);
        try {
            AsymmetricKeyParameter a2 = PublicKeyFactory.a(a.k());
            if (a2.a()) {
                throw new TlsFatalAlert((short) 80);
            } else if (a2 instanceof RSAKeyParameters) {
                a(a, 128);
                return (short) 1;
            } else if (a2 instanceof DSAPublicKeyParameters) {
                a(a, 128);
                return (short) 2;
            } else {
                if (a2 instanceof ECPublicKeyParameters) {
                    a(a, 128);
                    return (short) 64;
                }
                throw new TlsFatalAlert((short) 43);
            }
        } catch (Exception e) {
        }
    }

    static void a(TlsHandshakeHash tlsHandshakeHash, Vector vector) {
        if (vector != null) {
            for (int i = 0; i < vector.size(); i++) {
                tlsHandshakeHash.a(((SignatureAndHashAlgorithm) vector.elementAt(i)).a());
            }
        }
    }

    public static boolean d(short s) {
        switch (s) {
            case p.View_android_focusable /*1*/:
            case p.View_paddingStart /*2*/:
            case ApiRunnable.ACTION_CODE_GET_BROADCASTS_FOR_TELEPORT /*64*/:
                return true;
            default:
                return false;
        }
    }

    public static TlsSigner e(short s) {
        switch (s) {
            case p.View_android_focusable /*1*/:
                return new TlsRSASigner();
            case p.View_paddingStart /*2*/:
                return new TlsDSSSigner();
            case ApiRunnable.ACTION_CODE_GET_BROADCASTS_FOR_TELEPORT /*64*/:
                return new TlsECDSASigner();
            default:
                throw new IllegalArgumentException("'clientCertificateType' is not a type with signing capability");
        }
    }

    private static byte[][] d() {
        byte[][] bArr = new byte[10][];
        for (int i = 0; i < 10; i++) {
            byte[] bArr2 = new byte[(i + 1)];
            Arrays.a(bArr2, (byte) (i + 65));
            bArr[i] = bArr2;
        }
        return bArr;
    }

    private static Vector a(Object obj) {
        Vector vector = new Vector(1);
        vector.addElement(obj);
        return vector;
    }

    public static int i(int i) throws IOException {
        switch (j(i)) {
            case p.View_android_focusable /*1*/:
            case p.View_paddingStart /*2*/:
            case ApiRunnable.MAX_GET_BROADCASTS /*100*/:
            case cse.AppCompatTheme_buttonStyleSmall /*101*/:
                return 0;
            case p.View_paddingEnd /*3*/:
            case p.View_theme /*4*/:
            case p.Toolbar_contentInsetStart /*5*/:
            case p.Toolbar_contentInsetEnd /*6*/:
            case p.Toolbar_contentInsetLeft /*7*/:
            case p.Toolbar_contentInsetRight /*8*/:
            case p.Toolbar_popupTheme /*9*/:
            case p.Toolbar_titleMargins /*12*/:
            case p.Toolbar_titleMarginStart /*13*/:
            case p.Toolbar_titleMarginEnd /*14*/:
                return 1;
            case p.Toolbar_titleTextAppearance /*10*/:
            case p.Toolbar_subtitleTextAppearance /*11*/:
            case p.Toolbar_titleMarginTop /*15*/:
            case p.Toolbar_titleMarginBottom /*16*/:
            case p.Toolbar_maxButtonHeight /*17*/:
            case p.Toolbar_collapseIcon /*18*/:
            case p.Toolbar_collapseContentDescription /*19*/:
            case p.Toolbar_navigationIcon /*20*/:
            case cse.AppCompatTheme_checkboxStyle /*102*/:
                return 2;
            default:
                throw new TlsFatalAlert((short) 80);
        }
    }

    public static int j(int i) throws IOException {
        switch (i) {
            case p.View_android_focusable /*1*/:
                return 0;
            case p.View_paddingStart /*2*/:
            case ApiRunnable.ACTION_CODE_USER_BROADCASTS /*44*/:
            case ApiRunnable.ACTION_CODE_UPLOAD_PROFILE_IMAGE /*45*/:
            case ApiRunnable.ACTION_CODE_UPDATE_PROFILE_DESCRIPTION /*46*/:
            case 49153:
            case 49158:
            case 49163:
            case 49168:
            case 49209:
                return 0;
            case p.View_theme /*4*/:
            case p.Toolbar_subtitleTextColor /*24*/:
                return 2;
            case p.Toolbar_contentInsetStart /*5*/:
            case 138:
            case 142:
            case 146:
            case 49154:
            case 49159:
            case 49164:
            case 49169:
            case 49174:
            case 49203:
                return 2;
            case p.Toolbar_titleTextAppearance /*10*/:
            case p.Toolbar_titleMarginStart /*13*/:
            case p.Toolbar_titleMarginBottom /*16*/:
            case p.Toolbar_collapseContentDescription /*19*/:
            case p.Toolbar_logoDescription /*22*/:
            case 139:
            case 143:
            case 147:
            case 49155:
            case 49160:
            case 49165:
            case 49170:
            case 49178:
            case 49179:
            case 49180:
            case 49204:
                return 7;
            case ApiRunnable.ACTION_CODE_UPDATE_PROFILE_DISPLAY_NAME /*47*/:
            case cse.AppCompatTheme_homeAsUpIndicator /*48*/:
            case ApiRunnable.ACTION_CODE_GET_RANK_PARAMETERS /*49*/:
            case ApiRunnable.ACTION_CODE_SET_RANK_PARAMETERS /*50*/:
            case ApiRunnable.ACTION_CODE_BROADCAST_RANK /*51*/:
            case ApiRunnable.ACTION_CODE_GET_MUTUAL_FOLLOWS /*60*/:
            case ApiRunnable.ACTION_CODE_REPLAY_THUMBNAIL_PLAYLIST /*62*/:
            case ApiRunnable.ACTION_CODE_UNBAN /*63*/:
            case ApiRunnable.ACTION_CODE_GET_BROADCASTS_FOR_TELEPORT /*64*/:
            case cse.AppCompatTheme_checkedTextViewStyle /*103*/:
            case 140:
            case 144:
            case 148:
            case 174:
            case 178:
            case 182:
            case 49156:
            case 49161:
            case 49166:
            case 49171:
            case 49181:
            case 49182:
            case 49183:
            case 49187:
            case 49189:
            case 49191:
            case 49193:
            case 49205:
            case 49207:
                return 8;
            case ApiRunnable.ACTION_CODE_PLAYBACK_META /*53*/:
            case ApiRunnable.ACTION_CODE_BROADCAST_META /*54*/:
            case ApiRunnable.ACTION_CODE_MUTE /*55*/:
            case ApiRunnable.ACTION_CODE_UNMUTE /*56*/:
            case ApiRunnable.ACTION_CODE_SUPPORTED_LANGUAGES /*57*/:
            case 141:
            case 145:
            case 149:
            case 49157:
            case 49162:
            case 49167:
            case 49172:
            case 49184:
            case 49185:
            case 49186:
            case 49206:
                return 9;
            case ApiRunnable.ACTION_CODE_HELLO /*59*/:
            case 176:
            case 180:
            case 184:
            case 49210:
                return 0;
            case ApiRunnable.ACTION_CODE_GET_USER_BY_USERNAME /*61*/:
            case cse.AppCompatTheme_editTextStyle /*104*/:
            case cse.AppCompatTheme_radioButtonStyle /*105*/:
            case cse.AppCompatTheme_ratingBarStyle /*106*/:
            case cse.AppCompatTheme_ratingBarStyleIndicator /*107*/:
                return 9;
            case ApiRunnable.ACTION_CODE_ACCESS_VIDEO /*65*/:
            case ApiRunnable.ACTION_CODE_ACCESS_CHAT /*66*/:
            case ApiRunnable.ACTION_CODE_START_WATCHING /*67*/:
            case ApiRunnable.ACTION_CODE_PING_REPLAY_VIEWED /*68*/:
            case ApiRunnable.ACTION_CODE_BROADCAST_SEARCH /*69*/:
                return 12;
            case 132:
            case 133:
            case 134:
            case 135:
            case 136:
                return 13;
            case 150:
            case 151:
            case 152:
            case 153:
            case 154:
                return 14;
            case 156:
            case 158:
            case 160:
            case 162:
            case 164:
            case 168:
            case 170:
            case 172:
            case 49195:
            case 49197:
            case 49199:
            case 49201:
                return 10;
            case 157:
            case 159:
            case 161:
            case 163:
            case 165:
            case 169:
            case 171:
            case 173:
            case 49196:
            case 49198:
            case 49200:
            case 49202:
                return 11;
            case 175:
            case 179:
            case 183:
            case 49188:
            case 49190:
            case 49192:
            case 49194:
            case 49208:
                return 9;
            case 177:
            case 181:
            case 185:
            case 49211:
                return 0;
            case 186:
            case 187:
            case 188:
            case 189:
            case 190:
            case 49266:
            case 49268:
            case 49270:
            case 49272:
            case 49300:
            case 49302:
            case 49304:
            case 49306:
                return 12;
            case 192:
            case 193:
            case 194:
            case 195:
            case 196:
                return 13;
            case 49267:
            case 49269:
            case 49271:
            case 49273:
            case 49301:
            case 49303:
            case 49305:
            case 49307:
                return 13;
            case 49274:
            case 49276:
            case 49278:
            case 49280:
            case 49282:
            case 49286:
            case 49288:
            case 49290:
            case 49292:
            case 49294:
            case 49296:
            case 49298:
                return 19;
            case 49275:
            case 49277:
            case 49279:
            case 49281:
            case 49283:
            case 49287:
            case 49289:
            case 49291:
            case 49293:
            case 49295:
            case 49297:
            case 49299:
                return 20;
            case 49308:
            case 49310:
            case 49316:
            case 49318:
                return 15;
            case 49309:
            case 49311:
            case 49317:
            case 49319:
                return 17;
            case 49312:
            case 49314:
            case 49320:
            case 49322:
                return 16;
            case 49313:
            case 49315:
            case 49321:
            case 49323:
                return 18;
            case 52243:
            case 52244:
            case 52245:
                return cse.AppCompatTheme_checkboxStyle;
            case 58384:
            case 58386:
            case 58388:
            case 58390:
            case 58392:
            case 58394:
            case 58396:
            case 58398:
                return 100;
            case 58385:
            case 58387:
            case 58389:
            case 58391:
            case 58393:
            case 58395:
            case 58397:
            case 58399:
                return cse.AppCompatTheme_buttonStyleSmall;
            default:
                throw new TlsFatalAlert((short) 80);
        }
    }

    public static ProtocolVersion k(int i) {
        switch (i) {
            case ApiRunnable.ACTION_CODE_HELLO /*59*/:
            case ApiRunnable.ACTION_CODE_GET_MUTUAL_FOLLOWS /*60*/:
            case ApiRunnable.ACTION_CODE_GET_USER_BY_USERNAME /*61*/:
            case ApiRunnable.ACTION_CODE_REPLAY_THUMBNAIL_PLAYLIST /*62*/:
            case ApiRunnable.ACTION_CODE_UNBAN /*63*/:
            case ApiRunnable.ACTION_CODE_GET_BROADCASTS_FOR_TELEPORT /*64*/:
            case cse.AppCompatTheme_checkedTextViewStyle /*103*/:
            case cse.AppCompatTheme_editTextStyle /*104*/:
            case cse.AppCompatTheme_radioButtonStyle /*105*/:
            case cse.AppCompatTheme_ratingBarStyle /*106*/:
            case cse.AppCompatTheme_ratingBarStyleIndicator /*107*/:
            case 156:
            case 157:
            case 158:
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
            case 165:
            case 168:
            case 169:
            case 170:
            case 171:
            case 172:
            case 173:
            case 186:
            case 187:
            case 188:
            case 189:
            case 190:
            case 191:
            case 192:
            case 193:
            case 194:
            case 195:
            case 196:
            case 197:
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
            case 49266:
            case 49267:
            case 49268:
            case 49269:
            case 49270:
            case 49271:
            case 49272:
            case 49273:
            case 49274:
            case 49275:
            case 49276:
            case 49277:
            case 49278:
            case 49279:
            case 49280:
            case 49281:
            case 49282:
            case 49283:
            case 49284:
            case 49285:
            case 49286:
            case 49287:
            case 49288:
            case 49289:
            case 49290:
            case 49291:
            case 49292:
            case 49293:
            case 49294:
            case 49295:
            case 49296:
            case 49297:
            case 49298:
            case 49299:
            case 49308:
            case 49309:
            case 49310:
            case 49311:
            case 49312:
            case 49313:
            case 49314:
            case 49315:
            case 49316:
            case 49317:
            case 49318:
            case 49319:
            case 49320:
            case 49321:
            case 49322:
            case 49323:
            case 52243:
            case 52244:
            case 52245:
                return ProtocolVersion.d;
            default:
                return ProtocolVersion.a;
        }
    }

    public static boolean l(int i) throws IOException {
        return 1 == i(i);
    }

    public static boolean a(int i, ProtocolVersion protocolVersion) {
        return k(i).a(protocolVersion.e());
    }
}
