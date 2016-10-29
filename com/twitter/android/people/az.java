package com.twitter.android.people;

import com.twitter.config.d;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.ui.a;
import cto;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class az {
    private static final List<String> a;
    private static final List<String> b;
    private static final Map<String, String> c;

    static {
        c = (Map) r.d().b("prompt", "people_discovery_layout_prompt_enabled").b("address-book-prompt", "people_discovery_layout_address_book_prompt_enabled").b("address-book-contacts", "people_discovery_layout_address_book_contacts_enabled").b("user-bio-list", "people_discovery_layout_user_bio_list_enabled").b("user-profile-carousel", "people_discovery_layout_user_profile_carousel_enabled").b("featured-users-carousel", "people_discovery_layout_featured_users_carousel_enabled").b("user-tweet-carousel", "people_discovery_layout_user_tweet_carousel_enabled").q();
        a = n.a(c.keySet());
        b = n.a("user-profile-carousel", new String[]{"featured-users-carousel"});
    }

    public static boolean a(String str) {
        boolean contains;
        String str2 = (String) c.get(str);
        if (a.a()) {
            contains = b.contains(str);
        } else {
            contains = false;
        }
        if (contains || !d.a(str2, true)) {
            return false;
        }
        return true;
    }

    public static Collection<String> a() {
        return n.a(cto.a(a, new ba()));
    }
}
