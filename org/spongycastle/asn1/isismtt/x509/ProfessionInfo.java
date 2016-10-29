package org.spongycastle.asn1.isismtt.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

/* compiled from: Twttr */
public class ProfessionInfo extends ASN1Object {
    public static final ASN1ObjectIdentifier a;
    public static final ASN1ObjectIdentifier b;
    public static final ASN1ObjectIdentifier c;
    public static final ASN1ObjectIdentifier d;
    public static final ASN1ObjectIdentifier e;
    public static final ASN1ObjectIdentifier f;
    public static final ASN1ObjectIdentifier g;
    public static final ASN1ObjectIdentifier h;
    public static final ASN1ObjectIdentifier i;
    public static final ASN1ObjectIdentifier j;
    public static final ASN1ObjectIdentifier k;
    public static final ASN1ObjectIdentifier l;
    public static final ASN1ObjectIdentifier m;
    public static final ASN1ObjectIdentifier n;
    public static final ASN1ObjectIdentifier o;
    public static final ASN1ObjectIdentifier p;
    public static final ASN1ObjectIdentifier q;
    public static final ASN1ObjectIdentifier r;
    public static final ASN1ObjectIdentifier s;
    private NamingAuthority t;
    private ASN1Sequence u;
    private ASN1Sequence v;
    private String w;
    private ASN1OctetString x;

    static {
        a = new ASN1ObjectIdentifier(NamingAuthority.a + ".1");
        b = new ASN1ObjectIdentifier(NamingAuthority.a + ".2");
        c = new ASN1ObjectIdentifier(NamingAuthority.a + ".3");
        d = new ASN1ObjectIdentifier(NamingAuthority.a + ".4");
        e = new ASN1ObjectIdentifier(NamingAuthority.a + ".5");
        f = new ASN1ObjectIdentifier(NamingAuthority.a + ".6");
        g = new ASN1ObjectIdentifier(NamingAuthority.a + ".7");
        h = new ASN1ObjectIdentifier(NamingAuthority.a + ".8");
        i = new ASN1ObjectIdentifier(NamingAuthority.a + ".9");
        j = new ASN1ObjectIdentifier(NamingAuthority.a + ".10");
        k = new ASN1ObjectIdentifier(NamingAuthority.a + ".11");
        l = new ASN1ObjectIdentifier(NamingAuthority.a + ".12");
        m = new ASN1ObjectIdentifier(NamingAuthority.a + ".13");
        n = new ASN1ObjectIdentifier(NamingAuthority.a + ".14");
        o = new ASN1ObjectIdentifier(NamingAuthority.a + ".15");
        p = new ASN1ObjectIdentifier(NamingAuthority.a + ".16");
        q = new ASN1ObjectIdentifier(NamingAuthority.a + ".17");
        r = new ASN1ObjectIdentifier(NamingAuthority.a + ".18");
        s = new ASN1ObjectIdentifier(NamingAuthority.a + ".19");
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.t != null) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 0, this.t));
        }
        aSN1EncodableVector.a(this.u);
        if (this.v != null) {
            aSN1EncodableVector.a(this.v);
        }
        if (this.w != null) {
            aSN1EncodableVector.a(new DERPrintableString(this.w, true));
        }
        if (this.x != null) {
            aSN1EncodableVector.a(this.x);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
