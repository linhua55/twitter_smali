package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.main.MainActivity;
import com.twitter.app.users.q;
import com.twitter.library.api.r;
import com.twitter.library.client.Session;
import com.twitter.library.client.d;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import defpackage.bbu;
import java.util.ArrayList;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class EmailExploreFetchCategoryUsersActivity extends TwitterFragmentActivity {
    private String a;
    private int b;
    private ArrayList<TwitterUser> c;
    private String d;
    private String e;
    private String f;

    public EmailExploreFetchCategoryUsersActivity() {
        this.b = 0;
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        Intent intent = getIntent();
        this.a = intent.getStringExtra("explore_email_category");
        if (aj.a(this.a)) {
            this.a = "news";
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(ab().g()).b("explore_email", "category", null, "missing_category", "error")).f(this.a));
        }
        String stringExtra = intent.getStringExtra("explore_email_country");
        if (aj.a((CharSequence) stringExtra)) {
            String str = "nux_test";
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(ab().g()).b("explore_email", "category", null, "missing_country", "error")).f(str));
            stringExtra = str;
        }
        Session ab = ab();
        x rVar = new r(this, ab, this.a, stringExtra);
        x rVar2 = new r(this, ab, this.a, "nux_en-u");
        b(rVar, 1);
        b(rVar2, 2);
        PreferenceManager.getDefaultSharedPreferences(this).edit().remove("pref_category").remove("pref_country").apply();
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                Bundle bundle = ((aa) xVar.l().b()).c;
                this.c = bundle.getParcelableArrayList("users_list_result");
                this.f = bundle.getString("category_title");
                if (this.c != null && this.f != null) {
                    if (this.c.size() > 15) {
                        this.c = new ArrayList(this.c.subList(0, 15));
                    }
                    this.b++;
                    break;
                }
                startActivity(new Intent(this, MainActivity.class));
                finish();
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                ArrayList parcelableArrayList = ((aa) xVar.l().b()).c.getParcelableArrayList("users_list_result");
                if (parcelableArrayList != null && parcelableArrayList.size() == 1) {
                    this.d = ((TwitterUser) parcelableArrayList.get(0)).G;
                    this.e = ((TwitterUser) parcelableArrayList.get(0)).k;
                    this.b++;
                    break;
                }
                startActivity(new Intent(this, MainActivity.class));
                finish();
                break;
                break;
        }
        if (this.b == 2) {
            startActivity(new q().a(this.a).a((Context) this, EmailExploreActivity.class).putExtra("extra_title", this.f).putExtra("extra_header_image_url", this.d).putExtra("extra_header_image_username", this.e).putParcelableArrayListExtra("extra_sul", this.c));
            finish();
        }
    }
}
