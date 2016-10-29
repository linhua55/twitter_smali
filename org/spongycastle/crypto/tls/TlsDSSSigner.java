package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.crypto.signers.DSASigner;
import org.spongycastle.crypto.signers.HMacDSAKCalculator;

/* compiled from: Twttr */
public class TlsDSSSigner extends TlsDSASigner {
    public boolean a(AsymmetricKeyParameter asymmetricKeyParameter) {
        return asymmetricKeyParameter instanceof DSAPublicKeyParameters;
    }

    protected DSA a(short s) {
        return new DSASigner(new HMacDSAKCalculator(TlsUtils.b(s)));
    }

    protected short a() {
        return (short) 2;
    }
}
