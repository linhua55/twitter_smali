package defpackage;

import android.content.Context;
import beb;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.aq;
import com.twitter.library.api.as;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterSocialProof;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.ck;
import com.twitter.model.core.p;
import com.twitter.model.search.TwitterUserMetadata;
import com.twitter.util.aj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: boq */
public class boq extends beb<as> {
    final List<TwitterUser> a;
    String b;
    int c;
    private final int h;
    private final String i;
    private final int j;
    private final boolean k;
    private final long l;
    private String m;

    protected /* synthetic */ c f() {
        return e();
    }

    public boq(Context context, ab abVar, long j, int i, String str) {
        super(context, boq.class.getName(), abVar);
        this.a = new ArrayList();
        this.l = j;
        this.h = i;
        this.i = str;
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                this.j = 1;
                this.k = true;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case bdd.TweetView_tweetViewLayoutId /*29*/:
                this.j = 2;
                this.k = true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case bdd.AppCompatTheme_actionModeFindDrawable /*37*/:
                this.j = 4;
                this.k = false;
            case Atom.LONG_HEADER_SIZE /*16*/:
                this.j = 17;
                this.k = false;
            case bdd.TweetView_previewFlags /*26*/:
            case bdd.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                this.j = 8192;
                this.k = false;
            default:
                throw new IllegalArgumentException("Unknown user type: " + i);
        }
    }

    public final boq a(String str) {
        this.m = str;
        return this;
    }

    protected e b() {
        e K = K();
        long j = this.l;
        switch (this.h) {
            case Util.TYPE_DASH /*0*/:
                K.a("friends", "list");
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                K.a("followers", "list");
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                K.a("blocks", "list").a("skip_status", true);
                break;
            case Atom.LONG_HEADER_SIZE /*16*/:
                K.a("friends", "list").a("type", "sms");
                break;
            case bdd.TweetView_previewFlags /*26*/:
                K.a("mutes", "users", "list").a("skip_status", true);
                break;
            case bdd.TweetView_tweetViewLayoutId /*29*/:
                K.a("followers", "vit", "list");
                break;
            case bdd.AppCompatTheme_actionModeFindDrawable /*37*/:
                K.a("blocks", "list").a("skip_status", true).a("block_type", "imported");
                break;
            case bdd.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                K.a("mutes", "users", "list").a("skip_status", true).a("mute_type", "managed");
                break;
        }
        if (this.k) {
            K.a("pc", true);
        }
        K.a("include_user_entities", true).a("user_id", j);
        if (this.i != null) {
            K.a("cursor", this.i);
        }
        return K;
    }

    protected as e() {
        return as.a(21);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        Object obj = this.m;
        if (httpOperation.j()) {
            aq aqVar = (aq) asVar.b();
            if (aqVar == null) {
                aaVar.a(0);
                return;
            }
            int i;
            Object obj2;
            Collection<TwitterUser> b = aqVar.b();
            Object obj3 = N().c == this.l ? 1 : null;
            switch (this.h) {
                case Util.TYPE_DASH /*0*/:
                    i = 40;
                    break;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case bdd.TweetView_tweetViewLayoutId /*29*/:
                    i = 1;
                    break;
                default:
                    i = -1;
                    break;
            }
            if (this.k && aj.b(obj) && i != -1) {
                obj2 = 1;
            } else {
                obj2 = null;
            }
            for (TwitterUser twitterUser : b) {
                if (obj3 != null) {
                    twitterUser.S = p.a(twitterUser.S, this.j);
                }
                if (!(obj2 == null || twitterUser.B == null)) {
                    TwitterSocialProof twitterSocialProof = (TwitterSocialProof) new ck().a(i).a(obj).q();
                    if (twitterUser.R == null) {
                        twitterUser.R = new TwitterUserMetadata(twitterSocialProof, null, null, false, null);
                    } else {
                        twitterUser.R = new TwitterUserMetadata(twitterSocialProof, null, twitterUser.R.d, false, null);
                    }
                }
            }
            this.a.addAll(b);
            this.b = aqVar.a();
            com.twitter.library.provider.e T = T();
            this.c = S().a(b, this.l, this.h, -1, this.i, this.b, true, T);
            T.a();
        }
    }
}
