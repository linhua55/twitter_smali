package com.twitter.android.geo;

import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.twitter.android.lf;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.m;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.ui.r;
import defpackage.bbu;
import defpackage.bvs;
import defpackage.bvt;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class c implements m {
    private final String a;
    private int b;
    private final FragmentActivity c;
    private final FragmentManager d;
    private final lf e;
    private final int f;
    private e g;

    public c(FragmentActivity fragmentActivity, String str, lf lfVar, int i) {
        this.d = fragmentActivity.getSupportFragmentManager();
        this.c = fragmentActivity;
        this.a = str;
        this.e = lfVar;
        this.f = i;
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) this.d.findFragmentByTag(str);
        if (promptDialogFragment != null) {
            promptDialogFragment.a((m) this);
            this.b = promptDialogFragment.c().D();
        }
    }

    public void a(e eVar) {
        this.g = eVar;
    }

    public void a(int i) {
        int i2;
        int i3;
        this.b = i;
        int i4 = (i & 1) > 0 ? 1 : 0;
        if ((i & 2) > 0) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if ((i & 4) > 0) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        Session c = bg.a().c();
        bvt a = bvs.a();
        if (i2 != 0 && !a.b(c)) {
            b(2);
        } else if (i4 != 0 && !a.d()) {
            b(1);
            bbu.a(new TwitterScribeLog(b()).b("location_prompt::::impression"));
        } else if (i3 == 0 || a.e()) {
            this.e.a(this.f, this.c, "android.permission.ACCESS_FINE_LOCATION");
        } else {
            b(3);
        }
    }

    public static void a(Context context) {
        a(context, new Builder(context));
    }

    @VisibleForTesting
    static void a(Context context, Builder builder) {
        if (lf.a().b()) {
            builder.setMessage(2131362410).setPositiveButton(2131362747, new d(context)).setNegativeButton(2131362041, null).setCancelable(false).create().show();
        }
    }

    @VisibleForTesting
    static void b(Context context, Builder builder) {
        bvt a = bvs.a();
        if (a.d() && a.e() && !a.f()) {
            a(context, builder);
        }
    }

    public static void b(Context context) {
        b(context, new Builder(context));
    }

    private void b(int i) {
        Context context = this.c;
        r.b(context, context.getWindow().getDecorView(), false);
        ec ecVar = (ec) new ec(i).h(this.b);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                ((ec) ((ec) ecVar.b(2131362408)).d(2131363218)).f(2131362750);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                ((ec) ((ec) ((ec) ecVar.a(2131364008)).b(2131364007)).d(2131362660)).f(2131362041);
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                ((ec) ((ec) ecVar.b(2131362411)).d(2131363607)).f(2131362041);
                break;
            default:
                return;
        }
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) ecVar.i();
        promptDialogFragment.a((m) this).setCancelable(false);
        promptDialogFragment.a(this.d, this.a);
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (-1 == i2) {
                    bvs.a().a(true);
                    a(this.b);
                    bbu.a(new TwitterScribeLog(b()).b("location_prompt:::allow:click"));
                } else if (-2 == i2) {
                    bbu.a(new TwitterScribeLog(b()).b("location_prompt:::deny:click"));
                    a();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (-1 == i2) {
                    bvs.a().b(bg.a().c(), true);
                    a(this.b);
                    return;
                }
                a();
            case WireMessage.WIRE_AUTH /*3*/:
                if (-1 == i2) {
                    if (this.g != null) {
                        this.g.c();
                    }
                    c(this.c);
                    return;
                }
                a();
            default:
        }
    }

    public static void c(Context context) {
        context.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS").setFlags(268435456));
    }

    @TargetApi(23)
    private void a() {
        this.c.onRequestPermissionsResult(this.f, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, new int[]{-1});
    }

    private long b() {
        return bg.a().c().g();
    }
}
