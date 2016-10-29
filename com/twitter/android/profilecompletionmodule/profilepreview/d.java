package com.twitter.android.profilecompletionmodule.profilepreview;

import android.content.Context;
import com.twitter.android.profilecompletionmodule.ProfileCompletionModulePendingChanges;
import com.twitter.android.profilecompletionmodule.a;
import com.twitter.android.profiles.ProfileDetailsViewManager.IconItemType;
import com.twitter.android.profiles.as;
import com.twitter.media.model.MediaFile;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.collection.z;
import defpackage.chd;

/* compiled from: Twttr */
public class d extends a<c, ProfilePreviewState, ProfilePreviewScreen> {
    private a b;

    public d(c cVar) {
        a(cVar);
    }

    public String aF_() {
        return "presenter_profile_preview";
    }

    protected void m() {
        CharSequence a;
        super.m();
        ProfilePreviewScreen profilePreviewScreen = (ProfilePreviewScreen) d();
        Context h = h();
        n d = n.d();
        TwitterUser twitterUser = ((c) b()).a;
        ProfileCompletionModulePendingChanges f = f();
        ExtendedProfile d2 = f.d();
        ExtendedProfile extendedProfile = twitterUser.t;
        CharSequence e = f.e() != null ? f.e() : twitterUser.q;
        MediaFile a2 = f.a();
        MediaFile b = f.b();
        String c = f.c();
        cp cpVar = new cp(twitterUser);
        if (a2 != null) {
            cpVar.b(a2.a().toString());
        }
        if (b != null) {
            cpVar.h(b.a().toString());
        }
        if (c != null) {
            cpVar.d(c);
        }
        if (d2 != null && d2.a()) {
            a = as.a(d2, h);
        } else if (extendedProfile == null || !extendedProfile.a()) {
            a = null;
        } else {
            a = as.a(extendedProfile, h);
        }
        if (aj.b(e)) {
            d.c(z.a(IconItemType.a, e));
        }
        if (aj.b(a)) {
            d.c(z.a(IconItemType.c, a));
        }
        if (!d.h()) {
            this.b = new a(new chd((Iterable) d.q()));
        }
        profilePreviewScreen.setPendingProfilePreview((TwitterUser) cpVar.q());
        profilePreviewScreen.setEntitiesAdapter(this.b);
        boolean z = a2 == null && twitterUser.g();
        profilePreviewScreen.setScreenTitle(z);
    }

    protected String n() {
        return "preview_screen";
    }

    protected com.twitter.android.twitterflows.d o() {
        return null;
    }

    protected com.twitter.android.twitterflows.d p() {
        return null;
    }
}
