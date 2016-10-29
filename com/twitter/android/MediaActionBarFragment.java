package com.twitter.android;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.composer.aw;
import com.twitter.android.widget.EngagementActionBar;
import com.twitter.android.widget.ToggleImageButton;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.h;
import com.twitter.library.api.timeline.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.model.core.Tweet;
import com.twitter.util.object.e;
import com.twitter.util.t;
import defpackage.bbu;
import defpackage.bum;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class MediaActionBarFragment extends BaseFragment implements OnClickListener, nu {
    private EngagementActionBar a;
    private ToggleImageButton b;
    private TextView c;
    private ToggleImageButton d;
    private TextView e;
    private TwitterScribeAssociation f;
    private bg g;
    private Tweet h;
    private String i;
    private String j;
    private String k;
    private TwitterScribeItem l;
    private Context m;
    private boolean n;
    private az o;
    private bum p;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context activity = getActivity();
        this.m = activity.getApplicationContext();
        this.g = bg.a();
        this.o = az.a(activity);
        g o = o();
        this.i = e.b(o.f("page"));
        this.j = e.b(o.f("section"));
        this.k = e.b(o.f("component"));
        this.f = (TwitterScribeAssociation) o.h("association");
        this.l = (TwitterScribeItem) o.h("item");
        if (bundle != null) {
            this.n = bundle.getBoolean("dialog_impression_scribed");
        }
    }

    public static MediaActionBarFragment a(TwitterFragmentActivity twitterFragmentActivity, int i, TwitterScribeAssociation twitterScribeAssociation, String str, String str2, String str3) {
        MediaActionBarFragment mediaActionBarFragment = (MediaActionBarFragment) twitterFragmentActivity.getSupportFragmentManager().findFragmentById(i);
        if (mediaActionBarFragment != null) {
            return mediaActionBarFragment;
        }
        Fragment mediaActionBarFragment2 = new MediaActionBarFragment();
        mediaActionBarFragment2.a(new h().a("association", (Parcelable) twitterScribeAssociation).b("page", str).b("section", str2).b("component", str3).c());
        twitterFragmentActivity.getSupportFragmentManager().beginTransaction().add(i, mediaActionBarFragment2).commit();
        return mediaActionBarFragment2;
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        return layoutInflater.inflate(2130968977, null);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.a = (EngagementActionBar) view.findViewById(2131951908);
        this.b = (ToggleImageButton) view.findViewById(2131951911);
        this.c = (TextView) view.findViewById(2131952631);
        this.d = (ToggleImageButton) view.findViewById(2131951910);
        this.e = (TextView) view.findViewById(2131952630);
        if (this.h != null) {
            a(this.h);
        }
    }

    public void onClick(View view) {
        Tweet tweet = this.h;
        int id = view.getId();
        Context context = (TwitterFragmentActivity) getActivity();
        Session c = this.g.c();
        if (io.a()) {
            a(id, (FragmentActivity) context, tweet);
        } else if (id == 2131951909) {
            context.startActivity(aw.a().a(tweet).b(c.e()).a(context));
            a("reply", tweet);
        } else if (id == 2131951911) {
            a(tweet, view);
        } else if (id == 2131951910) {
            new nt(context, tweet).a(this).a(this).a().a();
        } else if (id == 2131951913) {
            aq.a(context, tweet, true);
            a("share", tweet);
        }
    }

    public void a(long j, Tweet tweet, boolean z) {
        if (!isAdded()) {
            return;
        }
        if (z) {
            a("unretweet", this.h);
            this.d.setToggledOn(false);
            this.h.d = false;
            return;
        }
        a("retweet", this.h);
        this.d.setToggledOn(true);
        this.h.d = true;
    }

    public void a(long j, boolean z, boolean z2, boolean z3) {
        b(z, z2, this.m, z3);
    }

    public void b(long j, Tweet tweet, boolean z) {
        a("quote", this.h);
    }

    public void c(long j, Tweet tweet, boolean z) {
        bbu.a(new TwitterScribeLog(this.g.c().g()).b(this.i, this.j, "retweet_dialog::dismiss"));
    }

    public void d(long j, Tweet tweet, boolean z) {
        if (!this.n) {
            bbu.a(new TwitterScribeLog(this.g.c().g()).b(this.i, this.j, "retweet_dialog::impression"));
            this.n = true;
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("dialog_impression_scribed", this.n);
    }

    public void a(Tweet tweet) {
        this.h = tweet;
        this.a.setTweet(tweet);
        this.a.setOnClickListener(this);
        b(tweet);
    }

    private void b(Tweet tweet) {
        int i = 2131886429;
        Resources resources = getResources();
        int i2 = tweet.o;
        int i3 = tweet.l;
        this.c.setText(i2 > 0 ? t.a(resources, (long) i2) : BuildConfig.VERSION_NAME);
        TextView textView = this.c;
        if (this.h.a) {
            i2 = 2131886285;
        } else {
            i2 = 2131886429;
        }
        textView.setTextColor(resources.getColor(i2));
        this.e.setText(i3 > 0 ? t.a(resources, (long) i3) : BuildConfig.VERSION_NAME);
        TextView textView2 = this.e;
        if (tweet.d) {
            i = 2131886282;
        }
        textView2.setTextColor(resources.getColor(i));
    }

    private void a(Tweet tweet, View view) {
        if (tweet.a) {
            a(tweet, false);
            this.o.a(new com.twitter.library.api.timeline.h(this.m, this.g.c(), tweet.t).a(tweet.f), new jp(this, this.m, tweet));
            a("unfavorite", tweet);
            if (this.p != null) {
                this.p.c(view);
                return;
            }
            return;
        }
        a(tweet, true);
        this.o.a(new d(this.m, this.g.c(), tweet.t, tweet.u).a(tweet.f).a(Boolean.valueOf(tweet.l())), new jq(this, tweet));
        a("favorite", tweet);
        if (this.p != null) {
            this.p.b(view);
        }
    }

    void a(Tweet tweet, boolean z) {
        if (z) {
            a(tweet, true, tweet.o + 1);
        } else {
            a(tweet, false, Math.max(tweet.o - 1, 0));
        }
    }

    private void a(Tweet tweet, boolean z, int i) {
        tweet.a = z;
        tweet.o = i;
        a(tweet);
    }

    protected static Dialog a(TwitterFragmentActivity twitterFragmentActivity, Tweet tweet, int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return new Builder(twitterFragmentActivity).setTitle(twitterFragmentActivity.getString(2131364020)).setMessage(twitterFragmentActivity.getString(2131364019)).setPositiveButton(twitterFragmentActivity.getString(2131364205), new jr(twitterFragmentActivity, tweet)).setNegativeButton(twitterFragmentActivity.getString(2131363158), null).create();
            default:
                return null;
        }
    }

    private static void b(boolean z, boolean z2, Context context, boolean z3) {
        if (!z && !z3) {
            Toast.makeText(context, z2 ? 2131364021 : 2131364031, 1).show();
        }
    }

    private void a(String str, Tweet tweet) {
        String a = ScribeLog.a(this.i, this.j, this.k, "tweet", str);
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.g.c().g()).a(this.m, tweet, this.f, null).b(a)).a(this.f)).a(this.l));
    }

    private void a(int i, FragmentActivity fragmentActivity, Tweet tweet) {
        int i2;
        switch (i) {
            case 2131951909:
                i2 = 3;
                break;
            case 2131951910:
                i2 = 2;
                break;
            case 2131951911:
                i2 = 1;
                this.b.a();
                break;
            case 2131951913:
                aq.a((Context) fragmentActivity, tweet, false);
                a("share", tweet);
                return;
            default:
                return;
        }
        io.a(fragmentActivity, i2, tweet.d());
    }

    public void a(bum bum) {
        this.p = bum;
    }
}
