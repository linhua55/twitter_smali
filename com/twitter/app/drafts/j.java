package com.twitter.app.drafts;

import android.content.Context;
import android.content.Intent;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.app.common.list.h;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class j {
    public final String a;
    public final boolean b;
    public final long c;

    public j(String str, long j, boolean z) {
        this.a = e.b(str);
        this.c = j;
        this.b = z;
    }

    public static j a(h hVar) {
        return new j(hVar.a("account_name", BuildConfig.VERSION_NAME), hVar.a("excluded_draft_id", 0), hVar.a("start_composer", false));
    }

    public Intent a(Context context) {
        return new Intent(context, DraftsActivity.class).putExtra("start_composer", this.b).putExtra("account_name", this.a).putExtra("excluded_draft_id", this.c);
    }
}
