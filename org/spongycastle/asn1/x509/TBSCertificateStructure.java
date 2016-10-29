package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x500.X500Name;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class TBSCertificateStructure extends ASN1Object implements PKCSObjectIdentifiers, X509ObjectIdentifiers {
    ASN1Sequence bD;
    ASN1Integer bE;
    ASN1Integer bF;
    AlgorithmIdentifier bG;
    X500Name bH;
    Time bI;
    Time bJ;
    X500Name bK;
    SubjectPublicKeyInfo bL;
    DERBitString bM;
    DERBitString bN;
    X509Extensions bO;

    public static TBSCertificateStructure a(Object obj) {
        if (obj instanceof TBSCertificateStructure) {
            return (TBSCertificateStructure) obj;
        }
        if (obj != null) {
            return new TBSCertificateStructure(ASN1Sequence.a(obj));
        }
        return null;
    }

    public TBSCertificateStructure(ASN1Sequence aSN1Sequence) {
        int i;
        this.bD = aSN1Sequence;
        if (aSN1Sequence.a(0) instanceof DERTaggedObject) {
            this.bE = ASN1Integer.a((ASN1TaggedObject) aSN1Sequence.a(0), true);
            i = 0;
        } else {
            this.bE = new ASN1Integer(0);
            i = -1;
        }
        this.bF = ASN1Integer.a(aSN1Sequence.a(i + 1));
        this.bG = AlgorithmIdentifier.a(aSN1Sequence.a(i + 2));
        this.bH = X500Name.a(aSN1Sequence.a(i + 3));
        ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Sequence.a(i + 4);
        this.bI = Time.a(aSN1Sequence2.a(0));
        this.bJ = Time.a(aSN1Sequence2.a(1));
        this.bK = X500Name.a(aSN1Sequence.a(i + 5));
        this.bL = SubjectPublicKeyInfo.a(aSN1Sequence.a(i + 6));
        for (int h = (aSN1Sequence.h() - (i + 6)) - 1; h > 0; h--) {
            ASN1TaggedObject aSN1TaggedObject = (DERTaggedObject) aSN1Sequence.a((i + 6) + h);
            switch (aSN1TaggedObject.a()) {
                case p.View_android_focusable /*1*/:
                    this.bM = DERBitString.a(aSN1TaggedObject, false);
                    break;
                case p.View_paddingStart /*2*/:
                    this.bN = DERBitString.a(aSN1TaggedObject, false);
                    break;
                case p.View_paddingEnd /*3*/:
                    this.bO = X509Extensions.a(aSN1TaggedObject);
                    break;
                default:
                    break;
            }
        }
    }

    public X500Name a() {
        return this.bH;
    }

    public X500Name b() {
        return this.bK;
    }

    public ASN1Primitive d() {
        return this.bD;
    }
}
