package com.twitter.android.profiles;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import com.twitter.library.client.az;
import com.twitter.library.media.util.r;
import com.twitter.library.service.ab;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.media.EditableImage;
import com.twitter.util.m;

/* compiled from: Twttr */
public class l {
    private final Context a;

    public l(Context context) {
        this.a = context;
    }

    public void a(String str) {
        c(str).a().a("ht", m.b()).apply();
    }

    public void b(String str) {
        c(str).a().a("ht").apply();
    }

    public String a(TwitterUser twitterUser) {
        if (twitterUser == null || b(twitterUser)) {
            return null;
        }
        return Uri.fromFile(r.b(this.a, twitterUser.c)).toString();
    }

    private boolean b(TwitterUser twitterUser) {
        long j = c(twitterUser.k).getLong("ht", 0);
        if (j == 0) {
            return true;
        }
        boolean z = j + 600000 < m.b();
        if (z) {
            b(twitterUser.k);
            az.a(this.a).a(new p(this.a, new ab(twitterUser.c, twitterUser.k, null, true)));
        }
        return z;
    }

    public void a(Activity activity, TwitterUser twitterUser, o oVar) {
        if (b(twitterUser)) {
            oVar.a(null);
        } else {
            new m(activity, twitterUser.c, oVar).execute(new Void[0]);
        }
    }

    public void a(Activity activity, TwitterUser twitterUser, EditableImage editableImage, o oVar) {
        new n(activity, editableImage, twitterUser.c, oVar).execute(new Void[0]);
    }

    private com.twitter.library.client.l c(String str) {
        return new com.twitter.library.client.l(this.a, str, "profile");
    }
}
