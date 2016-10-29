package com.twitter.android.nativecards;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.config.d;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.model.core.Tweet;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import defpackage.bct;
import defpackage.byy;

/* compiled from: Twttr */
public class CallToAction extends TwitterButton implements OnClickListener {
    State a;
    private Tweet c;
    private String d;
    private a e;
    private f f;
    private byy g;
    private String h;
    private String i;

    /* compiled from: Twttr */
    enum State {
        EMPTY,
        OPEN_APP,
        GET_APP,
        VIEW_ON_WEB
    }

    public CallToAction(Context context) {
        this(context, null);
    }

    public CallToAction(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.buttonStyle);
    }

    public CallToAction(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = State.EMPTY;
        setOnClickListener(this);
    }

    public void setScribeElement(String str) {
        this.d = str;
    }

    public void setTweet(Tweet tweet) {
        this.c = tweet;
    }

    public void setCardActionHandler(a aVar) {
        this.e = aVar;
    }

    public void setCardLogger(f fVar) {
        this.f = fVar;
    }

    public void a(byy byy, String str, String str2, String str3, String str4) {
        CharSequence string;
        this.g = byy;
        this.h = str;
        this.i = str4;
        Resources resources = getContext().getApplicationContext().getResources();
        if (byy != null && this.e.c(byy.b(), str)) {
            this.a = State.OPEN_APP;
            if (aj.a(str2)) {
                string = resources.getString(2131362369);
            } else {
                string = resources.getString(2131362368, new Object[]{str2});
            }
        } else if (aj.b(str)) {
            this.a = State.GET_APP;
            if (aj.a(str2)) {
                string = resources.getString(2131362363);
            } else {
                string = resources.getString(2131362364, new Object[]{str2});
            }
        } else {
            this.a = State.VIEW_ON_WEB;
            if (aj.a(str3)) {
                string = resources.getString(2131362390);
            } else {
                string = resources.getString(2131362388, new Object[]{str3});
            }
        }
        setText(string);
    }

    public void onClick(View view) {
        switch (c.a[this.a.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                getApp();
            case Util.TYPE_OTHER /*3*/:
                a(this.i);
            default:
        }
    }

    private void a() {
        this.f.a("open_app", this.d);
        this.f.a(PromotedEvent.q);
        this.e.a(this.g, this.h);
    }

    private void getApp() {
        this.f.a("install_app", this.d);
        this.f.a(PromotedEvent.r);
        if (this.e.b(this.h)) {
            this.f.a("open_link", this.d);
        }
        if (d.a("post_installed_logging_enabled")) {
            this.f.d(this.h, this.d);
        }
    }

    private void a(String str) {
        if (!aj.a(str)) {
            this.f.a("open_link", this.d);
            if (this.c.ac()) {
                Session c = bg.a().c();
                if (c != null) {
                    this.f.b(str);
                    this.e.a(c, this.c, str);
                    return;
                }
                return;
            }
            this.e.a(this.f.a(), this.c, str);
        }
    }
}
