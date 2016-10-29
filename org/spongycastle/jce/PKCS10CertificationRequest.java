package org.spongycastle.jce;

import java.io.IOException;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.CertificationRequest;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.RSASSAPSSparams;
import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;

/* compiled from: Twttr */
public class PKCS10CertificationRequest extends CertificationRequest {
    private static Hashtable d;
    private static Hashtable e;
    private static Hashtable f;
    private static Hashtable g;
    private static Set h;

    static {
        d = new Hashtable();
        e = new Hashtable();
        f = new Hashtable();
        g = new Hashtable();
        h = new HashSet();
        d.put("MD2WITHRSAENCRYPTION", new ASN1ObjectIdentifier("1.2.840.113549.1.1.2"));
        d.put("MD2WITHRSA", new ASN1ObjectIdentifier("1.2.840.113549.1.1.2"));
        d.put("MD5WITHRSAENCRYPTION", new ASN1ObjectIdentifier("1.2.840.113549.1.1.4"));
        d.put("MD5WITHRSA", new ASN1ObjectIdentifier("1.2.840.113549.1.1.4"));
        d.put("RSAWITHMD5", new ASN1ObjectIdentifier("1.2.840.113549.1.1.4"));
        d.put("SHA1WITHRSAENCRYPTION", new ASN1ObjectIdentifier("1.2.840.113549.1.1.5"));
        d.put("SHA1WITHRSA", new ASN1ObjectIdentifier("1.2.840.113549.1.1.5"));
        d.put("SHA224WITHRSAENCRYPTION", PKCSObjectIdentifiers.v_);
        d.put("SHA224WITHRSA", PKCSObjectIdentifiers.v_);
        d.put("SHA256WITHRSAENCRYPTION", PKCSObjectIdentifiers.s_);
        d.put("SHA256WITHRSA", PKCSObjectIdentifiers.s_);
        d.put("SHA384WITHRSAENCRYPTION", PKCSObjectIdentifiers.t_);
        d.put("SHA384WITHRSA", PKCSObjectIdentifiers.t_);
        d.put("SHA512WITHRSAENCRYPTION", PKCSObjectIdentifiers.u_);
        d.put("SHA512WITHRSA", PKCSObjectIdentifiers.u_);
        d.put("SHA1WITHRSAANDMGF1", PKCSObjectIdentifiers.k);
        d.put("SHA224WITHRSAANDMGF1", PKCSObjectIdentifiers.k);
        d.put("SHA256WITHRSAANDMGF1", PKCSObjectIdentifiers.k);
        d.put("SHA384WITHRSAANDMGF1", PKCSObjectIdentifiers.k);
        d.put("SHA512WITHRSAANDMGF1", PKCSObjectIdentifiers.k);
        d.put("RSAWITHSHA1", new ASN1ObjectIdentifier("1.2.840.113549.1.1.5"));
        d.put("RIPEMD128WITHRSAENCRYPTION", TeleTrusTObjectIdentifiers.g);
        d.put("RIPEMD128WITHRSA", TeleTrusTObjectIdentifiers.g);
        d.put("RIPEMD160WITHRSAENCRYPTION", TeleTrusTObjectIdentifiers.f);
        d.put("RIPEMD160WITHRSA", TeleTrusTObjectIdentifiers.f);
        d.put("RIPEMD256WITHRSAENCRYPTION", TeleTrusTObjectIdentifiers.h);
        d.put("RIPEMD256WITHRSA", TeleTrusTObjectIdentifiers.h);
        d.put("SHA1WITHDSA", new ASN1ObjectIdentifier("1.2.840.10040.4.3"));
        d.put("DSAWITHSHA1", new ASN1ObjectIdentifier("1.2.840.10040.4.3"));
        d.put("SHA224WITHDSA", NISTObjectIdentifiers.F);
        d.put("SHA256WITHDSA", NISTObjectIdentifiers.G);
        d.put("SHA384WITHDSA", NISTObjectIdentifiers.H);
        d.put("SHA512WITHDSA", NISTObjectIdentifiers.I);
        d.put("SHA1WITHECDSA", X9ObjectIdentifiers.i);
        d.put("SHA224WITHECDSA", X9ObjectIdentifiers.m);
        d.put("SHA256WITHECDSA", X9ObjectIdentifiers.n);
        d.put("SHA384WITHECDSA", X9ObjectIdentifiers.o);
        d.put("SHA512WITHECDSA", X9ObjectIdentifiers.p);
        d.put("ECDSAWITHSHA1", X9ObjectIdentifiers.i);
        d.put("GOST3411WITHGOST3410", CryptoProObjectIdentifiers.k);
        d.put("GOST3410WITHGOST3411", CryptoProObjectIdentifiers.k);
        d.put("GOST3411WITHECGOST3410", CryptoProObjectIdentifiers.l);
        d.put("GOST3411WITHECGOST3410-2001", CryptoProObjectIdentifiers.l);
        d.put("GOST3411WITHGOST3410-2001", CryptoProObjectIdentifiers.l);
        g.put(new ASN1ObjectIdentifier("1.2.840.113549.1.1.5"), "SHA1WITHRSA");
        g.put(PKCSObjectIdentifiers.v_, "SHA224WITHRSA");
        g.put(PKCSObjectIdentifiers.s_, "SHA256WITHRSA");
        g.put(PKCSObjectIdentifiers.t_, "SHA384WITHRSA");
        g.put(PKCSObjectIdentifiers.u_, "SHA512WITHRSA");
        g.put(CryptoProObjectIdentifiers.k, "GOST3411WITHGOST3410");
        g.put(CryptoProObjectIdentifiers.l, "GOST3411WITHECGOST3410");
        g.put(new ASN1ObjectIdentifier("1.2.840.113549.1.1.4"), "MD5WITHRSA");
        g.put(new ASN1ObjectIdentifier("1.2.840.113549.1.1.2"), "MD2WITHRSA");
        g.put(new ASN1ObjectIdentifier("1.2.840.10040.4.3"), "SHA1WITHDSA");
        g.put(X9ObjectIdentifiers.i, "SHA1WITHECDSA");
        g.put(X9ObjectIdentifiers.m, "SHA224WITHECDSA");
        g.put(X9ObjectIdentifiers.n, "SHA256WITHECDSA");
        g.put(X9ObjectIdentifiers.o, "SHA384WITHECDSA");
        g.put(X9ObjectIdentifiers.p, "SHA512WITHECDSA");
        g.put(OIWObjectIdentifiers.k, "SHA1WITHRSA");
        g.put(OIWObjectIdentifiers.j, "SHA1WITHDSA");
        g.put(NISTObjectIdentifiers.F, "SHA224WITHDSA");
        g.put(NISTObjectIdentifiers.G, "SHA256WITHDSA");
        f.put(PKCSObjectIdentifiers.n_, "RSA");
        f.put(X9ObjectIdentifiers.U, "DSA");
        h.add(X9ObjectIdentifiers.i);
        h.add(X9ObjectIdentifiers.m);
        h.add(X9ObjectIdentifiers.n);
        h.add(X9ObjectIdentifiers.o);
        h.add(X9ObjectIdentifiers.p);
        h.add(X9ObjectIdentifiers.V);
        h.add(NISTObjectIdentifiers.F);
        h.add(NISTObjectIdentifiers.G);
        h.add(CryptoProObjectIdentifiers.k);
        h.add(CryptoProObjectIdentifiers.l);
        e.put("SHA1WITHRSAANDMGF1", a(new AlgorithmIdentifier(OIWObjectIdentifiers.i, DERNull.a), 20));
        e.put("SHA224WITHRSAANDMGF1", a(new AlgorithmIdentifier(NISTObjectIdentifiers.f, DERNull.a), 28));
        e.put("SHA256WITHRSAANDMGF1", a(new AlgorithmIdentifier(NISTObjectIdentifiers.c, DERNull.a), 32));
        e.put("SHA384WITHRSAANDMGF1", a(new AlgorithmIdentifier(NISTObjectIdentifiers.d, DERNull.a), 48));
        e.put("SHA512WITHRSAANDMGF1", a(new AlgorithmIdentifier(NISTObjectIdentifiers.e, DERNull.a), 64));
    }

    private static RSASSAPSSparams a(AlgorithmIdentifier algorithmIdentifier, int i) {
        return new RSASSAPSSparams(algorithmIdentifier, new AlgorithmIdentifier(PKCSObjectIdentifiers.r_, algorithmIdentifier), new ASN1Integer((long) i), new ASN1Integer(1));
    }

    public byte[] f() {
        try {
            return a("DER");
        } catch (IOException e) {
            throw new RuntimeException(e.toString());
        }
    }
}
