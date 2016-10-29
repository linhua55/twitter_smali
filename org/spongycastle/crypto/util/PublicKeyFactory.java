package org.spongycastle.crypto.util;

import java.io.IOException;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.oiw.ElGamalParameter;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.DHParameter;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.RSAPublicKey;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.DSAParameter;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.asn1.x9.DHDomainParameters;
import org.spongycastle.asn1.x9.DHPublicKey;
import org.spongycastle.asn1.x9.DHValidationParms;
import org.spongycastle.asn1.x9.ECNamedCurveTable;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECPoint;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.ec.CustomNamedCurves;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.crypto.params.DHValidationParameters;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECNamedDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.ElGamalParameters;
import org.spongycastle.crypto.params.ElGamalPublicKeyParameters;
import org.spongycastle.crypto.params.RSAKeyParameters;

/* compiled from: Twttr */
public class PublicKeyFactory {
    public static AsymmetricKeyParameter a(SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException {
        int i = 0;
        DSAParameters dSAParameters = null;
        AlgorithmIdentifier a = subjectPublicKeyInfo.a();
        if (a.b().equals(PKCSObjectIdentifiers.n_) || a.b().equals(X509ObjectIdentifiers.l)) {
            RSAPublicKey a2 = RSAPublicKey.a(subjectPublicKeyInfo.c());
            return new RSAKeyParameters(false, a2.a(), a2.b());
        } else if (a.b().equals(X9ObjectIdentifiers.ab)) {
            BigInteger a3;
            DHValidationParameters dHValidationParameters;
            BigInteger a4 = DHPublicKey.a(subjectPublicKeyInfo.c()).a().a();
            DHDomainParameters a5 = DHDomainParameters.a(a.c());
            BigInteger a6 = a5.a().a();
            BigInteger a7 = a5.b().a();
            r3 = a5.c().a();
            if (a5.e() != null) {
                a3 = a5.e().a();
            } else {
                a3 = null;
            }
            DHValidationParms h = a5.h();
            if (h != null) {
                dHValidationParameters = new DHValidationParameters(h.a().e(), h.b().a().intValue());
            }
            return new DHPublicKeyParameters(a4, new DHParameters(a6, a7, r3, a3, dHValidationParameters));
        } else if (a.b().equals(PKCSObjectIdentifiers.q)) {
            DHParameter a8 = DHParameter.a(a.c());
            r0 = (ASN1Integer) subjectPublicKeyInfo.c();
            r3 = a8.c();
            if (r3 != null) {
                i = r3.intValue();
            }
            return new DHPublicKeyParameters(r0.a(), new DHParameters(a8.a(), a8.b(), null, i));
        } else if (a.b().equals(OIWObjectIdentifiers.l)) {
            ElGamalParameter a9 = ElGamalParameter.a(a.c());
            return new ElGamalPublicKeyParameters(((ASN1Integer) subjectPublicKeyInfo.c()).a(), new ElGamalParameters(a9.a(), a9.b()));
        } else if (a.b().equals(X9ObjectIdentifiers.U) || a.b().equals(OIWObjectIdentifiers.j)) {
            r0 = (ASN1Integer) subjectPublicKeyInfo.c();
            ASN1Encodable c = a.c();
            if (c != null) {
                DSAParameter a10 = DSAParameter.a(c.d());
                dSAParameters = new DSAParameters(a10.a(), a10.b(), a10.c());
            }
            return new DSAPublicKeyParameters(r0.a(), dSAParameters);
        } else if (a.b().equals(X9ObjectIdentifiers.k)) {
            X9ECParameters a11;
            ECDomainParameters eCNamedDomainParameters;
            X962Parameters a12 = X962Parameters.a(a.c());
            if (a12.a()) {
                ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) a12.c();
                X9ECParameters a13 = CustomNamedCurves.a(aSN1ObjectIdentifier);
                if (a13 == null) {
                    a11 = ECNamedCurveTable.a(aSN1ObjectIdentifier);
                } else {
                    a11 = a13;
                }
                eCNamedDomainParameters = new ECNamedDomainParameters(aSN1ObjectIdentifier, a11.a(), a11.b(), a11.c(), a11.e(), a11.h());
            } else {
                a11 = X9ECParameters.a(a12.c());
                eCNamedDomainParameters = new ECDomainParameters(a11.a(), a11.b(), a11.c(), a11.e(), a11.h());
            }
            return new ECPublicKeyParameters(new X9ECPoint(a11.a(), new DEROctetString(subjectPublicKeyInfo.e().e())).a(), eCNamedDomainParameters);
        } else {
            throw new RuntimeException("algorithm identifier in key not recognised");
        }
    }
}
