package org.spongycastle.asn1.x509;

import java.text.ParseException;
import java.util.Date;
import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1UTCTime;

/* compiled from: Twttr */
public class Time extends ASN1Object implements ASN1Choice {
    ASN1Primitive a;

    public Time(ASN1Primitive aSN1Primitive) {
        if ((aSN1Primitive instanceof ASN1UTCTime) || (aSN1Primitive instanceof ASN1GeneralizedTime)) {
            this.a = aSN1Primitive;
            return;
        }
        throw new IllegalArgumentException("unknown object passed to Time");
    }

    public static Time a(Object obj) {
        if (obj == null || (obj instanceof Time)) {
            return (Time) obj;
        }
        if (obj instanceof ASN1UTCTime) {
            return new Time((ASN1UTCTime) obj);
        }
        if (obj instanceof ASN1GeneralizedTime) {
            return new Time((ASN1GeneralizedTime) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public String a() {
        if (this.a instanceof ASN1UTCTime) {
            return ((ASN1UTCTime) this.a).h();
        }
        return ((ASN1GeneralizedTime) this.a).a();
    }

    public Date b() {
        try {
            if (this.a instanceof ASN1UTCTime) {
                return ((ASN1UTCTime) this.a).a();
            }
            return ((ASN1GeneralizedTime) this.a).e();
        } catch (ParseException e) {
            throw new IllegalStateException("invalid date string: " + e.getMessage());
        }
    }

    public ASN1Primitive d() {
        return this.a;
    }

    public String toString() {
        return a();
    }
}
