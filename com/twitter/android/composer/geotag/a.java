package com.twitter.android.composer.geotag;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.android.composer.bc;
import com.twitter.android.geo.GeoTagState;
import com.twitter.android.geo.PlacePickerModel;
import com.twitter.android.geo.PlacePickerModel.PlaceListSource;
import com.twitter.android.geo.c;
import com.twitter.android.geo.f;
import com.twitter.android.lf;
import com.twitter.android.widget.ComposerPoiFragment;
import com.twitter.android.widget.ToggleImageButton;
import com.twitter.android.widget.q;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.media.util.m;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.model.MediaType;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.d;
import com.twitter.model.geo.g;
import com.twitter.model.media.EditableMedia;
import defpackage.bbu;
import defpackage.bex;
import defpackage.bvs;
import defpackage.bvy;

/* compiled from: Twttr */
public class a implements n {
    private final Context a;
    private final e b;
    private final bg c;
    private final az d;
    private final bvy e;
    private final ComposerPoiFragment f;
    private final c g;
    private final l h;
    private final TextView i;
    private final ToggleImageButton j;
    private final View k;
    private final TextView l;
    private final ImageView m;

    public a(Context context, e eVar, bg bgVar, az azVar, bvy bvy, c cVar, ComposerPoiFragment composerPoiFragment, l lVar, TextView textView, ToggleImageButton toggleImageButton, View view, TextView textView2, ImageView imageView, Bundle bundle) {
        this.a = context;
        this.b = eVar;
        this.c = bgVar;
        this.d = azVar;
        this.e = bvy;
        this.g = cVar;
        this.f = composerPoiFragment;
        this.h = lVar;
        this.i = textView;
        this.j = toggleImageButton;
        this.k = view;
        this.l = textView2;
        this.m = imageView;
        this.f.a((q) new b(this));
        this.h.a((n) this);
        this.j.setOnClickListener(this.b.a(new c(this)));
        this.l.setOnClickListener(this.b.a(new d(this)));
        this.g.a(this.f);
        i();
        if (bundle != null) {
            b(bundle);
        }
    }

    private void i() {
        if (bc.a()) {
            this.k.setVisibility(8);
            this.h.a(0);
            return;
        }
        this.h.a(8);
        this.k.setVisibility(0);
    }

    public GeoTagState a() {
        return this.f.b();
    }

    public void a(EditableMedia editableMedia) {
        if (editableMedia == null) {
            GeoTagState a = a();
            this.f.k().a();
            this.f.a(a);
            this.h.a(false);
            this.h.a();
            return;
        }
        this.h.a(true);
        com.twitter.config.c.b("composer_geo_inline_location_picker_android_4125");
        if ((editableMedia.g() == MediaType.IMAGE || editableMedia.g() == MediaType.VIDEO) && bc.a() && bvs.a().a(this.c.c())) {
            boolean a2;
            d a3 = bc.b() ? m.a(editableMedia.k.d) : null;
            if (a3 != null) {
                a2 = this.f.a(a3);
            } else {
                a2 = this.f.j();
            }
            if (!a2) {
                this.h.a();
            }
        }
    }

    public String b() {
        return this.f.f();
    }

    public void c() {
        Session c = this.c.c();
        UserSettings j = c.j();
        if (!this.e.c()) {
            this.j.setVisibility(8);
            if (j == null) {
                this.d.a(bex.a(this.a, c), null);
            }
        } else if (j != null) {
            this.j.setVisibility(0);
        }
    }

    public void a(String str) {
        if (str != null) {
            this.l.setText(str);
            this.l.setVisibility(0);
            this.m.setImageResource(2130839977);
            this.m.setVisibility(0);
        } else {
            this.l.setText(BuildConfig.VERSION_NAME);
            this.l.setVisibility(8);
            this.m.setVisibility(8);
        }
        i();
    }

    private void a(boolean z) {
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.c.c().g());
        String[] strArr = new String[1];
        strArr[0] = z ? "compose:map::map_pin:close" : "compose:map::map_pin:open";
        bbu.a(twitterScribeLog.b(strArr));
    }

    public g d() {
        g f = a().f();
        if (f.a(this.a, bvs.a(), this.j, this.l, this.i, f, this.f.i(), this.b.a(), bc.a())) {
            return f;
        }
        return null;
    }

    public f e() {
        return this.f.k().a(PlaceListSource.a);
    }

    public void a(String[] strArr, int[] iArr) {
        if (lf.a().a("android.permission.ACCESS_FINE_LOCATION", strArr, iArr)) {
            this.f.d(this.b.b());
            return;
        }
        c.b(this.a);
        bvs.a().a(false);
    }

    private void b(Bundle bundle) {
        this.j.setToggledOn(a().c());
        this.h.a();
        if (bundle.getBundle("bundle_geo_tag_module") == null) {
        }
    }

    public void a(Bundle bundle) {
        bundle.putBundle("bundle_geo_tag_module", new Bundle());
    }

    public void f() {
        this.f.a(null);
    }

    public void g() {
        this.f.g();
    }

    public void a(boolean z, int i) {
        this.f.a(z, i);
    }

    public void h() {
        GeoTagState a = a();
        if (a.c()) {
            this.f.a(a.b());
        }
        this.g.a(7);
    }

    public void a(TwitterPlace twitterPlace) {
        PlacePickerModel k = this.f.k();
        ScribeItem b = TwitterScribeItem.b();
        b.ai.a(twitterPlace.b, twitterPlace.c, Double.NaN, Double.NaN, k.b(twitterPlace), -1, 0, k.a(twitterPlace), null, null, -1);
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.c.c().g()).b("compose", "poi", null, "poi_suggestion", "click")).a(b));
        if (e() != null) {
            this.f.a(new GeoTagState(twitterPlace, twitterPlace.h, e().a(), true, false, false));
        }
    }
}
