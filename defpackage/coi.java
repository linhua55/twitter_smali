package defpackage;

import cni;
import com.twitter.model.core.TwitterSocialProof;
import com.twitter.util.collection.ar;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: coi */
public class coi implements cns {
    public static final Set<String> a;
    public final String b;
    public final String c;
    public final cni d;
    public final TwitterSocialProof e;

    static {
        a = ar.a("Tweet", new String[]{"TweetWithFollow", "TweetFollowOnly"});
    }

    public coi(String str, String str2, cni cni, TwitterSocialProof twitterSocialProof) {
        this.b = str;
        this.c = str2;
        this.d = cni;
        this.e = twitterSocialProof;
    }
}
