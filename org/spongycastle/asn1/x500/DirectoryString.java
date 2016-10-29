package org.spongycastle.asn1.x500;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1String;

/* compiled from: Twttr */
public class DirectoryString extends ASN1Object implements ASN1Choice, ASN1String {
    private ASN1String a;

    public String a() {
        return this.a.a();
    }

    public String toString() {
        return this.a.a();
    }

    public ASN1Primitive d() {
        return ((ASN1Encodable) this.a).d();
    }
}
