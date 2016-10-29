package org.spongycastle.crypto.tls;

import java.security.SecureRandom;
import org.spongycastle.crypto.prng.RandomGenerator;

/* compiled from: Twttr */
public interface TlsContext {
    RandomGenerator a();

    SecureRandom b();

    SecurityParameters c();

    ProtocolVersion d();

    ProtocolVersion e();

    boolean f();
}
