package com.twitter.app.lists;

import android.content.Context;
import android.content.Intent;
import com.twitter.app.common.base.u;

/* compiled from: Twttr */
public class c extends u<c> {
    private c() {
    }

    private c(Intent intent) {
        super(intent);
    }

    public static c a(Intent intent) {
        return new c(intent);
    }

    public static c a() {
        return new c();
    }

    public static c a(long j) {
        return new c(new Intent().putExtra("is_pick_list", true).putExtra("type", 0).putExtra("list_choice_mode", 1).putExtra("inquire_user_id", j));
    }

    public c b(long j) {
        this.b.putExtra("owner_id", j);
        return this;
    }

    public long b() {
        return this.b.getLongExtra("owner_id", -1);
    }

    public long c() {
        return this.b.getLongExtra("inquire_user_id", -1);
    }

    public c a(String str) {
        this.b.putExtra("screen_name", str);
        return this;
    }

    public String d() {
        return this.b.getStringExtra("screen_name");
    }

    public c a(boolean z) {
        this.b.putExtra("force_restart", z);
        return this;
    }

    public boolean e() {
        return this.b.getBooleanExtra("force_restart", false);
    }

    public boolean f() {
        return this.b.getBooleanExtra("is_pick_list", false);
    }

    public int g() {
        return this.b.getIntExtra("type", -1);
    }

    public Intent a(Context context) {
        return a(context, ListsActivity.class);
    }
}
