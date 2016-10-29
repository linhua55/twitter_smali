package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1String;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

/* compiled from: Twttr */
public class RoleSyntax extends ASN1Object {
    private GeneralNames a;
    private GeneralName b;

    public String a() {
        return ((ASN1String) this.b.b()).a();
    }

    public String[] b() {
        if (this.a == null) {
            return new String[0];
        }
        GeneralName[] a = this.a.a();
        String[] strArr = new String[a.length];
        for (int i = 0; i < a.length; i++) {
            ASN1Encodable b = a[i].b();
            if (b instanceof ASN1String) {
                strArr[i] = ((ASN1String) b).a();
            } else {
                strArr[i] = b.toString();
            }
        }
        return strArr;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.a != null) {
            aSN1EncodableVector.a(new DERTaggedObject(false, 0, this.a));
        }
        aSN1EncodableVector.a(new DERTaggedObject(true, 1, this.b));
        return new DERSequence(aSN1EncodableVector);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("Name: " + a() + " - Auth: ");
        if (this.a == null || this.a.a().length == 0) {
            stringBuffer.append("N/A");
        } else {
            String[] b = b();
            stringBuffer.append('[').append(b[0]);
            for (int i = 1; i < b.length; i++) {
                stringBuffer.append(", ").append(b[i]);
            }
            stringBuffer.append(']');
        }
        return stringBuffer.toString();
    }
}
