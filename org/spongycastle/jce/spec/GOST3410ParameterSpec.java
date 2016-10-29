package org.spongycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.GOST3410NamedParameters;
import org.spongycastle.asn1.cryptopro.GOST3410ParamSetParameters;
import org.spongycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.spongycastle.jce.interfaces.GOST3410Params;

/* compiled from: Twttr */
public class GOST3410ParameterSpec implements AlgorithmParameterSpec, GOST3410Params {
    private GOST3410PublicKeyParameterSetSpec a;
    private String b;
    private String c;
    private String d;

    public GOST3410ParameterSpec(String str, String str2, String str3) {
        GOST3410ParamSetParameters gOST3410ParamSetParameters = null;
        try {
            gOST3410ParamSetParameters = GOST3410NamedParameters.a(new ASN1ObjectIdentifier(str));
        } catch (IllegalArgumentException e) {
            ASN1ObjectIdentifier a = GOST3410NamedParameters.a(str);
            if (a != null) {
                str = a.a();
                gOST3410ParamSetParameters = GOST3410NamedParameters.a(a);
            }
        }
        if (gOST3410ParamSetParameters == null) {
            throw new IllegalArgumentException("no key parameter set for passed in name/OID.");
        }
        this.a = new GOST3410PublicKeyParameterSetSpec(gOST3410ParamSetParameters.a(), gOST3410ParamSetParameters.b(), gOST3410ParamSetParameters.c());
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public GOST3410ParameterSpec(String str, String str2) {
        this(str, str2, null);
    }

    public GOST3410ParameterSpec(String str) {
        this(str, CryptoProObjectIdentifiers.m.a(), null);
    }

    public GOST3410ParameterSpec(GOST3410PublicKeyParameterSetSpec gOST3410PublicKeyParameterSetSpec) {
        this.a = gOST3410PublicKeyParameterSetSpec;
        this.c = CryptoProObjectIdentifiers.m.a();
        this.d = null;
    }

    public String a() {
        return this.b;
    }

    public GOST3410PublicKeyParameterSetSpec d() {
        return this.a;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410ParameterSpec)) {
            return false;
        }
        GOST3410ParameterSpec gOST3410ParameterSpec = (GOST3410ParameterSpec) obj;
        if (!this.a.equals(gOST3410ParameterSpec.a) || !this.c.equals(gOST3410ParameterSpec.c)) {
            return false;
        }
        if (this.d == gOST3410ParameterSpec.d || (this.d != null && this.d.equals(gOST3410ParameterSpec.d))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.d != null ? this.d.hashCode() : 0) ^ (this.c.hashCode() ^ this.a.hashCode());
    }

    public static GOST3410ParameterSpec a(GOST3410PublicKeyAlgParameters gOST3410PublicKeyAlgParameters) {
        if (gOST3410PublicKeyAlgParameters.c() != null) {
            return new GOST3410ParameterSpec(gOST3410PublicKeyAlgParameters.a().a(), gOST3410PublicKeyAlgParameters.b().a(), gOST3410PublicKeyAlgParameters.c().a());
        }
        return new GOST3410ParameterSpec(gOST3410PublicKeyAlgParameters.a().a(), gOST3410PublicKeyAlgParameters.b().a());
    }
}
