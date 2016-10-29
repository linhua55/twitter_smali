package org.spongycastle.asn1.x9;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Null;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;

/* compiled from: Twttr */
public class X962Parameters extends ASN1Object implements ASN1Choice {
    private ASN1Primitive a;

    public static X962Parameters a(Object obj) {
        if (obj == null || (obj instanceof X962Parameters)) {
            return (X962Parameters) obj;
        }
        if (obj instanceof ASN1Primitive) {
            return new X962Parameters((ASN1Primitive) obj);
        }
        throw new IllegalArgumentException("unknown object in getInstance()");
    }

    public X962Parameters(X9ECParameters x9ECParameters) {
        this.a = null;
        this.a = x9ECParameters.d();
    }

    public X962Parameters(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.a = null;
        this.a = aSN1ObjectIdentifier;
    }

    public X962Parameters(ASN1Primitive aSN1Primitive) {
        this.a = null;
        this.a = aSN1Primitive;
    }

    public boolean a() {
        return this.a instanceof ASN1ObjectIdentifier;
    }

    public boolean b() {
        return this.a instanceof ASN1Null;
    }

    public ASN1Primitive c() {
        return this.a;
    }

    public ASN1Primitive d() {
        return this.a;
    }
}
