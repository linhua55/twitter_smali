package com.twitter.app.users;

import android.os.Bundle;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.i;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.ObjectUtils;
import java.util.ArrayList;

/* compiled from: Twttr */
public abstract class z<U extends z<U>> extends i<U> {
    public /* synthetic */ h b() {
        return d();
    }

    public /* synthetic */ g c() {
        return d();
    }

    protected z() {
    }

    protected z(Bundle bundle) {
        super(bundle);
    }

    protected z(y yVar) {
        super((h) yVar);
    }

    public U d(boolean z) {
        this.a.putBoolean("follow", z);
        return (z) ObjectUtils.a((Object) this);
    }

    public U a(int i) {
        this.a.putInt("fast_follow", i);
        return (z) ObjectUtils.a((Object) this);
    }

    public U g(int i) {
        this.a.putInt("type", i);
        return (z) ObjectUtils.a((Object) this);
    }

    public U a(long j) {
        this.a.putLong("tag", j);
        return (z) ObjectUtils.a((Object) this);
    }

    public U e(boolean z) {
        this.a.putBoolean("follow_flow_people_button_intent", z);
        return (z) ObjectUtils.a((Object) this);
    }

    public U f(boolean z) {
        this.a.putBoolean("follow", z);
        return (z) ObjectUtils.a((Object) this);
    }

    public U j(boolean z) {
        this.a.putBoolean("hide_contacts_import_cta", z);
        return (z) ObjectUtils.a((Object) this);
    }

    public U a(FriendshipCache friendshipCache) {
        this.a.putSerializable("friendship_cache", friendshipCache);
        return (z) ObjectUtils.a((Object) this);
    }

    public U a(ArrayList<TwitterUser> arrayList) {
        this.a.putParcelableArrayList("explore_email_users", arrayList);
        return (z) ObjectUtils.a((Object) this);
    }

    public U h(int i) {
        this.a.putInt("limit", i);
        return (z) ObjectUtils.a((Object) this);
    }

    public U k(boolean z) {
        this.a.putBoolean("fetch_always", z);
        return (z) ObjectUtils.a((Object) this);
    }

    public U l(boolean z) {
        this.a.putBoolean("hide_bio", z);
        return (z) ObjectUtils.a((Object) this);
    }

    public U m(boolean z) {
        this.a.putBoolean("is_hidden", z);
        return (z) ObjectUtils.a((Object) this);
    }

    public U c(String str) {
        this.a.putString("follow_request_sender", str);
        return (z) ObjectUtils.a((Object) this);
    }

    public U d(String str) {
        this.a.putString("scribe_page", str);
        return (z) ObjectUtils.a((Object) this);
    }

    public U d(long j) {
        this.a.putLong("target_session_owner_id", j);
        return (z) ObjectUtils.a((Object) this);
    }

    public y d() {
        return new y(this.a);
    }
}
