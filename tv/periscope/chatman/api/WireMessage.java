package tv.periscope.chatman.api;

import dde;
import defpackage.op;

/* compiled from: Twttr */
public class WireMessage {
    public static final int WIRE_AUTH = 3;
    public static final int WIRE_CHAT = 1;
    public static final int WIRE_CONTROL = 2;
    @op(a = "kind")
    public final int kind;
    @op(a = "payload")
    public final String payload;
    @op(a = "signature")
    public final String signature;

    private WireMessage(int i, String str) {
        this.kind = i;
        this.payload = str;
        this.signature = null;
    }

    public static WireMessage create(Kind kind) {
        return new WireMessage(kind.kind(), dde.a.a(kind));
    }
}
