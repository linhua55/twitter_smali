package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class ValidateUsernameRequest extends PsRequest {
    @op(a = "session_key")
    public String sessionKey;
    @op(a = "session_secret")
    public String sessionSecret;
    @op(a = "username")
    public String username;
}
