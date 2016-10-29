package com.twitter.android.dialog;

import android.os.Bundle;
import com.twitter.app.common.base.d;

/* compiled from: Twttr */
public class l extends d {
    protected l(Bundle bundle) {
        super(bundle);
    }

    public static l b(Bundle bundle) {
        return new l(bundle);
    }

    public boolean b() {
        return this.b.containsKey("twitter:icon");
    }

    public boolean c() {
        return this.b.containsKey("twitter:title");
    }

    public boolean d() {
        return this.b.containsKey("twitter:message");
    }

    public boolean e() {
        return this.b.containsKey("twitter:positive_button");
    }

    public boolean f() {
        return this.b.containsKey("twitter:negative_button");
    }

    public boolean g() {
        return this.b.containsKey("twitter:title_string");
    }

    public boolean h() {
        return this.b.containsKey("twitter:message_string");
    }

    public boolean i() {
        return this.b.containsKey("twitter:positive_button_string");
    }

    public boolean j() {
        return this.b.containsKey("twitter:negative_button_string");
    }

    public int k() {
        return this.b.getInt("twitter:icon");
    }

    public int l() {
        return this.b.getInt("twitter:title");
    }

    public int m() {
        return this.b.getInt("twitter:message");
    }

    public int n() {
        return this.b.getInt("twitter:positive_button");
    }

    public int o() {
        return this.b.getInt("twitter:negative_button");
    }

    public String p() {
        return this.b.getString("twitter:title_string");
    }

    public String q() {
        return this.b.getString("twitter:message_string");
    }

    public String r() {
        return this.b.getString("twitter:positive_button_string");
    }

    public String s() {
        return this.b.getString("twitter:negative_button_string");
    }
}
