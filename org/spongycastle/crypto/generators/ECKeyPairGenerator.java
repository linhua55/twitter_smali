package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECMultiplier;
import org.spongycastle.math.ec.FixedPointCombMultiplier;
import org.spongycastle.math.ec.WNafUtil;

/* compiled from: Twttr */
public class ECKeyPairGenerator implements AsymmetricCipherKeyPairGenerator, ECConstants {
    ECDomainParameters a;
    SecureRandom b;

    public void a(KeyGenerationParameters keyGenerationParameters) {
        ECKeyGenerationParameters eCKeyGenerationParameters = (ECKeyGenerationParameters) keyGenerationParameters;
        this.b = eCKeyGenerationParameters.a();
        this.a = eCKeyGenerationParameters.c();
        if (this.b == null) {
            this.b = new SecureRandom();
        }
    }

    public AsymmetricCipherKeyPair a() {
        BigInteger c = this.a.c();
        int bitLength = c.bitLength();
        int i = bitLength >>> 2;
        while (true) {
            BigInteger bigInteger = new BigInteger(bitLength, this.b);
            if (bigInteger.compareTo(e) >= 0 && bigInteger.compareTo(c) < 0 && WNafUtil.c(bigInteger) >= i) {
                return new AsymmetricCipherKeyPair(new ECPublicKeyParameters(b().a(this.a.b(), bigInteger), this.a), new ECPrivateKeyParameters(bigInteger, this.a));
            }
        }
    }

    protected ECMultiplier b() {
        return new FixedPointCombMultiplier();
    }
}
