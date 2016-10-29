package tv.periscope.android.api;

import defpackage.op;
import tv.periscope.android.session.Session.Type;

/* compiled from: Twttr */
public class TwitterLoginResponse extends PsResponse {
    @op(a = "cookie")
    public String cookie;
    public transient Type sessionType;
    @op(a = "settings")
    public PsSettings settings;
    @op(a = "suggested_username")
    public String suggestedUsername;
    @op(a = "user")
    public PsUser user;
}
