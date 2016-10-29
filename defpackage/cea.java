package defpackage;

import android.content.res.Resources;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
/* renamed from: cea */
public class cea {
    public final FriendshipCache a;
    public final Resources b;
    public TwitterUser c;

    public cea(FriendshipCache friendshipCache, Resources resources) {
        this.a = friendshipCache;
        this.b = resources;
    }

    public long a() {
        return this.c == null ? 0 : this.c.c;
    }
}
