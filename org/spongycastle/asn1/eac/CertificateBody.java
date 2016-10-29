package org.spongycastle.asn1.eac;

import java.io.IOException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERApplicationSpecific;

/* compiled from: Twttr */
public class CertificateBody extends ASN1Object {
    private DERApplicationSpecific a;
    private DERApplicationSpecific b;
    private PublicKeyDataObject c;
    private DERApplicationSpecific d;
    private CertificateHolderAuthorization e;
    private DERApplicationSpecific f;
    private DERApplicationSpecific g;
    private int h;

    private ASN1Primitive a() throws IOException {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.a);
        aSN1EncodableVector.a(this.b);
        aSN1EncodableVector.a(new DERApplicationSpecific(false, 73, this.c));
        aSN1EncodableVector.a(this.d);
        aSN1EncodableVector.a(this.e);
        aSN1EncodableVector.a(this.f);
        aSN1EncodableVector.a(this.g);
        return new DERApplicationSpecific(78, aSN1EncodableVector);
    }

    private ASN1Primitive b() throws IOException {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.a);
        aSN1EncodableVector.a(new DERApplicationSpecific(false, 73, this.c));
        aSN1EncodableVector.a(this.d);
        return new DERApplicationSpecific(78, aSN1EncodableVector);
    }

    public ASN1Primitive d() {
        try {
            if (this.h == 127) {
                return a();
            }
            if (this.h == 13) {
                return b();
            }
            return null;
        } catch (IOException e) {
            return null;
        }
    }
}
