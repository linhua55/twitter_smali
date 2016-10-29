package com.twitter.android.profiles;

import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.list.j;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.model.core.TwitterUser;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class an implements v {
    protected final Bundle a;
    protected final TwitterUser b;
    protected final Uri c;
    protected final Class<? extends BaseFragment> d;

    public an(Bundle bundle, TwitterUser twitterUser, Uri uri, Class<? extends BaseFragment> cls) {
        this.a = bundle;
        this.b = twitterUser;
        this.c = uri;
        this.d = cls;
    }

    public List<at> a() {
        List<at> arrayList = new ArrayList(1);
        arrayList.add(b());
        return arrayList;
    }

    protected at b() {
        return new au(this.c, this.d).a(((j) ((j) ((j) new j(this.a).h(false)).a("user", this.b)).a("fragment_page_number", 0)).b()).a();
    }

    public String a(at atVar, TwitterUser twitterUser, Resources resources) {
        return TtmlNode.ANONYMOUS_REGION_ID;
    }
}
