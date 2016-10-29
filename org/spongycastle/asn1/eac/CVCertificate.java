package org.spongycastle.asn1.eac;

import java.io.IOException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERApplicationSpecific;
import org.spongycastle.asn1.DEROctetString;

/* compiled from: Twttr */
public class CVCertificate extends ASN1Object {
    public static String a;
    private static int e;
    private static int f;
    private CertificateBody b;
    private byte[] c;
    private int d;

    static {
        e = 1;
        f = 2;
        a = "ISO-8859-1";
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.d != (f | e)) {
            return null;
        }
        aSN1EncodableVector.a(this.b);
        try {
            aSN1EncodableVector.a(new DERApplicationSpecific(false, 55, new DEROctetString(this.c)));
            return new DERApplicationSpecific(33, aSN1EncodableVector);
        } catch (IOException e) {
            throw new IllegalStateException("unable to convert signature!");
        }
    }
}
