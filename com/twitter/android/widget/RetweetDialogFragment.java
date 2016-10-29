package com.twitter.android.widget;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.app.Fragment;
import bnw;
import com.twitter.android.composer.aw;
import com.twitter.android.mx;
import com.twitter.android.nu;
import com.twitter.app.common.base.d;
import com.twitter.app.main.MainActivity;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.service.x;
import com.twitter.model.core.Tweet;
import defpackage.bnq;
import java.util.ArrayList;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class RetweetDialogFragment extends PromptDialogFragment {
    private nu a;

    public /* synthetic */ ea c() {
        return b();
    }

    public /* synthetic */ d g() {
        return b();
    }

    public static RetweetDialogFragment a(int i, long j, Tweet tweet, boolean z, boolean z2, boolean z3, Context context) {
        return (RetweetDialogFragment) ((eg) a(new eg(i), j, tweet, z, z2, z3, context)).i();
    }

    public ee b() {
        return ee.c(getArguments());
    }

    protected static <T extends ef> T a(T t, long j, Tweet tweet, boolean z, boolean z2, boolean z3, Context context) {
        t.b(z).a(tweet).a(j).c(z2);
        List arrayList = new ArrayList(3);
        ArrayList arrayList2 = new ArrayList(3);
        arrayList.add(context.getString(z ? 2131364042 : 2131364030));
        arrayList2.add(Integer.valueOf(0));
        if (!(z || z3)) {
            arrayList.add(context.getString(2131363434));
            arrayList2.add(Integer.valueOf(1));
        }
        t.a(arrayList2).a((CharSequence[]) arrayList.toArray(new CharSequence[arrayList.size()]));
        return t;
    }

    public void a(nu nuVar) {
        this.a = nuVar;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (this.a == null) {
            Fragment targetFragment = getTargetFragment();
            if (targetFragment != null) {
                if (targetFragment instanceof nu) {
                    this.a = (nu) targetFragment;
                }
            } else if (activity instanceof nu) {
                this.a = (nu) activity;
            }
        }
        a(3);
    }

    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        a(2);
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        ee b = b();
        long G = b.G();
        Tweet H = b.H();
        boolean E = b.E();
        List I = b.I();
        if (I != null) {
            i = ((Integer) I.get(i)).intValue();
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
                a(G, H, E);
            case WireMessage.WIRE_CHAT /*1*/:
                a(G, H, E, b.F());
            default:
        }
    }

    protected void a(long j, Tweet tweet, boolean z) {
        x bnw;
        Context activity = getActivity();
        Session b = bg.a().b(j);
        if (z) {
            bnw = new bnw(activity, b, tweet.t, tweet.q());
        } else {
            bnw = new bnq(activity, b, tweet.t, tweet.b != b.g() ? tweet.u : 0, tweet.f).a(Boolean.valueOf(tweet.l()));
        }
        az.a(activity).a(bnw, new ed(j, tweet, z, this.a));
    }

    protected void a(long j, Tweet tweet, boolean z, boolean z2) {
        Context activity = getActivity();
        String e = bg.a().b(j).e();
        Intent a = aw.a().b(e).b(tweet).a(tweet.f).a(activity);
        if (z2) {
            MainActivity.a(a, activity, e);
        } else {
            activity.startActivity(a);
        }
        a(1, j, tweet, z);
    }

    protected void a(int i) {
        if (this.a != null) {
            ee b = b();
            a(i, b.G(), b.H(), b.E());
        }
    }

    protected void a(int i, long j, Tweet tweet, boolean z) {
        nu nuVar = this.a;
        if (nuVar != null) {
            switch (i) {
                case mx.View_android_theme /*0*/:
                    nuVar.a(j, tweet, z);
                case WireMessage.WIRE_CHAT /*1*/:
                    nuVar.b(j, tweet, z);
                case WireMessage.WIRE_CONTROL /*2*/:
                    nuVar.c(j, tweet, z);
                case WireMessage.WIRE_AUTH /*3*/:
                    nuVar.d(j, tweet, z);
                default:
            }
        }
    }
}
