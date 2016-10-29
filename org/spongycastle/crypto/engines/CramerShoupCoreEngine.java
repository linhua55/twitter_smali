package org.spongycastle.crypto.engines;

import java.math.BigInteger;

/* compiled from: Twttr */
public class CramerShoupCoreEngine {
    private static final BigInteger a;
    private String b;

    /* compiled from: Twttr */
    public class CramerShoupCiphertextException extends Exception {
        private static final long serialVersionUID = -6360977166495345076L;
    }

    public CramerShoupCoreEngine() {
        this.b = null;
    }

    static {
        a = BigInteger.valueOf(1);
    }
}
