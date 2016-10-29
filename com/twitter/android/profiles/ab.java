package com.twitter.android.profiles;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.view.View;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.library.client.bg;
import com.twitter.ui.view.a;

/* compiled from: Twttr */
class ab extends a {
    final /* synthetic */ Context a;
    final /* synthetic */ ProfileDetailsViewManager b;

    ab(ProfileDetailsViewManager profileDetailsViewManager, int i, Context context) {
        this.b = profileDetailsViewManager;
        this.a = context;
        super(i);
    }

    public void onClick(View view) {
        if (ProfileDetailsViewManager.a(this.b) != null) {
            long g = bg.a().c().g();
            String a = as.a(g == ProfileDetailsViewManager.b(this.b).e());
            as.a(g, ProfileDetailsViewManager.b(this.b), new String[]{a, "profile::vine:click"});
            Uri parse = Uri.parse(ProfileDetailsViewManager.d(this.b).i.c);
            PackageManager packageManager = this.a.getPackageManager();
            Intent intent = new Intent("android.intent.action.VIEW", parse);
            if (intent.resolveActivity(packageManager) != null) {
                this.a.startActivity(intent);
            } else {
                OpenUriHelper.a(this.a, ProfileDetailsViewManager.d(this.b).i.b, ProfileDetailsViewManager.d(this.b).b);
            }
        }
    }
}
