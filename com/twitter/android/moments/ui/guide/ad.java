package com.twitter.android.moments.ui.guide;

import atf;
import cgu;
import com.twitter.android.moments.data.v;
import com.twitter.model.moments.ab;
import com.twitter.util.object.g;
import defpackage.aow;
import defpackage.asy;
import defpackage.asz;

/* compiled from: Twttr */
class ad implements g<atf<aow, cgu<ab>>> {
    final /* synthetic */ MomentsGuideFragment a;

    ad(MomentsGuideFragment momentsGuideFragment) {
        this.a = momentsGuideFragment;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public atf<aow, cgu<ab>> a() {
        return new asy(new v(new asz(this.a.getActivity().getContentResolver())));
    }
}
