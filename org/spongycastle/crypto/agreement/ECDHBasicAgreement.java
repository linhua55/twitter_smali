package org.spongycastle.crypto.agreement;

import java.math.BigInteger;
import org.spongycastle.crypto.BasicAgreement;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.math.ec.ECPoint;

/* compiled from: Twttr */
public class ECDHBasicAgreement implements BasicAgreement {
    private ECPrivateKeyParameters a;

    public void a(CipherParameters cipherParameters) {
        this.a = (ECPrivateKeyParameters) cipherParameters;
    }

    public int a() {
        return (this.a.b().a().a() + 7) / 8;
    }

    public BigInteger b(CipherParameters cipherParameters) {
        ECPoint p = ((ECPublicKeyParameters) cipherParameters).c().a(this.a.c()).p();
        if (!p.q()) {
            return p.g().a();
        }
        throw new IllegalStateException("Infinity is not a valid agreement value for ECDH");
    }
}