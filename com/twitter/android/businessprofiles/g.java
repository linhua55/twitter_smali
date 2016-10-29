package com.twitter.android.businessprofiles;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.model.businessprofiles.ResponsivenessLevel;
import com.twitter.model.businessprofiles.ak;
import com.twitter.model.businessprofiles.an;
import com.twitter.model.businessprofiles.m;
import com.twitter.model.businessprofiles.q;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.SynchronizedDateFormat;
import com.twitter.util.aj;
import defpackage.brz;
import java.text.DateFormat;
import java.util.Date;
import java.util.regex.Pattern;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class g {
    private static final Pattern a;
    private final q b;
    private final Context c;
    private final TypefacesTextView d;
    private final boolean e;
    private final boolean f;

    static {
        a = Pattern.compile("^\\d?\\d(:|\\.)\\d\\d$");
    }

    public g(m mVar, Context context, TypefacesTextView typefacesTextView) {
        this.b = mVar.h;
        this.c = context;
        this.d = typefacesTextView;
        this.d.setVisibility(8);
        this.f = brz.f();
        this.e = brz.e();
    }

    public void a() {
        CharSequence charSequence = null;
        if (e()) {
            charSequence = c();
        }
        if (aj.a(charSequence) && d()) {
            charSequence = b();
        }
        if (aj.b(charSequence)) {
            this.d.setText(charSequence);
            this.d.setVisibility(0);
            return;
        }
        this.d.setVisibility(8);
    }

    @VisibleForTesting
    protected String b() {
        switch (h.a[this.b.c.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return this.c.getResources().getString(2131363490);
            default:
                return null;
        }
    }

    @VisibleForTesting
    protected String c() {
        return a(new ak(new Date(), this.b.b.c));
    }

    @VisibleForTesting
    protected String a(ak akVar) {
        if (akVar.c()) {
            return this.c.getResources().getString(2131363486);
        }
        if (akVar.d()) {
            return this.c.getResources().getString(2131363487);
        }
        an a = akVar.a();
        if (a != null) {
            return a(a);
        }
        a = akVar.b();
        if (a == null) {
            return null;
        }
        return b(a);
    }

    @VisibleForTesting
    protected String a(an anVar) {
        return this.c.getResources().getString(2131363489, new Object[]{a(anVar.b), a(anVar.c)});
    }

    @VisibleForTesting
    protected String b(an anVar) {
        SynchronizedDateFormat synchronizedDateFormat = new SynchronizedDateFormat("EEE");
        if (synchronizedDateFormat.format(anVar.b).equals(synchronizedDateFormat.format(anVar.a()))) {
            return this.c.getResources().getString(2131363488, new Object[]{new SynchronizedDateFormat("EEEE").format(anVar.b)});
        }
        return this.c.getResources().getString(2131363489, new Object[]{r1, r0});
    }

    @VisibleForTesting
    protected String a(Date date) {
        String format = DateFormat.getTimeInstance(3).format(date);
        if (!a.matcher(format).matches()) {
            format = format.replaceAll("(\\.|:)00", BuildConfig.VERSION_NAME);
        }
        return format.replaceAll(" ", BuildConfig.VERSION_NAME).toLowerCase();
    }

    private boolean d() {
        return (!this.f || this.b == null || this.b.c == ResponsivenessLevel.a) ? false : true;
    }

    private boolean e() {
        return (!this.e || this.b == null || this.b.b == null) ? false : true;
    }
}
