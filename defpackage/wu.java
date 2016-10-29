package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.model.core.TwitterUser;
import wv;
import ww;

/* compiled from: Twttr */
/* renamed from: wu */
public class wu {
    private final Context a;
    private final wx b;
    private final FragmentManager c;
    private final bg d;
    private final com.twitter.android.composer.bg e;
    private final ImageButton f;
    private final View g;
    private final TextView h;
    private final ImageView i;
    private boolean j;

    public wu(Context context, wx wxVar, FragmentManager fragmentManager, bg bgVar, ImageButton imageButton, View view, TextView textView, ImageView imageView, com.twitter.android.composer.bg bgVar2, Bundle bundle) {
        this.a = context;
        this.b = wxVar;
        this.c = fragmentManager;
        this.d = bgVar;
        this.e = bgVar2;
        this.f = imageButton;
        this.g = view;
        this.h = textView;
        this.i = imageView;
        this.f.setOnClickListener(this.b.a(new wv(this)));
        if (bundle != null) {
            b(bundle);
        }
    }

    public boolean a() {
        return this.j;
    }

    public void b() {
        TwitterUser f = this.d.c().f();
        if (f != null && f.p && d.a("legacy_deciders_lifeline_alerts_enabled")) {
            a(this.j);
            this.f.setVisibility(0);
        } else if (this.j) {
            a(false);
            this.f.setVisibility(8);
        } else {
            this.b.a(this.j);
        }
    }

    public void a(String str, TwitterUser twitterUser) {
        CharSequence string;
        String str2 = twitterUser.d;
        if (str != null) {
            string = this.a.getString(2131362865, new Object[]{str2, str});
        } else {
            string = this.a.getString(2131362864, new Object[]{str2});
        }
        this.g.setVisibility(0);
        this.h.setText(string);
        this.h.setVisibility(0);
        this.i.setImageResource(2130839023);
        this.i.setVisibility(0);
    }

    @VisibleForTesting
    void a(boolean z) {
        this.j = z;
        if (z) {
            this.e.g();
            this.f.setImageResource(2130839222);
        } else {
            this.f.setImageResource(2130839221);
        }
        this.b.a(this.j);
    }

    public void a(int i) {
        this.e.h();
        ((PromptDialogFragment) ((ec) ((ec) ((ec) ((ec) ((ec) new ec(i).a(2131362863)).b(2131362862)).d(2131362861)).f(2131362041)).a(false)).i().a(new ww(this))).a(this.c);
    }

    public void a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("lifeline_alert", this.j);
        bundle.putBundle("bundle_lifeline_module", bundle2);
    }

    private void b(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("bundle_lifeline_module");
        if (bundle2 != null) {
            this.j = bundle2.getBoolean("lifeline_alert");
        }
    }
}
