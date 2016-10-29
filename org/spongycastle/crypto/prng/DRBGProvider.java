package org.spongycastle.crypto.prng;

import org.spongycastle.crypto.prng.drbg.SP80090DRBG;

/* compiled from: Twttr */
interface DRBGProvider {
    SP80090DRBG a(EntropySource entropySource);
}
