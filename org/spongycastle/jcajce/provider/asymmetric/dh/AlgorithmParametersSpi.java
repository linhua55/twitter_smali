package org.spongycastle.jcajce.provider.asymmetric.dh;

import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.asn1.pkcs.DHParameter;

/* compiled from: Twttr */
public class AlgorithmParametersSpi extends java.security.AlgorithmParametersSpi {
    DHParameterSpec a;

    protected boolean a(String str) {
        return str == null || str.equals("ASN.1");
    }

    protected AlgorithmParameterSpec engineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
        if (cls != null) {
            return a(cls);
        }
        throw new NullPointerException("argument to getParameterSpec must not be null");
    }

    protected byte[] engineGetEncoded() {
        try {
            return new DHParameter(this.a.getP(), this.a.getG(), this.a.getL()).a("DER");
        } catch (IOException e) {
            throw new RuntimeException("Error encoding DHParameters");
        }
    }

    protected byte[] engineGetEncoded(String str) {
        if (a(str)) {
            return engineGetEncoded();
        }
        return null;
    }

    protected AlgorithmParameterSpec a(Class cls) throws InvalidParameterSpecException {
        if (cls == DHParameterSpec.class) {
            return this.a;
        }
        throw new InvalidParameterSpecException("unknown parameter spec passed to DH parameters object.");
    }

    protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        if (algorithmParameterSpec instanceof DHParameterSpec) {
            this.a = (DHParameterSpec) algorithmParameterSpec;
            return;
        }
        throw new InvalidParameterSpecException("DHParameterSpec required to initialise a Diffie-Hellman algorithm parameters object");
    }

    protected void engineInit(byte[] bArr) throws IOException {
        try {
            DHParameter a = DHParameter.a(bArr);
            if (a.c() != null) {
                this.a = new DHParameterSpec(a.a(), a.b(), a.c().intValue());
            } else {
                this.a = new DHParameterSpec(a.a(), a.b());
            }
        } catch (ClassCastException e) {
            throw new IOException("Not a valid DH Parameter encoding.");
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new IOException("Not a valid DH Parameter encoding.");
        }
    }

    protected void engineInit(byte[] bArr, String str) throws IOException {
        if (a(str)) {
            engineInit(bArr);
            return;
        }
        throw new IOException("Unknown parameter format " + str);
    }

    protected String engineToString() {
        return "Diffie-Hellman Parameters";
    }
}
