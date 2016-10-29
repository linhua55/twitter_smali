package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
class UserBroadcastsRequest extends PsRequest {
    @op(a = "all")
    public boolean all;
    @op(a = "user_id")
    public String userId;
    @op(a = "username")
    public String username;

    UserBroadcastsRequest() {
    }
}
