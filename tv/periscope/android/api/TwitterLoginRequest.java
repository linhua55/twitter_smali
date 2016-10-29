package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class TwitterLoginRequest extends PsRequest {
    @op(a = "install_id")
    public String installId;
    @op(a = "phone_number")
    public String phoneNumber;
    @op(a = "session_key")
    public String sessionKey;
    @op(a = "session_secret")
    public String sessionSecret;
    @op(a = "user_id")
    public String userId;
    @op(a = "user_name")
    public String userName;
}
