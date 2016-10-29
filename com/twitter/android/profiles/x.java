package com.twitter.android.profiles;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import com.twitter.android.ProfileActivity;
import com.twitter.android.ProfileFavoriteTimelinesFragment;
import com.twitter.android.ProfileMediaListFragment;
import com.twitter.android.ProfileTimelinesFragment;
import com.twitter.android.businessprofiles.BusinessProfileTimelineFragment;
import com.twitter.app.common.list.j;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.t;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class x implements v {
    protected final Context a;
    protected final Bundle b;
    protected final TwitterUser c;
    protected final boolean d;
    protected final boolean e;

    public x(Context context, Bundle bundle, TwitterUser twitterUser, boolean z, boolean z2) {
        this.a = context;
        this.b = bundle;
        this.c = twitterUser;
        this.d = z;
        this.e = z2;
    }

    public List<at> a() {
        List<at> arrayList = new ArrayList(3);
        if (this.e) {
            arrayList.add(a(0));
            arrayList.add(b(1));
            arrayList.add(c(2));
        } else {
            arrayList.add(b(0));
            arrayList.add(c(1));
            arrayList.add(d(2));
        }
        return arrayList;
    }

    protected at a(int i) {
        return new au(ProfileActivity.a, BusinessProfileTimelineFragment.class).a(this.a.getString(2131363408)).a(((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) new j(this.b).h(true)).a("is_me", this.d)).a("fragment_page_number", i)).b(2131363168)).a("type", 1)).a("profile_user", this.c)).b("scribe_page", "profile")).b("scribe_section", "featured")).a("owner_id", this.c.bf_())).a("statuses_count", this.c.w)).b()).a();
    }

    protected at b(int i) {
        return new au(ProfileActivity.b, ProfileTimelinesFragment.class).a(this.a.getString(2131363415)).a(((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) new j(this.b).b(2131363168)).h(true)).a("statuses_count", this.c.w)).a("owner_id", this.c.bf_())).a("type", 1)).a("profile_user", this.c)).a("is_me", this.d)).b("scribe_section", "tweets")).a("fragment_page_number", i)).b()).a();
    }

    protected at c(int i) {
        return new au(ProfileActivity.c, ProfileMediaListFragment.class).a(this.a.getString(2131363413)).a(((j) ((j) ((j) ((j) ((j) ((j) ((j) new j(this.b).b(2131363165)).h(true)).a("user_id", this.c.bf_())).a("owner_id", this.c.bf_())).a("profile_user", this.c)).a("is_me", this.d)).a("fragment_page_number", i)).b()).a();
    }

    protected at d(int i) {
        return new au(ProfileActivity.d, ProfileFavoriteTimelinesFragment.class).a(this.a.getString(2131363409)).a(((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) new j(this.b).b(2131363159)).h(true)).a("owner_id", this.c.bf_())).a("type", 2)).a("profile_user", this.c)).a("is_me", this.d)).b("scribe_section", "favorites")).a("fragment_page_number", i)).b()).a();
    }

    public String a(at atVar, TwitterUser twitterUser, Resources resources) {
        if (atVar == null || twitterUser == null) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        int i;
        int i2;
        if (atVar.a.equals(ProfileActivity.b)) {
            i = 2131492886;
            i2 = twitterUser.w;
        } else if (atVar.a.equals(ProfileActivity.c)) {
            if (twitterUser.x == -1) {
                return resources.getString(2131363416);
            }
            i = 2131492885;
            i2 = twitterUser.x;
        } else if (!atVar.a.equals(ProfileActivity.d)) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        } else {
            i = 2131492884;
            i2 = twitterUser.A;
        }
        return resources.getQuantityString(i, i2, new Object[]{t.a(resources, (long) i2)});
    }
}
