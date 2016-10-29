package com.twitter.android.smartfollow;

import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.av;
import com.twitter.model.search.TwitterUserMetadata;
import com.twitter.util.collection.n;
import java.util.List;
import java.util.Set;
import rx.o;

/* compiled from: Twttr */
public class ac {
    public static boolean a(TwitterUserMetadata twitterUserMetadata) {
        if (twitterUserMetadata != null) {
            av avVar = twitterUserMetadata.b;
            if (avVar != null && avVar.d) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(TwitterUserMetadata twitterUserMetadata) {
        if (twitterUserMetadata != null) {
            av avVar = twitterUserMetadata.b;
            if (avVar != null && avVar.e) {
                return true;
            }
        }
        return false;
    }

    public static List<TwitterScribeItem> a(List<TwitterUser> list) {
        n d = n.d();
        for (int i = 0; i < list.size(); i++) {
            d.c(a((TwitterUser) list.get(i), i));
        }
        return (List) d.q();
    }

    public static List<TwitterScribeItem> a(List<TwitterUser> list, Set<Long> set) {
        return (List) o.a(list).d(new ae(set)).g(new ad(list)).p().o().a();
    }

    public static TwitterScribeItem a(TwitterUser twitterUser, int i) {
        TwitterScribeItem a = TwitterScribeItem.a(twitterUser);
        a.k = twitterUser.h();
        a.g = i;
        return a;
    }
}
