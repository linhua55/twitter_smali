package com.twitter.android.dm;

import android.os.Bundle;
import com.twitter.app.common.list.h;
import com.twitter.util.aj;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class b extends h {
    protected b(Bundle bundle) {
        super(bundle);
    }

    public static b a(Bundle bundle) {
        return new b(bundle);
    }

    public boolean a() {
        return this.b.getBoolean("is_from_external_url");
    }

    public boolean b() {
        return this.b.getBoolean("is_keyboard_open");
    }

    public String c() {
        CharSequence string = this.b.getString("intial_text");
        if (aj.b(string)) {
            return string;
        }
        String string2 = this.b.getString("android.intent.extra.SUBJECT");
        String string3 = this.b.getString("android.intent.extra.TEXT");
        if (string2 == null && string3 == null) {
            return null;
        }
        return (e.b(string2) + " " + e.b(string3)).trim();
    }

    public boolean d() {
        return 1 == i();
    }

    public boolean g() {
        return 2 == i();
    }

    private int i() {
        return this.b.getInt("intent_type", 0);
    }

    public Bundle h() {
        return this.b;
    }
}
