package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERTaggedObject;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class Target extends ASN1Object implements ASN1Choice {
    private GeneralName a;
    private GeneralName b;

    public static Target a(Object obj) {
        if (obj == null || (obj instanceof Target)) {
            return (Target) obj;
        }
        if (obj instanceof ASN1TaggedObject) {
            return new Target((ASN1TaggedObject) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass());
    }

    private Target(ASN1TaggedObject aSN1TaggedObject) {
        switch (aSN1TaggedObject.a()) {
            case p.View_android_theme /*0*/:
                this.a = GeneralName.a(aSN1TaggedObject, true);
            case p.View_android_focusable /*1*/:
                this.b = GeneralName.a(aSN1TaggedObject, true);
            default:
                throw new IllegalArgumentException("unknown tag: " + aSN1TaggedObject.a());
        }
    }

    public GeneralName a() {
        return this.b;
    }

    public GeneralName b() {
        return this.a;
    }

    public ASN1Primitive d() {
        if (this.a != null) {
            return new DERTaggedObject(true, 0, this.a);
        }
        return new DERTaggedObject(true, 1, this.b);
    }
}
