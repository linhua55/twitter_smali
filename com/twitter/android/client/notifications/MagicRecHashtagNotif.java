package com.twitter.android.client.notifications;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.util.aj;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class MagicRecHashtagNotif extends GenericNotif {
    public static final Creator<MagicRecHashtagNotif> CREATOR;

    static {
        CREATOR = new r();
    }

    public static boolean a(ad adVar) {
        if (aj.a(adVar.m)) {
            return false;
        }
        Uri parse = Uri.parse(adVar.m);
        boolean equals = "twitter".equals(parse.getScheme());
        boolean equals2 = "search".equals(parse.getHost());
        boolean b = aj.b(parse.getQueryParameter("query"));
        boolean equals3 = "magic_rec_hashtag".equals(adVar.l);
        if (equals && equals2 && b && equals3) {
            return true;
        }
        return false;
    }

    public MagicRecHashtagNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    MagicRecHashtagNotif(Parcel parcel) {
        super(parcel);
    }

    protected List<ScribeItem> as_() {
        List<ScribeItem> arrayList = new ArrayList(super.as_());
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.c = 8;
        twitterScribeItem.b = b(this.a.m);
        arrayList.add(twitterScribeItem);
        return arrayList;
    }

    private static String b(String str) {
        return Uri.parse(str).getQueryParameter("query");
    }
}
