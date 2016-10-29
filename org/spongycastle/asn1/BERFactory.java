package org.spongycastle.asn1;

/* compiled from: Twttr */
class BERFactory {
    static final BERSequence a;
    static final BERSet b;

    BERFactory() {
    }

    static {
        a = new BERSequence();
        b = new BERSet();
    }

    static BERSequence a(ASN1EncodableVector aSN1EncodableVector) {
        return aSN1EncodableVector.a() < 1 ? a : new BERSequence(aSN1EncodableVector);
    }
}
