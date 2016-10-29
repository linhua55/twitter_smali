package org.spongycastle.jcajce.provider.asymmetric.dstu;

import java.io.IOException;
import java.security.SignatureException;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;

/* compiled from: Twttr */
public class SignatureSpiLe extends SignatureSpi {
    void b(byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            byte b = bArr[i];
            bArr[i] = bArr[(bArr.length - 1) - i];
            bArr[(bArr.length - 1) - i] = b;
        }
    }

    protected byte[] engineSign() throws SignatureException {
        byte[] e = ASN1OctetString.a(super.engineSign()).e();
        b(e);
        try {
            return new DEROctetString(e).f();
        } catch (Exception e2) {
            throw new SignatureException(e2.toString());
        }
    }

    protected boolean engineVerify(byte[] bArr) throws SignatureException {
        try {
            byte[] e = ((ASN1OctetString) ASN1Primitive.b(bArr)).e();
            b(e);
            try {
                return super.engineVerify(new DEROctetString(e).f());
            } catch (SignatureException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new SignatureException(e3.toString());
            }
        } catch (IOException e4) {
            throw new SignatureException("error decoding signature bytes.");
        }
    }
}
