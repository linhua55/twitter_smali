package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.signers.ECDSASigner;
import org.spongycastle.crypto.signers.HMacDSAKCalculator;

/* compiled from: Twttr */
public class TlsECDSASigner extends TlsDSASigner {
    public boolean a(AsymmetricKeyParameter asymmetricKeyParameter) {
        return asymmetricKeyParameter instanceof ECPublicKeyParameters;
    }

    protected DSA a(short s) {
        return new ECDSASigner(new HMacDSAKCalculator(TlsUtils.b(s)));
    }

    protected short a() {
        return (short) 3;
    }
}
