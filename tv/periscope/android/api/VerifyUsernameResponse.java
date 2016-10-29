package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class VerifyUsernameResponse extends PsResponse {
    @op(a = "errors")
    public PsUsernameError[] errors;
    @op(a = "user")
    public PsUser user;
}
