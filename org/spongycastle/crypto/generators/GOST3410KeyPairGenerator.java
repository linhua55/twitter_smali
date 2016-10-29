package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.util.Random;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.GOST3410KeyGenerationParameters;
import org.spongycastle.crypto.params.GOST3410Parameters;
import org.spongycastle.crypto.params.GOST3410PrivateKeyParameters;
import org.spongycastle.crypto.params.GOST3410PublicKeyParameters;
import org.spongycastle.math.ec.WNafUtil;

/* compiled from: Twttr */
public class GOST3410KeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private GOST3410KeyGenerationParameters a;

    public void a(KeyGenerationParameters keyGenerationParameters) {
        this.a = (GOST3410KeyGenerationParameters) keyGenerationParameters;
    }

    public AsymmetricCipherKeyPair a() {
        GOST3410Parameters c = this.a.c();
        Random a = this.a.a();
        BigInteger b = c.b();
        BigInteger a2 = c.a();
        BigInteger c2 = c.c();
        while (true) {
            BigInteger bigInteger = new BigInteger(256, a);
            if (bigInteger.signum() >= 1 && bigInteger.compareTo(b) < 0 && WNafUtil.c(bigInteger) >= 64) {
                return new AsymmetricCipherKeyPair(new GOST3410PublicKeyParameters(c2.modPow(bigInteger, a2), c), new GOST3410PrivateKeyParameters(bigInteger, c));
            }
        }
    }
}
