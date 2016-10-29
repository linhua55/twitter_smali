package org.spongycastle.crypto.params;

import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public final class KDFCounterParameters implements DerivationParameters {
    private byte[] a;
    private byte[] b;
    private byte[] c;
    private int d;

    public byte[] a() {
        return this.a;
    }

    public byte[] b() {
        return Arrays.b(this.b);
    }

    public byte[] c() {
        return Arrays.b(this.c);
    }

    public int d() {
        return this.d;
    }
}
