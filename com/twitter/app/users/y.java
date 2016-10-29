package com.twitter.app.users;

import android.os.Bundle;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.i;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.core.TwitterUser;
import java.util.ArrayList;

/* compiled from: Twttr */
public class y extends h {
    public /* synthetic */ i e() {
        return k();
    }

    public /* synthetic */ com.twitter.app.common.base.h f() {
        return k();
    }

    protected y(Bundle bundle) {
        super(bundle);
    }

    public static y b(Bundle bundle) {
        return new y(bundle);
    }

    public z k() {
        return new aa(this);
    }

    public boolean l() {
        return this.b.getBoolean("follow", false);
    }

    public int m() {
        return this.b.getInt("fast_follow");
    }

    public int n() {
        return this.b.getInt("type", -1);
    }

    public long o() {
        return this.b.getLong("tag", -1);
    }

    public long[] z() {
        return this.b.getLongArray("user_ids");
    }

    public boolean A() {
        return this.b.getBoolean("follow_flow_people_button_intent", false);
    }

    public boolean B() {
        return this.b.getBoolean("find_friends", false);
    }

    public boolean C() {
        return this.b.getBoolean("hide_contacts_import_cta", false);
    }

    public FriendshipCache D() {
        return (FriendshipCache) this.b.getSerializable("friendship_cache");
    }

    public String E() {
        return this.b.getString("category");
    }

    public ArrayList<TwitterUser> F() {
        return this.b.getParcelableArrayList("explore_email_users");
    }

    public int G() {
        return this.b.getInt("limit", -1);
    }

    public String H() {
        return this.b.getString("owner_name");
    }

    public int I() {
        return this.b.getInt("category_position", 0);
    }

    public boolean J() {
        return this.b.getBoolean("fetch_always", false);
    }

    public boolean K() {
        return this.b.getBoolean("hide_bio", false);
    }

    public boolean L() {
        return this.b.getBoolean("is_hidden", false);
    }

    public String M() {
        return this.b.getString("follow_request_sender");
    }

    public boolean N() {
        return this.b.getBoolean("disable_toast_error_messages", false);
    }

    public boolean O() {
        return this.b.getBoolean("show_category_name", false);
    }

    public String P() {
        return this.b.getString("scribe_page", null);
    }

    public long Q() {
        return this.b.getLong("target_session_owner_id", -1);
    }
}
