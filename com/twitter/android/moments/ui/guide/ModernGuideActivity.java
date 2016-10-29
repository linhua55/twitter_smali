package com.twitter.android.moments.ui.guide;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.twitter.android.ListFragmentActivity;
import com.twitter.android.ic;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.util.object.e;
import defpackage.adn;

/* compiled from: Twttr */
public class ModernGuideActivity extends ListFragmentActivity {
    protected CharSequence a(Intent intent) {
        return (CharSequence) e.b(intent.getStringExtra("guide_category_name"), getString(2131363113));
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        adn.a(ab().g());
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.a(0);
        a.a(false);
        a.b(false);
        return a;
    }

    protected ic a(Intent intent, t tVar) {
        TwitterListFragment momentsGuideFragment = new MomentsGuideFragment();
        Object stringExtra = intent.getStringExtra("guide_category_id");
        String stringExtra2 = intent.getStringExtra("guide_category_name");
        boolean booleanExtra = intent.getBooleanExtra("show_category_pills", false);
        if (TextUtils.isEmpty(stringExtra)) {
            momentsGuideFragment.a(new ah().a(booleanExtra).a());
        } else {
            momentsGuideFragment.a(new ah().a(stringExtra, stringExtra2).a(booleanExtra).a());
        }
        return new ic(momentsGuideFragment);
    }
}
