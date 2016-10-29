package com.twitter.android;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.widget.DatePicker;
import android.widget.Toast;
import com.twitter.android.client.bz;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.aj;
import defpackage.bbu;
import defpackage.boh;
import defpackage.cni;
import defpackage.cnk;
import java.util.Calendar;
import java.util.TimeZone;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class AgeGateActivity extends UserQueryActivity implements OnCancelListener, m {
    protected TwitterScribeAssociation a;
    private cni e;
    private long f;
    private UserImageView g;
    private DatePicker h;
    private TypefacesTextView i;

    public boolean a(w wVar) {
        wVar.a(2132017152);
        return true;
    }

    protected ic a(Intent intent, t tVar) {
        return null;
    }

    protected CharSequence a(Intent intent) {
        return null;
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a == 2131953413) {
            if (f()) {
                this.J.a(new boh(getApplication(), ab(), this.b, this.e).d(true).c(true));
                o();
            } else {
                bz.a((Context) this).a();
                Toast.makeText(this, getString(2131361883), 1).show();
                o();
            }
        } else if (a == k.home) {
            o();
        }
        return true;
    }

    private boolean f() {
        Calendar instance = Calendar.getInstance(TimeZone.getTimeZone("GMT"));
        instance.set(this.h.getYear(), this.h.getMonth(), this.h.getDayOfMonth());
        return a(this.f, instance.getTimeInMillis());
    }

    public static boolean a(long j, long j2) {
        Calendar instance = Calendar.getInstance(TimeZone.getTimeZone("GMT"));
        instance.setTimeInMillis(j);
        long a = a(instance);
        instance.setTimeInMillis(j2);
        return a(instance) <= a;
    }

    private static long a(Calendar calendar) {
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968625);
        tVar.a(true);
        tVar.b(12);
        return tVar;
    }

    public void onCancel(DialogInterface dialogInterface) {
    }

    public void b(Bundle bundle, t tVar) {
        if (ab().d()) {
            Intent intent = getIntent();
            this.a = a();
            N().a(this.a);
            this.g = (UserImageView) findViewById(2131951938);
            this.i = (TypefacesTextView) findViewById(2131951939);
            this.h = (DatePicker) findViewById(2131951942);
            bbu.a(new TwitterScribeLog(ab().g()).b(TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "impression")));
            TypefacesTextView typefacesTextView = (TypefacesTextView) findViewById(2131951943);
            typefacesTextView.setOnClickListener(new x(this));
            typefacesTextView.setPaintFlags(typefacesTextView.getPaintFlags() | 8);
            Bundle extras = intent.getExtras();
            if (extras != null) {
                this.b = extras.getLong("user_id");
                this.c = extras.getString("user_name");
                this.f = extras.getLong("age_gate_timestamp");
                String string = extras.getString("impression_id");
                boolean z = extras.getBoolean("is_earned");
                if (aj.b((CharSequence) string)) {
                    cnk a = new cnk().a(string);
                    if (z) {
                        a.b("earned");
                    }
                    this.e = (cni) a.q();
                }
            }
            setTitle(2131361887);
            c();
        }
    }

    protected void a(TwitterUser twitterUser) {
        super.a(twitterUser);
        this.g.a(twitterUser);
        this.i.setText(getString(2131361886));
    }

    protected TwitterScribeAssociation a() {
        return (TwitterScribeAssociation) new TwitterScribeAssociation().b("age_gate");
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i == 3 && i2 == -1) {
            setResult(0);
            o();
        }
    }
}
