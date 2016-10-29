package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

/* compiled from: Twttr */
public class Time extends ASN1Object implements ASN1Choice {
    ASN1Primitive a;

    public ASN1Primitive d() {
        return this.a;
    }
}
