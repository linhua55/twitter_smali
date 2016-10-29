package com.twitter.app.users;

import android.content.Intent;
import android.os.Bundle;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.h;

/* compiled from: Twttr */
public class j extends z<j> {
    public /* synthetic */ h b() {
        return a();
    }

    public /* synthetic */ g c() {
        return a();
    }

    public /* synthetic */ y d() {
        return a();
    }

    public j(Bundle bundle) {
        super(bundle);
    }

    public j(i iVar) {
        super((y) iVar);
    }

    public static j a(Intent intent) {
        return new j(intent != null ? intent.getExtras() : null);
    }

    public j a(String str) {
        this.a.putString("title_text", str);
        return this;
    }

    public j b(String str) {
        this.a.putString("header_text", str);
        return this;
    }

    public j a(boolean z) {
        this.a.putBoolean("preselect_all", z);
        return this;
    }

    public j b(boolean z) {
        this.a.putBoolean("sync_timeline", z);
        return this;
    }

    public j a(String[] strArr) {
        this.a.putStringArray("multiple_categories", strArr);
        return this;
    }

    public j b(String[] strArr) {
        this.a.putStringArray("multiple_custo.m_interests", strArr);
        return this;
    }

    public j c(boolean z) {
        this.a.putBoolean("use_seamful_header", z);
        return this;
    }

    public i a() {
        return new i(this.a);
    }
}
