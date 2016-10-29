package com.twitter.android.media.foundmedia;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.media.widget.FoundMediaSearchView;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.util.ui.r;
import tv.periscope.android.library.k;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class GifCategoriesActivity extends TwitterFragmentActivity {
    ComposerType a;
    private FoundMediaSearchView b;

    public GifCategoriesActivity() {
        this.a = ComposerType.FULL_COMPOSER;
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968608);
        tVar.b(false);
        tVar.a(false);
        tVar.b(36);
        return tVar;
    }

    public int b(w wVar) {
        ViewGroup j = wVar.j();
        this.b = (FoundMediaSearchView) LayoutInflater.from(this).inflate(2130968851, j, false);
        this.b.setOnEditorActionListener(new f(this));
        this.b.setOnClearClickListener(new g(this));
        j.setCustomView(this.b);
        return 2;
    }

    public void b(Bundle bundle, t tVar) {
        getWindow().setSoftInputMode(2);
        this.a = (ComposerType) getIntent().getParcelableExtra("composer_type");
        if (bundle == null) {
            Fragment gifCategoriesFragment = new GifCategoriesFragment();
            gifCategoriesFragment.a(new m(this.a));
            getSupportFragmentManager().beginTransaction().add(2131951915, gifCategoriesFragment).commit();
        }
    }

    public boolean a(ac acVar) {
        switch (acVar.a()) {
            case k.home /*2131951668*/:
                setResult(0);
                finish();
                return true;
            default:
                return super.a(acVar);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                this.b.setText(BuildConfig.VERSION_NAME);
                if (i2 == -1 && intent != null) {
                    setResult(-1, intent);
                    finish();
                }
            default:
        }
    }

    public void c() {
        r.b(this, this.b, false);
    }
}
