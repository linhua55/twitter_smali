package defpackage;

import java.math.BigInteger;
import org.apache.commons.net.ntp.TimeStamp;
import tv.periscope.android.video.rtmp.f;

/* compiled from: Twttr */
/* renamed from: dcf */
public final class dcf {
    public static long a() {
        return f.a().c() ? f.a().d() : 0;
    }

    public static long b() {
        return f.a().d();
    }

    public static long a(BigInteger bigInteger) {
        if (bigInteger == null) {
            return 0;
        }
        return TimeStamp.a(bigInteger.longValue());
    }
}
