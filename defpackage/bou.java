package defpackage;

import android.content.Context;
import beb;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bou */
public class bou extends beb<as> {
    public final int a;
    public long b;
    public int c;
    public boolean h;
    public long[] i;
    public int j;
    public boolean k;
    public int l;
    public List<TwitterUser> m;

    protected /* synthetic */ c f() {
        return e();
    }

    public bou(Context context, Session session, int i) {
        super(context, bou.class.getName(), session);
        this.h = true;
        this.k = true;
        this.a = i;
    }

    protected e b() {
        long j = this.b;
        int i = this.a;
        if (!this.h || i == 10 || i == 19 || i == 20 || i == 21 || i == 33 || i == 41) {
            String str;
            e a = K().a("users", "recommendations").a("connections", this.k);
            if (j > 0) {
                a.a("user_id", j);
            }
            switch (i) {
                case Util.TYPE_DASH /*0*/:
                    str = "following-cluster-follow";
                    break;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str = "followers-cluster-follow";
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    str = "categories-cluster-follow";
                    break;
                case C.ENCODING_DTS /*7*/:
                    str = "contacts-cluster-follow";
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    str = "activity-source-cluster-follow";
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    str = "st-component";
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    str = "tweet-detail-favorited-by-cluster-follow";
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    str = "tweet-detail-retweeted-by-cluster-follow";
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    str = "activity-target-cluster-follow";
                    break;
                case bdd.TwitterButton_iconLayout /*19*/:
                    str = "welcome-flow-recommendations";
                    break;
                case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                    str = "profile-cluster-follow";
                    break;
                case bdd.TweetView_mediaTopMargin /*21*/:
                    str = "wtf-people-tab";
                    break;
                case bdd.AppCompatTheme_actionModeCopyDrawable /*33*/:
                    str = "pop-geo";
                    break;
                case bdd.AppCompatTheme_actionModeShareDrawable /*36*/:
                    str = "welcome-flow-highlight";
                    break;
                case bdd.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                    str = "forward-addressbook";
                    break;
                default:
                    throw new IllegalArgumentException("Invalid userType: " + i);
            }
            a.a("display_location", str);
            int i2 = this.j;
            if (i2 > 0) {
                a.a("limit", (long) i2);
            }
            long[] jArr = this.i;
            if (jArr != null && jArr.length > 0) {
                a.a("excluded", jArr);
            }
            if (i != 41) {
                a.a("pc", 1);
            }
            return a.a("include_user_entities", true);
        }
        throw new IllegalArgumentException("Unsupported type");
    }

    protected as e() {
        return as.a(7);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        long j = 0;
        if (httpOperation.j()) {
            int a;
            List list = (List) asVar.b();
            if (this.b > 0) {
                j = this.b;
            } else if (N() != null) {
                j = N().c;
            }
            if (this.h) {
                String str;
                com.twitter.library.provider.e T = T();
                di S = S();
                int i = this.a;
                if (this.c == 0) {
                    str = "-1";
                } else {
                    str = null;
                }
                a = S.a(list, j, i, -1, str, null, true, T);
                T.a();
            } else {
                a = list.size();
            }
            this.l = a;
            this.m = list;
        }
    }
}
