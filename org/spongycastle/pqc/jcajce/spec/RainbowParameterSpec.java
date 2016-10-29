package org.spongycastle.pqc.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class RainbowParameterSpec implements AlgorithmParameterSpec {
    private static final int[] a;
    private int[] b;

    static {
        a = new int[]{6, 12, 17, 22, 33};
    }

    public RainbowParameterSpec() {
        this.b = a;
    }

    public int[] a() {
        return Arrays.b(this.b);
    }
}
