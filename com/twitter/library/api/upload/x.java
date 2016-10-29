package com.twitter.library.api.upload;

import android.content.Context;
import com.twitter.internal.network.b;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.model.core.TwitterUser;
import java.io.ByteArrayOutputStream;

/* compiled from: Twttr */
public class x extends p {
    public x(Context context, ab abVar, TwitterUser twitterUser) {
        super(context, x.class.getName(), abVar, twitterUser);
    }

    protected void a(aa aaVar) {
        if (this.b.b == null) {
            aaVar.a(413);
            return;
        }
        this.h = new n(this.p, N(), this.q, "update_profile_banner", "banner", new b(new ByteArrayOutputStream(1024), null));
        this.h.a(this.b.b, aaVar, MediaUsage.HEADER, this.g);
        if (aaVar.b()) {
            this.o.putParcelable("header_media", this.b.b);
            u();
        }
    }
}
