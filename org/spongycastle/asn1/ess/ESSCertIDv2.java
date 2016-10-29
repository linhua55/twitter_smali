package org.spongycastle.asn1.ess;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.IssuerSerial;

/* compiled from: Twttr */
public class ESSCertIDv2 extends ASN1Object {
    private static final AlgorithmIdentifier d;
    private AlgorithmIdentifier a;
    private byte[] b;
    private IssuerSerial c;

    static {
        d = new AlgorithmIdentifier(NISTObjectIdentifiers.c);
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (!this.a.equals(d)) {
            aSN1EncodableVector.a(this.a);
        }
        aSN1EncodableVector.a(new DEROctetString(this.b).d());
        if (this.c != null) {
            aSN1EncodableVector.a(this.c);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
