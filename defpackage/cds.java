package defpackage;

import bbu;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.i;

/* compiled from: Twttr */
/* renamed from: cds */
public class cds {
    private final TwitterScribeAssociation a;
    private final bg b;

    public cds(bg bgVar, TwitterScribeAssociation twitterScribeAssociation) {
        this.b = bgVar;
        this.a = TwitterScribeAssociation.a(twitterScribeAssociation);
    }

    public void a(aj ajVar, i iVar, String str) {
        bbu.a(a(ajVar, cds.a(iVar), str));
    }

    private TwitterScribeLog a(aj ajVar, String str, String str2) {
        ScribeItem scribeItem;
        String str3 = null;
        long g = this.b.c().g();
        String a = this.a.a();
        String b = this.a.b();
        if (ajVar != null) {
            TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
            twitterScribeItem.am = ajVar;
            TwitterScribeItem twitterScribeItem2 = twitterScribeItem;
            str3 = ajVar.e;
            scribeItem = twitterScribeItem2;
        } else {
            scribeItem = null;
        }
        return (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).b(new String[]{a, b, str3, str, str2})).a(scribeItem);
    }

    private static String a(i iVar) {
        return "feedback_" + iVar.b.toLowerCase();
    }
}
