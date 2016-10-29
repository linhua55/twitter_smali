package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class ASN1ObjectIdentifier extends ASN1Primitive {
    private static ASN1ObjectIdentifier[][] c;
    String a;
    private byte[] b;

    public static ASN1ObjectIdentifier a(Object obj) {
        if (obj == null || (obj instanceof ASN1ObjectIdentifier)) {
            return (ASN1ObjectIdentifier) obj;
        }
        if ((obj instanceof ASN1Encodable) && (((ASN1Encodable) obj).d() instanceof ASN1ObjectIdentifier)) {
            return (ASN1ObjectIdentifier) ((ASN1Encodable) obj).d();
        }
        if (obj instanceof byte[]) {
            try {
                return (ASN1ObjectIdentifier) ASN1Primitive.b((byte[]) obj);
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct object identifier from byte[]: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1ObjectIdentifier a(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        Object l = aSN1TaggedObject.l();
        if (z || (l instanceof ASN1ObjectIdentifier)) {
            return a(l);
        }
        return a(ASN1OctetString.a(aSN1TaggedObject.l()).e());
    }

    ASN1ObjectIdentifier(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        Object obj = 1;
        BigInteger bigInteger = null;
        long j = 0;
        for (int i = 0; i != bArr.length; i++) {
            int i2 = bArr[i] & 255;
            if (j <= 72057594037927808L) {
                j += (long) (i2 & 127);
                if ((i2 & 128) == 0) {
                    if (obj != null) {
                        if (j < 40) {
                            stringBuffer.append('0');
                        } else if (j < 80) {
                            stringBuffer.append('1');
                            j -= 40;
                        } else {
                            stringBuffer.append('2');
                            j -= 80;
                        }
                        obj = null;
                    }
                    stringBuffer.append('.');
                    stringBuffer.append(j);
                    j = 0;
                } else {
                    j <<= 7;
                }
            } else {
                if (bigInteger == null) {
                    bigInteger = BigInteger.valueOf(j);
                }
                bigInteger = bigInteger.or(BigInteger.valueOf((long) (i2 & 127)));
                if ((i2 & 128) == 0) {
                    Object obj2;
                    Object obj3;
                    if (obj != null) {
                        stringBuffer.append('2');
                        obj = bigInteger.subtract(BigInteger.valueOf(80));
                        obj2 = null;
                    } else {
                        obj3 = obj;
                        BigInteger bigInteger2 = bigInteger;
                        obj2 = obj3;
                    }
                    stringBuffer.append('.');
                    stringBuffer.append(obj);
                    j = 0;
                    obj3 = obj2;
                    bigInteger = null;
                    obj = obj3;
                } else {
                    bigInteger = bigInteger.shiftLeft(7);
                }
            }
        }
        this.a = stringBuffer.toString();
        this.b = Arrays.b(bArr);
    }

    public ASN1ObjectIdentifier(String str) {
        if (str == null) {
            throw new IllegalArgumentException("'identifier' cannot be null");
        } else if (c(str)) {
            this.a = str;
        } else {
            throw new IllegalArgumentException("string " + str + " not an OID");
        }
    }

    ASN1ObjectIdentifier(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        if (a(str, 0)) {
            this.a = aSN1ObjectIdentifier.a() + "." + str;
            return;
        }
        throw new IllegalArgumentException("string " + str + " not a valid OID branch");
    }

    public String a() {
        return this.a;
    }

    public ASN1ObjectIdentifier b(String str) {
        return new ASN1ObjectIdentifier(this, str);
    }

    public boolean a(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String a = a();
        String a2 = aSN1ObjectIdentifier.a();
        return a.length() > a2.length() && a.charAt(a2.length()) == '.' && a.startsWith(a2);
    }

    private void a(ByteArrayOutputStream byteArrayOutputStream, long j) {
        byte[] bArr = new byte[9];
        int i = 8;
        bArr[8] = (byte) (((int) j) & 127);
        while (j >= 128) {
            j >>= 7;
            i--;
            bArr[i] = (byte) ((((int) j) & 127) | 128);
        }
        byteArrayOutputStream.write(bArr, i, 9 - i);
    }

    private void a(ByteArrayOutputStream byteArrayOutputStream, BigInteger bigInteger) {
        int bitLength = (bigInteger.bitLength() + 6) / 7;
        if (bitLength == 0) {
            byteArrayOutputStream.write(0);
            return;
        }
        int i;
        byte[] bArr = new byte[bitLength];
        for (i = bitLength - 1; i >= 0; i--) {
            bArr[i] = (byte) ((bigInteger.intValue() & 127) | 128);
            bigInteger = bigInteger.shiftRight(7);
        }
        i = bitLength - 1;
        bArr[i] = (byte) (bArr[i] & 127);
        byteArrayOutputStream.write(bArr, 0, bArr.length);
    }

    private void a(ByteArrayOutputStream byteArrayOutputStream) {
        OIDTokenizer oIDTokenizer = new OIDTokenizer(this.a);
        int parseInt = Integer.parseInt(oIDTokenizer.b()) * 40;
        String b = oIDTokenizer.b();
        if (b.length() <= 18) {
            a(byteArrayOutputStream, Long.parseLong(b) + ((long) parseInt));
        } else {
            a(byteArrayOutputStream, new BigInteger(b).add(BigInteger.valueOf((long) parseInt)));
        }
        while (oIDTokenizer.a()) {
            String b2 = oIDTokenizer.b();
            if (b2.length() <= 18) {
                a(byteArrayOutputStream, Long.parseLong(b2));
            } else {
                a(byteArrayOutputStream, new BigInteger(b2));
            }
        }
    }

    protected synchronized byte[] e() {
        if (this.b == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            a(byteArrayOutputStream);
            this.b = byteArrayOutputStream.toByteArray();
        }
        return this.b;
    }

    boolean b() {
        return false;
    }

    int c() throws IOException {
        int length = e().length;
        return length + (StreamUtil.a(length) + 1);
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        byte[] e = e();
        aSN1OutputStream.b(6);
        aSN1OutputStream.a(e.length);
        aSN1OutputStream.a(e);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    boolean a(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1ObjectIdentifier) {
            return this.a.equals(((ASN1ObjectIdentifier) aSN1Primitive).a);
        }
        return false;
    }

    public String toString() {
        return a();
    }

    private static boolean a(String str, int i) {
        int length = str.length();
        boolean z = false;
        while (true) {
            length--;
            if (length < i) {
                return z;
            }
            char charAt = str.charAt(length);
            if ('0' <= charAt && charAt <= '9') {
                z = true;
            } else if (charAt != '.' || !z) {
                return false;
            } else {
                z = false;
            }
        }
    }

    private static boolean c(String str) {
        if (str.length() < 3 || str.charAt(1) != '.') {
            return false;
        }
        char charAt = str.charAt(0);
        if (charAt < '0' || charAt > '2') {
            return false;
        }
        return a(str, 2);
    }

    static {
        c = new ASN1ObjectIdentifier[256][];
    }

    static ASN1ObjectIdentifier a(byte[] bArr) {
        if (bArr.length < 3) {
            return new ASN1ObjectIdentifier(bArr);
        }
        int i = bArr[bArr.length - 2] & 255;
        int i2 = bArr[bArr.length - 1] & 127;
        synchronized (c) {
            ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr;
            ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr2 = c[i];
            if (aSN1ObjectIdentifierArr2 == null) {
                aSN1ObjectIdentifierArr2 = new ASN1ObjectIdentifier[128];
                c[i] = aSN1ObjectIdentifierArr2;
                aSN1ObjectIdentifierArr = aSN1ObjectIdentifierArr2;
            } else {
                aSN1ObjectIdentifierArr = aSN1ObjectIdentifierArr2;
            }
            ASN1ObjectIdentifier aSN1ObjectIdentifier = aSN1ObjectIdentifierArr[i2];
            if (aSN1ObjectIdentifier == null) {
                aSN1ObjectIdentifier = new ASN1ObjectIdentifier(bArr);
                aSN1ObjectIdentifierArr[i2] = aSN1ObjectIdentifier;
                return aSN1ObjectIdentifier;
            } else if (Arrays.a(bArr, aSN1ObjectIdentifier.e())) {
                return aSN1ObjectIdentifier;
            } else {
                int i3 = (i + 1) & 255;
                aSN1ObjectIdentifierArr2 = c[i3];
                if (aSN1ObjectIdentifierArr2 == null) {
                    aSN1ObjectIdentifierArr2 = new ASN1ObjectIdentifier[128];
                    c[i3] = aSN1ObjectIdentifierArr2;
                    aSN1ObjectIdentifierArr = aSN1ObjectIdentifierArr2;
                } else {
                    aSN1ObjectIdentifierArr = aSN1ObjectIdentifierArr2;
                }
                aSN1ObjectIdentifier = aSN1ObjectIdentifierArr[i2];
                if (aSN1ObjectIdentifier == null) {
                    aSN1ObjectIdentifier = new ASN1ObjectIdentifier(bArr);
                    aSN1ObjectIdentifierArr[i2] = aSN1ObjectIdentifier;
                    return aSN1ObjectIdentifier;
                } else if (Arrays.a(bArr, aSN1ObjectIdentifier.e())) {
                    return aSN1ObjectIdentifier;
                } else {
                    i = (i2 + 1) & 127;
                    aSN1ObjectIdentifier = aSN1ObjectIdentifierArr[i];
                    if (aSN1ObjectIdentifier == null) {
                        aSN1ObjectIdentifier = new ASN1ObjectIdentifier(bArr);
                        aSN1ObjectIdentifierArr[i] = aSN1ObjectIdentifier;
                        return aSN1ObjectIdentifier;
                    }
                    return !Arrays.a(bArr, aSN1ObjectIdentifier.e()) ? new ASN1ObjectIdentifier(bArr) : aSN1ObjectIdentifier;
                }
            }
        }
    }
}
