package com.twitter.library.api.upload;

import android.content.Context;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class v extends p {
    public v(Context context, ab abVar, TwitterUser twitterUser) {
        super(context, v.class.getName(), abVar, twitterUser);
    }

    protected void a(aa aaVar) {
        if (this.b.a == null) {
            aaVar.a(413);
            return;
        }
        this.h = new n(this.p, N(), this.q, "update_profile_image", "image", t());
        this.h.a(this.b.a, aaVar, MediaUsage.AVATAR, this.g);
        if (c(aaVar)) {
            this.o.putParcelable("avatar_media", this.b.a);
            u();
        }
    }
}
