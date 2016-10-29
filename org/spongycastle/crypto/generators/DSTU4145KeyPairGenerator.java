package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;

/* compiled from: Twttr */
public class DSTU4145KeyPairGenerator extends ECKeyPairGenerator {
    public AsymmetricCipherKeyPair a() {
        AsymmetricCipherKeyPair a = super.a();
        ECPublicKeyParameters eCPublicKeyParameters = (ECPublicKeyParameters) a.a();
        return new AsymmetricCipherKeyPair(new ECPublicKeyParameters(eCPublicKeyParameters.c().u(), eCPublicKeyParameters.b()), (ECPrivateKeyParameters) a.b());
    }
}
