package org.spongycastle.asn1;

/* compiled from: Twttr */
class DERFactory {
    static final ASN1Sequence a;
    static final ASN1Set b;

    DERFactory() {
    }

    static {
        a = new DERSequence();
        b = new DERSet();
    }

    static ASN1Sequence a(ASN1EncodableVector aSN1EncodableVector) {
        return aSN1EncodableVector.a() < 1 ? a : new DLSequence(aSN1EncodableVector);
    }

    static ASN1Set b(ASN1EncodableVector aSN1EncodableVector) {
        return aSN1EncodableVector.a() < 1 ? b : new DLSet(aSN1EncodableVector);
    }
}
