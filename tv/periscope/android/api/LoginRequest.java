package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class LoginRequest extends PsRequest {
    @op(a = "facebook_token")
    public String facebookToken;
    @op(a = "vendor_id")
    public String vendorId;
}
