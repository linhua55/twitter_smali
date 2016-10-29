package org.spongycastle.asn1.eac;

import java.io.IOException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERApplicationSpecific;
import org.spongycastle.asn1.DEROctetString;

/* compiled from: Twttr */
public class CVCertificateRequest extends ASN1Object {
    public static byte[] a;
    private static int d;
    private static int e;
    private CertificateBody b;
    private byte[] c;

    static {
        d = 1;
        e = 2;
        a = new byte[]{(byte) 0};
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.b);
        try {
            aSN1EncodableVector.a(new DERApplicationSpecific(false, 55, new DEROctetString(this.c)));
            return new DERApplicationSpecific(33, aSN1EncodableVector);
        } catch (IOException e) {
            throw new IllegalStateException("unable to convert signature!");
        }
    }
}
