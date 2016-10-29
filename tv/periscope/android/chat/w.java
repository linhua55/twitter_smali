package tv.periscope.android.chat;

import defpackage.dcf;
import java.math.BigInteger;
import tv.periscope.model.chat.Message;
import tv.periscope.model.chat.MessageType;

/* compiled from: Twttr */
public class w {
    public final MessageType a;
    public final Message b;
    public final long c;
    private long d;

    public w(Message message, long j) {
        this.c = j;
        this.b = message;
        this.a = this.b.b();
    }

    public long a() {
        BigInteger u = this.b.u();
        if (u == null || BigInteger.ZERO.compareTo(u) > -1) {
            return dcf.a(this.b.e());
        }
        return dcf.a(u);
    }

    public long b() {
        return this.d;
    }

    public void a(long j) {
        this.d = j;
    }
}
