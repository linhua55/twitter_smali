package com.twitter.android;

import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cni;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.widget.ActionButton;
import com.twitter.library.widget.SocialBylineView;
import com.twitter.model.core.p;
import com.twitter.util.aj;
import defpackage.bdc;
import defpackage.bdd;

/* compiled from: Twttr */
class xb {
    public int a;
    public final long b;
    public final ActionButton c;
    public final ImageView d;
    public final ImageView e;
    public final TextView f;
    public final TextView g;
    public final TextView h;
    public final UserImageView i;
    public final SocialBylineView j;
    public final TextView k;
    private final Context l;

    xb(Context context, RelativeLayout relativeLayout, long j) {
        this.l = context;
        this.b = j;
        this.c = (ActionButton) relativeLayout.findViewById(2131951619);
        this.g = (TextView) relativeLayout.findViewById(2131951701);
        this.d = (ImageView) relativeLayout.findViewById(2131951694);
        this.e = (ImageView) relativeLayout.findViewById(2131951739);
        this.f = (TextView) relativeLayout.findViewById(2131951684);
        this.i = (UserImageView) relativeLayout.findViewById(2131951736);
        this.h = (TextView) relativeLayout.findViewById(2131951693);
        this.j = (SocialBylineView) relativeLayout.findViewById(2131951707);
        this.k = (TextView) relativeLayout.findViewById(2131951734);
    }

    public void a(String str, String str2) {
        if (aj.a(str2)) {
            this.f.setText(str);
        } else {
            this.f.setText(str2);
        }
        this.g.setText('@' + str);
    }

    public void a(boolean z) {
        if (z) {
            this.d.setVisibility(0);
        } else {
            this.d.setVisibility(8);
        }
    }

    public void b(boolean z) {
        if (z) {
            this.e.setVisibility(0);
        } else {
            this.e.setVisibility(8);
        }
    }

    public void a(cni cni, boolean z) {
        TextView textView = this.h;
        if (cni == null || cni.c()) {
            textView.setVisibility(8);
            return;
        }
        if (z) {
            textView.setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130839026, 0);
        } else {
            textView.setCompoundDrawablesWithIntrinsicBounds(2130839026, 0, 0, 0);
        }
        textView.setVisibility(0);
    }

    public void a(int i, int i2, String str, int i3, boolean z) {
        Resources resources = this.l.getResources();
        SocialBylineView socialBylineView = this.j;
        if (i2 <= 0 || !aj.b(str)) {
            socialBylineView.setVisibility(8);
            return;
        }
        socialBylineView.setIcon(i2);
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                socialBylineView.setLabel(resources.getString(bdc.social_both_follow, new Object[]{str}));
                socialBylineView.setVisibility(0);
                break;
            case Util.TYPE_OTHER /*3*/:
                socialBylineView.setLabel(resources.getString(bdc.social_follow_and_follow, new Object[]{str}));
                socialBylineView.setVisibility(0);
                break;
            case bdd.AppCompatTheme_actionModePopupWindowStyle /*39*/:
                socialBylineView.setLabel(resources.getString(2131363865, new Object[]{str}));
                socialBylineView.setVisibility(0);
                break;
            case bdd.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                if (i3 > 0) {
                    socialBylineView.setLabel(resources.getQuantityString(2131492870, i3, new Object[]{str, Integer.valueOf(i3)}));
                } else {
                    socialBylineView.setLabel(resources.getString(2131362711, new Object[]{str}));
                }
                socialBylineView.setVisibility(0);
                break;
            default:
                socialBylineView.setVisibility(8);
                break;
        }
        socialBylineView.setRenderRTL(z);
    }

    public void a(int i, boolean z) {
        SocialBylineView socialBylineView = this.j;
        if (i > 0) {
            socialBylineView.setIcon(i);
            socialBylineView.setLabel(this.l.getString(bdc.social_follows_you));
            socialBylineView.setVisibility(0);
            socialBylineView.setRenderRTL(z);
            return;
        }
        socialBylineView.setVisibility(8);
    }

    public void a(int i, Resources resources) {
        ActionButton actionButton = this.c;
        if (p.a(i)) {
            actionButton.setEnabled(true);
            actionButton.setChecked(true);
            actionButton.setImageResource(2130839306);
            actionButton.setAlpha(1.0f);
        } else if (p.d(i)) {
            actionButton.setEnabled(false);
            actionButton.setChecked(false);
            actionButton.setImageResource(2130839070);
            actionButton.setAlpha(0.4f);
        } else {
            actionButton.setEnabled(true);
            actionButton.setChecked(false);
            actionButton.setImageResource(2130839307);
            actionButton.setAlpha(1.0f);
        }
        this.a = i;
    }

    public void a() {
        int i = 0;
        if (this.j.getVisibility() == 0) {
            i = 1;
        }
        if (this.h.getVisibility() == 0) {
            i++;
        }
        this.k.setMaxLines(3 - i);
    }
}
