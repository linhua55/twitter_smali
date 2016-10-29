package com.twitter.android.widget;

import android.os.Bundle;
import com.twitter.app.common.base.d;

/* compiled from: Twttr */
public class ea extends d {
    protected ea(Bundle bundle) {
        super(bundle);
    }

    public static ea b(Bundle bundle) {
        return new ea(bundle);
    }

    public boolean b() {
        return this.b.containsKey("icon");
    }

    public boolean c() {
        return this.b.containsKey("title");
    }

    public boolean d() {
        return this.b.containsKey("message");
    }

    public boolean e() {
        return this.b.containsKey("positive_button");
    }

    public boolean f() {
        return this.b.containsKey("neutral_button");
    }

    public boolean g() {
        return this.b.containsKey("negative_button");
    }

    public boolean h() {
        return this.b.containsKey("cancelable");
    }

    public boolean i() {
        return this.b.containsKey("item_resource_ids");
    }

    public boolean j() {
        return this.b.containsKey("items_resource");
    }

    public boolean k() {
        return this.b.containsKey("single_choice_items");
    }

    public boolean l() {
        return this.b.containsKey("view_id");
    }

    public boolean m() {
        return this.b.containsKey("items");
    }

    public boolean n() {
        return this.b.containsKey("title_string");
    }

    public boolean o() {
        return this.b.containsKey("message_string");
    }

    public int p() {
        return this.b.getInt("icon");
    }

    public int q() {
        return this.b.getInt("title");
    }

    public int r() {
        return this.b.getInt("message");
    }

    public int s() {
        return this.b.getInt("positive_button");
    }

    public int t() {
        return this.b.getInt("negative_button");
    }

    public int u() {
        return this.b.getInt("neutral_button");
    }

    public boolean v() {
        return this.b.getBoolean("cancelable");
    }

    public int[] w() {
        return this.b.getIntArray("item_resource_ids");
    }

    public int x() {
        return this.b.getInt("items_resource");
    }

    public int y() {
        return this.b.getInt("single_choice_items");
    }

    public int a(int i) {
        return this.b.getInt("single_choice_checked", i);
    }

    public int z() {
        return this.b.getInt("view_id");
    }

    public CharSequence[] A() {
        return this.b.getCharSequenceArray("items");
    }

    public String B() {
        return this.b.getString("title_string");
    }

    public String C() {
        return this.b.getString("message_string");
    }

    public int D() {
        return this.b.getInt("requested_permissions");
    }
}
