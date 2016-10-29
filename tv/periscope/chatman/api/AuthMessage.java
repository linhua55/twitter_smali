package tv.periscope.chatman.api;

import defpackage.op;

/* compiled from: Twttr */
public class AuthMessage implements Kind {
    @op(a = "access_token")
    public final String accessToken;

    public AuthMessage(String str) {
        this.accessToken = str;
    }

    public int kind() {
        return 3;
    }
}
