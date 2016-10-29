package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.spongycastle.util.Strings;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public final class ProtocolVersion {
    public static final ProtocolVersion a;
    public static final ProtocolVersion b;
    public static final ProtocolVersion c;
    public static final ProtocolVersion d;
    public static final ProtocolVersion e;
    public static final ProtocolVersion f;
    private int g;
    private String h;

    static {
        a = new ProtocolVersion(768, "SSL 3.0");
        b = new ProtocolVersion(769, "TLS 1.0");
        c = new ProtocolVersion(770, "TLS 1.1");
        d = new ProtocolVersion(771, "TLS 1.2");
        e = new ProtocolVersion(65279, "DTLS 1.0");
        f = new ProtocolVersion(65277, "DTLS 1.2");
    }

    private ProtocolVersion(int i, String str) {
        this.g = 65535 & i;
        this.h = str;
    }

    public int a() {
        return this.g >> 8;
    }

    public int b() {
        return this.g & 255;
    }

    public boolean c() {
        return a() == 254;
    }

    public boolean d() {
        return this == a;
    }

    public ProtocolVersion e() {
        if (!c()) {
            return this;
        }
        if (this == e) {
            return c;
        }
        return d;
    }

    public boolean a(ProtocolVersion protocolVersion) {
        boolean z = true;
        if (a() != protocolVersion.a()) {
            return false;
        }
        int b = protocolVersion.b() - b();
        if (c()) {
            if (b > 0) {
                z = false;
            }
        } else if (b < 0) {
            z = false;
        }
        return z;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof ProtocolVersion) && b((ProtocolVersion) obj));
    }

    public boolean b(ProtocolVersion protocolVersion) {
        return protocolVersion != null && this.g == protocolVersion.g;
    }

    public int hashCode() {
        return this.g;
    }

    public static ProtocolVersion a(int i, int i2) throws IOException {
        switch (i) {
            case p.View_paddingEnd /*3*/:
                switch (i2) {
                    case p.View_android_theme /*0*/:
                        return a;
                    case p.View_android_focusable /*1*/:
                        return b;
                    case p.View_paddingStart /*2*/:
                        return c;
                    case p.View_paddingEnd /*3*/:
                        return d;
                    default:
                        return a(i, i2, "TLS");
                }
            case 254:
                switch (i2) {
                    case 253:
                        return f;
                    case 254:
                        throw new TlsFatalAlert((short) 47);
                    case 255:
                        return e;
                    default:
                        return a(i, i2, "DTLS");
                }
            default:
                throw new TlsFatalAlert((short) 47);
        }
    }

    public String toString() {
        return this.h;
    }

    private static ProtocolVersion a(int i, int i2, String str) throws IOException {
        TlsUtils.a(i);
        TlsUtils.a(i2);
        int i3 = (i << 8) | i2;
        return new ProtocolVersion(i3, str + " 0x" + Strings.b(Integer.toHexString(65536 | i3).substring(1)));
    }
}
