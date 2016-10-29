package com.twitter.android.moments.ui.animation;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.twitter.library.media.manager.TwitterImageRequester;
import com.twitter.media.request.b;
import com.twitter.media.request.i;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.g;
import com.twitter.model.moments.k;
import com.twitter.util.ab;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.s;
import com.twitter.util.ui.r;
import cqm;
import defpackage.afq;
import defpackage.afs;
import defpackage.cqj;
import defpackage.cqk;
import defpackage.cql;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class MomentsActivityTransition extends cqj {
    private final FragmentActivity a;
    private final c b;
    private final String c;
    private final Size d;
    private final ViewGroup e;
    private final cqm f;
    private final ViewGroup g;
    private final ImageView h;
    private final View i;
    private final k j;
    private final View k;
    private cqk l;

    public static MomentsActivityTransition a(FragmentActivity fragmentActivity, Intent intent, ViewGroup viewGroup) {
        c rVar;
        switch (h.a[((Type) ab.a(intent, "transition_type", s.a(Type.class))).ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                rVar = new r();
                break;
            default:
                rVar = new d();
                break;
        }
        k kVar = (k) ab.a(intent, "crop_hint", k.a);
        String stringExtra = intent.getStringExtra("media_entity");
        Size size = (Size) intent.getParcelableExtra("media_size");
        com.twitter.model.moments.ab abVar = (com.twitter.model.moments.ab) ab.a(intent, "moment", com.twitter.model.moments.ab.a);
        Tweet tweet = (Tweet) intent.getParcelableExtra("tweet");
        cqm b = cql.b(intent);
        afq a = afq.a(LayoutInflater.from(fragmentActivity));
        new afs(fragmentActivity.getResources(), a).a(abVar, tweet);
        return new MomentsActivityTransition(fragmentActivity, rVar, b, stringExtra, size, kVar, viewGroup, a.g());
    }

    public static Intent a(Intent intent, com.twitter.model.moments.ab abVar, Size size, String str, k kVar, Type type) {
        ab.a(intent, "moment", (Object) abVar, com.twitter.model.moments.ab.a);
        intent.putExtra("media_size", size);
        intent.putExtra("media_entity", str);
        ab.a(intent, "crop_hint", (Object) kVar, k.a);
        intent.putExtra("transition_type", type.ordinal());
        ab.a(intent, "transition_type", (Object) type, s.a(Type.class));
        return intent;
    }

    public MomentsActivityTransition(FragmentActivity fragmentActivity, c cVar, cqm cqm, String str, Size size, k kVar, ViewGroup viewGroup, View view) {
        this.a = fragmentActivity;
        this.b = cVar;
        this.e = viewGroup;
        this.c = str;
        this.d = size;
        this.f = cqm;
        this.j = kVar;
        this.k = view;
        this.g = (ViewGroup) this.e.findViewById(2131952779);
        this.h = (ImageView) this.g.findViewById(2131952824);
        this.i = this.g.findViewById(2131952825);
    }

    private void c() {
        this.e.getViewTreeObserver().addOnPreDrawListener(new f(this));
    }

    public void a(cqk cqk) {
        this.l = cqk;
        ScaleType scaleType = ScaleType.FIT;
        Size b = r.b(this.a);
        g a = k.a(this.j, b.e());
        this.h.setScaleType(ImageView.ScaleType.MATRIX);
        b a2 = ((b) ((b) new b(this.c).a(this.d).f(false)).g(true)).a(scaleType.decoderScaleType);
        TwitterImageRequester twitterImageRequester = new TwitterImageRequester(this.a);
        a2.a((i) new g(this, a, b));
        twitterImageRequester.a(a2.a());
        twitterImageRequester.b(false);
    }

    public View b() {
        return this.g;
    }

    public void a() {
        this.g.setVisibility(8);
        this.e.removeView(this.g);
    }
}
