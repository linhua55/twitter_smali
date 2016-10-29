package org.spongycastle.crypto.tls;

import java.security.SecureRandom;
import org.spongycastle.crypto.prng.RandomGenerator;
import org.spongycastle.util.Times;

/* compiled from: Twttr */
abstract class AbstractTlsContext implements TlsContext {
    private static long a;
    private RandomGenerator b;
    private SecureRandom c;
    private SecurityParameters d;
    private ProtocolVersion e;
    private ProtocolVersion f;

    static {
        a = Times.a();
    }

    public RandomGenerator a() {
        return this.b;
    }

    public SecureRandom b() {
        return this.c;
    }

    public SecurityParameters c() {
        return this.d;
    }

    public ProtocolVersion d() {
        return this.e;
    }

    void a(ProtocolVersion protocolVersion) {
        this.e = protocolVersion;
    }

    public ProtocolVersion e() {
        return this.f;
    }

    void b(ProtocolVersion protocolVersion) {
        this.f = protocolVersion;
    }
}
