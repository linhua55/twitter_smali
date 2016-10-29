package com.twitter.android.media.foundmedia;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.media.widget.FoundMediaSearchView;
import com.twitter.android.util.v;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.media.model.MediaFile;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.foundmedia.f;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import com.twitter.util.ui.r;
import defpackage.bca;
import tv.periscope.android.library.k;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class GifGalleryActivity extends TwitterFragmentActivity implements z {
    GifGalleryFragment a;
    String b;
    String c;
    int d;
    ComposerType e;
    private FoundMediaSearchView f;

    public GifGalleryActivity() {
        this.e = ComposerType.FULL_COMPOSER;
    }

    public static Intent a(Context context, String str, int i, String str2, ComposerType composerType) {
        return new Intent(context, GifGalleryActivity.class).putExtra("title", str).putExtra("gallery_type", i).putExtra("query", str2).putExtra("composer_type", composerType);
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968609);
        tVar.b(false);
        tVar.a(false);
        tVar.b(44);
        return tVar;
    }

    public boolean a(w wVar) {
        wVar.a(2132017168);
        return super.a(wVar);
    }

    public int b(w wVar) {
        ViewGroup j = wVar.j();
        this.f = (FoundMediaSearchView) LayoutInflater.from(this).inflate(2130968851, j, false);
        this.f.setDismissButtonStyle(1);
        this.f.setOnEditorActionListener(new n(this));
        this.f.setOnClearClickListener(new o(this));
        j.setCustomView(this.f);
        this.f.setVisibility(8);
        return 2;
    }

    public void b(Bundle bundle, t tVar) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intent intent = getIntent();
        this.e = (ComposerType) intent.getParcelableExtra("composer_type");
        if (bundle == null) {
            this.a = new GifGalleryFragment();
            supportFragmentManager.beginTransaction().add(2131951916, this.a).commit();
            this.d = intent.getIntExtra("gallery_type", 1);
            this.c = intent.getStringExtra("query");
            this.b = intent.getStringExtra("title");
        } else {
            this.a = (GifGalleryFragment) supportFragmentManager.findFragmentById(2131951916);
            this.d = bundle.getInt("gallery_type");
            this.c = bundle.getString("query");
            this.b = bundle.getString("title");
        }
        this.a.a((z) this);
        setTitle(this.b);
        getWindow().setSoftInputMode(2);
    }

    public void onResume() {
        super.onResume();
        if (this.c != null && !this.c.isEmpty()) {
            this.a.a(getApplicationContext(), this.d, this.c);
        }
    }

    public boolean a(ac acVar) {
        switch (acVar.a()) {
            case k.home /*2131951668*/:
                onBackPressed();
                return true;
            case 2131953426:
                a(true);
                return true;
            default:
                return super.a(acVar);
        }
    }

    public void onBackPressed() {
        a(false);
        setResult(0);
        finish();
    }

    public void c() {
        a(false);
    }

    public void a(f fVar, MediaFile mediaFile) {
        new p(this, mediaFile, getApplicationContext(), fVar).execute(new Void[0]);
    }

    public void a(f fVar, c cVar) {
        FoundMediaAttributionDialogFragment.a(getSupportFragmentManager(), fVar.f, fVar.b, cVar);
    }

    public void a(boolean z) {
        Object obj = null;
        ToolBar X = X();
        if (X != null) {
            bca a = X.a(2131953426);
            if (z) {
                setTitle(null);
                this.f.setVisibility(0);
                if (!(this.c == null || e())) {
                    obj = this.c.trim();
                }
                if (aj.b((CharSequence) obj)) {
                    if (this.d == 2) {
                        obj = obj.replace('_', ' ');
                    }
                    this.f.setText(obj);
                    this.f.setSelection(obj.length());
                    this.f.c();
                }
                a.b(false);
                this.f.requestFocus();
            } else {
                setTitle(this.b);
                this.f.setVisibility(8);
                a.b(true);
            }
            r.b(this, this.f, z);
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        CharSequence title = getTitle();
        bundle.putString("title", title == null ? null : title.toString());
        bundle.putString("query", this.c);
        bundle.putInt("gallery_type", this.d);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1 && intent != null) {
                    setResult(-1, v.a((DraftAttachment) e.a(v.a(intent)), this.d == 1 ? "search" : "select"));
                    finish();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (i2 != -1 || intent == null) {
                    a(false);
                    return;
                }
                setResult(-1, intent);
                finish();
            default:
        }
    }

    boolean e() {
        return this.d == 2 && "trending".equals(this.c);
    }
}
