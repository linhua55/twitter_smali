package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.RSAKeyGenerationParameters;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.spongycastle.math.ec.WNafUtil;

/* compiled from: Twttr */
public class RSAKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private static final BigInteger a;
    private RSAKeyGenerationParameters b;

    static {
        a = BigInteger.valueOf(1);
    }

    public void a(KeyGenerationParameters keyGenerationParameters) {
        this.b = (RSAKeyGenerationParameters) keyGenerationParameters;
    }

    public AsymmetricCipherKeyPair a() {
        BigInteger a;
        BigInteger multiply;
        BigInteger bigInteger;
        int b = this.b.b();
        int i = b >>> 1;
        int i2 = b - i;
        int i3 = b / 3;
        int i4 = b >>> 2;
        BigInteger c = this.b.c();
        BigInteger a2 = a(i2, c);
        while (true) {
            a = a(i, c);
            if (a.subtract(a2).abs().bitLength() >= i3) {
                multiply = a2.multiply(a);
                if (multiply.bitLength() == b) {
                    if (WNafUtil.c(multiply) >= i4) {
                        break;
                    }
                    a2 = a(i2, c);
                } else {
                    a2 = a2.max(a);
                }
            }
        }
        if (a2.compareTo(a) < 0) {
            bigInteger = a;
            a = a2;
        } else {
            bigInteger = a2;
        }
        a2 = bigInteger.subtract(a);
        BigInteger subtract = a.subtract(a);
        BigInteger modInverse = c.modInverse(a2.multiply(subtract));
        return new AsymmetricCipherKeyPair(new RSAKeyParameters(false, multiply, c), new RSAPrivateCrtKeyParameters(multiply, c, modInverse, bigInteger, a, modInverse.remainder(a2), modInverse.remainder(subtract), a.modInverse(bigInteger)));
    }

    protected BigInteger a(int i, BigInteger bigInteger) {
        while (true) {
            BigInteger bigInteger2 = new BigInteger(i, 1, this.b.a());
            if (!bigInteger2.mod(bigInteger).equals(a) && bigInteger2.isProbablePrime(this.b.d()) && bigInteger.gcd(bigInteger2.subtract(a)).equals(a)) {
                return bigInteger2;
            }
        }
    }
}
