package com.twitter.app.users;

import android.os.Bundle;
import com.twitter.app.common.base.h;

/* compiled from: Twttr */
public class i extends y {
    public /* synthetic */ com.twitter.app.common.list.i e() {
        return a();
    }

    public /* synthetic */ h f() {
        return a();
    }

    public /* synthetic */ z k() {
        return a();
    }

    protected i(Bundle bundle) {
        super(bundle);
    }

    public static i a(Bundle bundle) {
        return new i(bundle);
    }

    public j a() {
        return new j(this);
    }

    public String b() {
        return this.b.getString("title_text");
    }

    public String c() {
        return this.b.getString("header_text");
    }

    public boolean d() {
        return this.b.getBoolean("preselect_all", false);
    }

    public boolean g() {
        return this.b.getBoolean("sync_timeline", true);
    }

    public String[] h() {
        return this.b.getStringArray("multiple_categories");
    }

    public String[] i() {
        return this.b.getStringArray("multiple_custo.m_interests");
    }

    public boolean j() {
        return this.b.getBoolean("use_seamful_header", false);
    }
}
