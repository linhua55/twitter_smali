package com.twitter.android.profiles;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableString;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.internal.android.widget.FlowLayout;
import com.twitter.library.view.m;
import com.twitter.library.view.o;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.bg;
import com.twitter.model.core.p;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.ui.view.a;
import com.twitter.util.aj;
import com.twitter.util.collection.x;
import com.twitter.util.t;
import defpackage.bcx;
import defpackage.boo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/* compiled from: Twttr */
public class ProfileDetailsViewManager {
    private final TextView a;
    private final TextView b;
    private final TextView c;
    private final FlowLayout d;
    private final LinearLayout e;
    private String f;
    private String g;
    private String h;
    private final TextView i;
    private m j;
    private ao k;
    private boolean l;
    private OnClickListener m;
    private bg n;
    private final ae o;
    private TwitterPlace p;
    private ExtendedProfile q;
    private List<IconItemType> r;

    /* compiled from: Twttr */
    public enum IconItemType {
        LOCATION(2130839715),
        URL(2130839714),
        BIRTHDATE(2130839712),
        VINE(2130839716);
        
        public final int iconResource;

        private IconItemType(int i) {
            this.iconResource = i;
        }
    }

    public ProfileDetailsViewManager(View view) {
        this.a = (TextView) view.findViewById(bcx.name);
        this.b = (TextView) view.findViewById(2131953116);
        this.c = (TextView) view.findViewById(2131951734);
        this.d = (FlowLayout) view.findViewById(2131953122);
        this.o = new ae(this);
        this.d.setAdapter(this.o);
        this.i = (TextView) view.findViewById(bcx.follows_you);
        this.e = (LinearLayout) view.findViewById(2131953117);
        this.r = Arrays.asList(new IconItemType[]{IconItemType.LOCATION, IconItemType.URL, IconItemType.VINE, IconItemType.BIRTHDATE});
    }

    public ProfileDetailsViewManager(TextView textView, TextView textView2, TextView textView3, TextView textView4, LinearLayout linearLayout, FlowLayout flowLayout) {
        this.a = textView;
        this.b = textView2;
        this.c = textView3;
        this.d = flowLayout;
        this.o = new ae(this);
        this.d.setAdapter(this.o);
        this.i = textView4;
        this.e = linearLayout;
        this.r = Arrays.asList(new IconItemType[]{IconItemType.LOCATION, IconItemType.URL, IconItemType.VINE, IconItemType.BIRTHDATE});
    }

    public void a(ao aoVar, String str, Context context) {
        Resources resources = context.getResources();
        this.k = aoVar;
        TwitterUser a = aoVar.a();
        a(a.d);
        b(a.k);
        b(a.g, a.D);
        a(a.q, (TwitterPlace) x.a(a.r));
        a(a.h, a.E);
        a(a.S);
        a(a.t, aoVar, resources, context);
        a(a.t);
        c(str);
    }

    public void a(String str, TwitterPlace twitterPlace) {
        if (twitterPlace == null) {
            this.h = str;
            this.p = null;
        } else {
            this.p = twitterPlace;
            this.h = twitterPlace.d;
        }
        a();
    }

    public void a(TextView textView) {
        if (this.p == null) {
            a(textView, this.h);
            a((View) textView, this.h);
            return;
        }
        a(textView, new aa(this, textView.getResources().getColor(2131886265)), this.h);
    }

    public void a(String str, bg bgVar) {
        if (bgVar == null || bgVar.c.c()) {
            bgVar = null;
            str = null;
        }
        this.g = str;
        this.n = bgVar;
        a();
    }

    public void a(TextView textView, Resources resources) {
        a(textView, this.g, this.n, 0, resources.getColor(2131886264), resources.getColor(2131886265));
        a((View) textView, this.g);
    }

    public void a(ExtendedProfile extendedProfile) {
        if (b(extendedProfile)) {
            this.q = extendedProfile;
            a();
        }
    }

    private boolean b(ExtendedProfile extendedProfile) {
        return boo.d() && extendedProfile != null && extendedProfile.i != null && extendedProfile.i.e;
    }

    public void a(TextView textView, Resources resources, Context context) {
        if (b(this.q)) {
            String string;
            a abVar = new ab(this, resources.getColor(2131886265), context);
            if (this.q.i.d > 0) {
                string = resources.getString(2131364172, new Object[]{t.a(resources, this.q.i.d, true)});
            } else {
                string = resources.getString(2131364209);
            }
            a(textView, abVar, string);
            return;
        }
        a((View) textView, null);
    }

    public void a(String str) {
        CharSequence charSequence;
        TextView textView = this.a;
        if (aj.a((CharSequence) str)) {
            charSequence = this.f;
        }
        a(textView, charSequence);
    }

    public void b(String str) {
        this.f = str;
        a(this.b, '@' + this.f);
    }

    public void b(String str, bg bgVar) {
        CharSequence a = as.a(str);
        a(this.c, (String) a, bgVar);
        a(this.c, a);
    }

    public void a(ExtendedProfile extendedProfile, ao aoVar, Resources resources, Context context) {
        if (boo.b()) {
            this.q = extendedProfile;
            this.k = aoVar;
            a();
        }
    }

    public void b(TextView textView, Resources resources, Context context) {
        if (!boo.b()) {
            return;
        }
        if (as.a(this.q, new Date())) {
            a(textView, new ac(this, textView.getResources().getColor(2131886265), textView), resources.getString(this.k.b() ? 2131363597 : 2131363225));
            return;
        }
        CharSequence a;
        if (this.q != null) {
            a = as.a(this.q, context);
        } else {
            a = null;
        }
        a(textView, a);
        a((View) textView, a);
    }

    public void a(int i) {
        if (this.i == null) {
            return;
        }
        if (p.b(i)) {
            this.i.setVisibility(0);
        } else {
            this.i.setVisibility(8);
        }
    }

    public void a(m mVar) {
        this.j = mVar;
    }

    public ProfileDetailsViewManager a(OnClickListener onClickListener) {
        this.m = onClickListener;
        return this;
    }

    private void a(View view, CharSequence charSequence) {
        view.setVisibility(aj.a(charSequence) ? 8 : 0);
    }

    private void a(TextView textView, a aVar, String str) {
        CharSequence spannableString = new SpannableString(str);
        spannableString.setSpan(aVar, 0, spannableString.length(), 33);
        com.twitter.ui.view.p.a(textView);
        a(textView, spannableString);
        a((View) textView, (CharSequence) str);
    }

    private static void a(TextView textView, CharSequence charSequence) {
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    private void a(TextView textView, String str, bg bgVar) {
        Resources resources = textView.getContext().getResources();
        a(textView, str, bgVar, 0, resources.getColor(2131886264), resources.getColor(2131886265));
    }

    private void a(TextView textView, String str, bg bgVar, int i, int i2, int i3) {
        if (aj.a((CharSequence) str)) {
            textView.setVisibility(8);
            return;
        }
        if (bgVar == null || ((bgVar.c.c() && bgVar.e.c() && bgVar.f.c()) || this.j == null)) {
            textView.setText(str);
        } else {
            textView.setText(o.a(str).a(bgVar).a(this.j).a(i2).b(i3).a());
            com.twitter.ui.view.p.a(textView);
        }
        textView.setVisibility(0);
    }

    private void c(String str) {
        if (aj.b((CharSequence) str)) {
            ((TextView) this.e.findViewById(2131953118)).setText(str);
            if (!this.l) {
                this.e.setVisibility(0);
            }
        }
    }

    public void a(boolean z) {
        this.l = z;
    }

    public void a(List<IconItemType> list) {
        this.r = list;
    }

    public void a() {
        List arrayList = new ArrayList();
        if (this.r.contains(IconItemType.LOCATION) && aj.b(this.h)) {
            arrayList.add(IconItemType.LOCATION);
        }
        if (this.r.contains(IconItemType.URL) && aj.b(this.g)) {
            arrayList.add(IconItemType.URL);
        }
        if (this.r.contains(IconItemType.VINE) && b(this.q)) {
            arrayList.add(IconItemType.VINE);
        }
        if (this.r.contains(IconItemType.BIRTHDATE) && this.q != null && this.q.c()) {
            arrayList.add(IconItemType.BIRTHDATE);
        }
        this.d.setVisibility(arrayList.isEmpty() ? 8 : 0);
        if (this.o != null) {
            this.o.a(arrayList);
            this.o.notifyDataSetChanged();
        }
    }
}
