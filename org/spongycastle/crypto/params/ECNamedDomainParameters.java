package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;

/* compiled from: Twttr */
public class ECNamedDomainParameters extends ECDomainParameters {
    private ASN1ObjectIdentifier a;

    public ECNamedDomainParameters(ASN1ObjectIdentifier aSN1ObjectIdentifier, ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        super(eCCurve, eCPoint, bigInteger, bigInteger2, bArr);
        this.a = aSN1ObjectIdentifier;
    }
}
