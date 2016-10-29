package com.twitter.app.users;

import android.content.Context;
import android.content.Intent;
import com.twitter.app.common.base.u;
import com.twitter.library.util.FriendshipCache;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;

/* compiled from: Twttr */
public class q extends u<q> {
    public q(Intent intent) {
        super(intent);
    }

    public q a(long j) {
        this.b.putExtra("owner_id", j);
        return this;
    }

    public long a() {
        return this.b.getLongExtra("owner_id", -1);
    }

    public q a(int i) {
        this.b.putExtra("type", i);
        return this;
    }

    public int b() {
        return this.b.getIntExtra("type", -1);
    }

    public q b(long j) {
        this.b.putExtra("tag", j);
        return this;
    }

    public q a(String str) {
        this.b.putExtra("category", str);
        return this;
    }

    public String c() {
        return this.b.getStringExtra("category");
    }

    public q b(String str) {
        this.b.putExtra("category_name", str);
        return this;
    }

    public String d() {
        return this.b.getStringExtra("category_name");
    }

    public q a(long[] jArr) {
        this.b.putExtra("user_ids", jArr);
        return this;
    }

    public long[] e() {
        return this.b.getLongArrayExtra("user_ids");
    }

    public q a(FriendshipCache friendshipCache) {
        this.b.putExtra("friendship_cache", friendshipCache);
        return this;
    }

    public q c(String str) {
        this.b.putExtra(UsernameError.USERNAME_ERROR_FIELD, str);
        return this;
    }

    public q a(boolean z) {
        this.b.putExtra("follow", z);
        return this;
    }

    public q b(boolean z) {
        this.b.putExtra("hide_bio", z);
        return this;
    }

    public q d(String str) {
        this.b.putExtra("owner_name", str);
        return this;
    }

    public q b(int i) {
        this.b.putExtra("category_position", i);
        return this;
    }

    public q c(boolean z) {
        this.b.putExtra("fetch_always", z);
        return this;
    }

    public q e(String str) {
        this.b.putExtra("follow_request_sender", str);
        return this;
    }

    public String f() {
        return this.b.getStringExtra("follow_request_sender");
    }

    public q f(String str) {
        this.b.putExtra("scribe_page", str);
        return this;
    }

    public q e(boolean z) {
        this.b.putExtra("show_category_name", z);
        return this;
    }

    public q c(long j) {
        this.b.putExtra("target_session_owner_id", j);
        return this;
    }

    public Intent a(Context context) {
        return a(context, UsersActivity.class);
    }

    public static q a(Intent intent) {
        return new q(intent);
    }
}
