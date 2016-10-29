package com.twitter.android;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.widget.ListView;
import android.widget.Toast;
import bbl;
import bbn;
import bbu;
import bdj;
import cbs;
import cgl;
import cni;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.av.bd;
import com.twitter.android.geo.places.d;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.library.av.playback.be;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.media.util.q;
import com.twitter.library.scribe.ScribeGeoDetails.ScribeGeoPlace;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.InvalidDataException;
import com.twitter.library.view.c;
import com.twitter.library.widget.TweetView;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.library.widget.tweet.content.m;
import com.twitter.media.model.MediaDescriptor;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;
import com.twitter.model.core.ag;
import com.twitter.model.core.ap;
import com.twitter.model.core.b;
import com.twitter.model.core.cr;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import defpackage.aow;
import defpackage.bdc;
import defpackage.cbp;
import defpackage.cen;
import defpackage.cet;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class vr extends c {
    private boolean a;
    protected final WeakReference<Fragment> b;
    protected final Context c;
    protected final com.twitter.android.client.c d;
    protected final bg e;
    protected final TwitterScribeAssociation f;
    protected final cen g;
    protected final aow h;
    protected final sn i;
    protected Session j;
    protected TwitterScribeAssociation k;
    private String l;
    private final vq m;

    public vr(Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, String str, cen cen) {
        this(fragment, twitterScribeAssociation, str, cen, null, new sn(fragment, twitterScribeAssociation));
    }

    public vr(Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, String str, cen cen, sn snVar) {
        this(fragment, twitterScribeAssociation, str, cen, null, snVar);
    }

    public vr(Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, String str, cen cen, aow aow) {
        this(fragment, twitterScribeAssociation, str, cen, aow, new sn(fragment, twitterScribeAssociation));
    }

    public vr(Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, String str, cen cen, aow aow, sn snVar) {
        this(fragment.getActivity(), fragment, com.twitter.android.client.c.a(fragment.getActivity()), bg.a(), snVar, twitterScribeAssociation, str, cen, aow);
    }

    public vr(Context context, Fragment fragment, com.twitter.android.client.c cVar, bg bgVar, sn snVar, TwitterScribeAssociation twitterScribeAssociation, String str, cen cen, aow aow) {
        this.l = null;
        FragmentActivity activity = fragment.getActivity();
        this.b = new WeakReference(fragment);
        this.d = cVar;
        this.e = bgVar;
        this.f = twitterScribeAssociation;
        this.a = true;
        this.l = str;
        this.g = cen;
        this.h = aow;
        this.j = this.e.c();
        this.i = snVar;
        this.c = context.getApplicationContext();
        this.m = new vq(activity, this.j, this.l, this.g.b(), this.f);
    }

    public boolean b() {
        return (this.h == null || this.h.c == null) ? false : true;
    }

    public void a(boolean z) {
        this.a = z;
    }

    public void a(Session session) {
        this.j = session;
    }

    protected TwitterScribeItem a(TweetView tweetView) {
        if (tweetView != null) {
            return tweetView.getScribeItem();
        }
        return null;
    }

    private String a(Tweet tweet, String str, String str2) {
        return TwitterScribeLog.a(this.f, Tweet.b(tweet), str, str2);
    }

    public void a(cet cet) {
        if (!cet.a.c()) {
            Fragment fragment = (Fragment) this.b.get();
            if (fragment != null) {
                FragmentActivity activity = fragment.getActivity();
                if (activity != null) {
                    Tweet tweet = cet.a;
                    cni cni = tweet.f;
                    long b = cet.b();
                    long a = cet.a();
                    String str = (String) e.b(this.g.a(), a(cet.a, cet.c ? "avatar" : "screen_name", "profile_click"));
                    bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.j.g()).a(this.c, tweet, this.f, null).a(b, cni, null).b(new String[]{str})).a(this.f)).g(this.l));
                    ProfileActivity.a(activity, b, cet.c(), cni, a(a), tweet.ag);
                }
            }
        }
    }

    private TwitterScribeAssociation a(long j) {
        if (this.k != null) {
            return (TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation(this.k).a(1)).a(j);
        }
        if (this.f != null) {
            return (TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation(this.f).a(1)).a(j);
        }
        return null;
    }

    public void a(Fragment fragment, Tweet tweet, MediaEntity mediaEntity, TweetView tweetView) {
        if (this.j != null) {
            String str = (String) e.b(this.g.c(), a(tweet, "platform_photo_card", "click"));
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.j.g()).a(this.c, tweet, this.f, null).b(new String[]{str})).a(this.f)).a(a(tweetView))).g(this.l));
        }
        if (!(tweet == null || tweet.f == null)) {
            bbu.a(cbp.a(PromotedEvent.p, tweet.f).a());
        }
        b(fragment, tweet, mediaEntity, tweetView);
    }

    public void b(Fragment fragment, Tweet tweet, MediaEntity mediaEntity, TweetView tweetView) {
        a(fragment, tweet, mediaEntity, false, tweetView);
    }

    public void a(Fragment fragment, Tweet tweet, MediaEntity mediaEntity, boolean z, TweetView tweetView) {
        Intent putExtra = new Intent(fragment.getActivity(), GalleryActivity.class).putExtra("etc", this.a).putExtra("association", this.f);
        if (this.f != null) {
            String a = this.f.a();
            if ("home".equals(a)) {
                putExtra.putExtra("context", 4);
            } else if ("tweet".equals(a)) {
                putExtra.putExtra("context", 5);
            } else if ("profile_tweets".equals(a)) {
                putExtra.putExtra("context", 6);
            } else if ("list".equals(a)) {
                putExtra.putExtra("context", 7);
            } else if ("favorites".equals(a)) {
                putExtra.putExtra("context", 8);
            } else if ("profile".equals(a) || "me".equals(a)) {
                putExtra.putExtra("context", 10);
                putExtra.putExtra("association", this.f);
            }
        }
        if (this.h != null) {
            putExtra.setData(this.h.a).putExtra("prj", this.h.b).putExtra("sel", this.h.c).putExtra("selArgs", this.h.d).putExtra("orderBy", this.h.e).putExtra(TtmlNode.ATTR_ID, tweet.H).putExtra("controls", false);
        } else {
            String a2 = a("pic_plus_link_3106");
            putExtra.putExtra("statusId", tweet.H);
            boolean z2 = true;
            switch (a2.hashCode()) {
                case -1929861296:
                    if (a2.equals("pic_plus_link_variation_1")) {
                        z2 = false;
                        break;
                    }
                    break;
                case -1929861295:
                    if (a2.equals("pic_plus_link_variation_2")) {
                        z2 = true;
                        break;
                    }
                    break;
                case -1929861294:
                    if (a2.equals("pic_plus_link_variation_3")) {
                        z2 = true;
                        break;
                    }
                    break;
                case -1929861293:
                    if (a2.equals("pic_plus_link_variation_4")) {
                        z2 = true;
                        break;
                    }
                    break;
            }
            switch (z2) {
                case Util.TYPE_DASH /*0*/:
                    putExtra.putExtra("tw_link", 1);
                    a(tweet, putExtra);
                    break;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    putExtra.putExtra("tw_link", 3);
                    a(tweet, putExtra);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    putExtra.putExtra("tw_link", 5);
                    a(tweet, putExtra);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    putExtra.putExtra("show_tw", false);
                    putExtra.putExtra("tw_link", 4);
                    a(tweet, putExtra);
                    break;
                default:
                    putExtra.putExtra("show_tw", false);
                    break;
            }
            if (mediaEntity != null) {
                ab.a(putExtra, "media", mediaEntity, MediaEntity.a);
                putExtra.putExtra("source_tweet_id", mediaEntity.i);
            }
            if (z) {
                putExtra.putExtra("tagged_user_list", true);
            }
        }
        f contentContainer = tweetView != null ? tweetView.getContentContainer() : null;
        if (!(contentContainer instanceof m) || mediaEntity == null) {
            fragment.startActivityForResult(putExtra, 9151);
            return;
        }
        BaseMediaImageView a3 = ((m) contentContainer).a(mediaEntity);
        if (a3 != null) {
            a(fragment, a3, putExtra);
        } else {
            fragment.startActivityForResult(putExtra, 9151);
        }
    }

    private void a(Fragment fragment, BaseMediaImageView baseMediaImageView, Intent intent) {
        int i = 0;
        if (fragment instanceof TwitterListFragment) {
            ListView listView = ((TwitterListFragment) fragment).ap().a;
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            baseMediaImageView.getLocationOnScreen(iArr);
            listView.getLocationOnScreen(iArr2);
            int i2 = iArr[1];
            int height = baseMediaImageView.getHeight() + iArr[1];
            int i3 = iArr2[1];
            int height2 = listView.getHeight() + iArr2[1];
            Resources resources = fragment.getResources();
            int i4 = resources.getConfiguration().orientation == 2 ? 1 : 0;
            int dimensionPixelSize = resources.getDimensionPixelSize(2131689550);
            if (i4 != 0 || baseMediaImageView.getHeight() <= listView.getHeight()) {
                if (i2 < i3) {
                    i = (i3 - i2) + dimensionPixelSize;
                } else if (height > height2 && i4 == 0) {
                    i = (height2 - height) - dimensionPixelSize;
                }
            }
            if (i != 0) {
                listView.smoothScrollBy(-i, Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                listView.postDelayed(new vs(this, fragment, intent, baseMediaImageView), 200);
                return;
            }
            GalleryActivity.a(fragment.getActivity(), intent, baseMediaImageView);
            return;
        }
        GalleryActivity.a(fragment.getActivity(), intent, baseMediaImageView);
    }

    private void a(Tweet tweet, Intent intent) {
        if (tweet.w.a()) {
            intent.putExtra("photo_impression", "photo_with_link:impression");
        }
    }

    public void a(Tweet tweet, MediaEntity mediaEntity, TweetView tweetView) {
        Fragment fragment = (Fragment) this.b.get();
        if (fragment != null && fragment.getActivity() != null) {
            a(fragment, tweet, mediaEntity, tweetView);
        }
    }

    public void a(Tweet tweet, TwitterPlace twitterPlace, TweetView tweetView) {
        Fragment fragment = (Fragment) this.b.get();
        if (fragment != null) {
            fragment.startActivity(d.a(this.c, twitterPlace));
            TwitterScribeItem b = TwitterScribeItem.b();
            b.a = tweet.H;
            ScribeGeoPlace scribeGeoPlace = new ScribeGeoPlace();
            scribeGeoPlace.a = twitterPlace.b;
            scribeGeoPlace.b = twitterPlace.c.toString();
            b.ai.c.add(scribeGeoPlace);
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.j.g()).b(new String[]{a(tweet, "place_tag", "click")})).a(b));
        }
    }

    public void a(Tweet tweet, long j, TweetView tweetView) {
        Fragment fragment = (Fragment) this.b.get();
        if (fragment != null) {
            FragmentActivity activity = fragment.getActivity();
            if (activity != null) {
                TwitterScribeItem a = a(tweetView);
                if (this.j != null) {
                    String a2 = a(tweet, "media_tag_summary", "click");
                    bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.j.g()).a(this.c, tweet, this.f, null).b(new String[]{a2})).a(this.f)).a(a)).g(this.l));
                }
                MediaEntity a3 = tweet.w.d.a(j);
                if (a3 != null) {
                    List list = a3.p;
                    if (list.size() == 1) {
                        if (tweet.f != null) {
                            this.d.a(PromotedEvent.f, tweet.f);
                        }
                        fragment.startActivity(new Intent(activity, ProfileActivity.class).putExtra("screen_name", ((ag) list.get(0)).d));
                        return;
                    }
                    a(fragment, tweet, a3, true, tweetView);
                }
            }
        }
    }

    public void a(Tweet tweet, cgl cgl, TweetView tweetView) {
        Fragment fragment = (Fragment) this.b.get();
        if (fragment != null && fragment.getActivity() != null) {
            if (be.d(tweet)) {
                a(fragment, tweet, true);
                return;
            }
            a a = q.a(cgl).a();
            a(fragment, tweet, cgl.l(), cgl.m(), a.a(), false, false, false, true);
        }
    }

    public void b(Tweet tweet, TweetView tweetView) {
        Fragment fragment = (Fragment) this.b.get();
        if (fragment != null) {
            a(fragment, tweet, true);
        }
    }

    public void a(Fragment fragment, Tweet tweet, String str, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4) {
        ArrayList arrayList = new ArrayList();
        if (str2 != null) {
            arrayList.add(new MediaDescriptor(str2, true));
        }
        a(fragment, tweet, str, arrayList, str3, z, z2, z3, 0, 0, z4);
    }

    public void a(Fragment fragment, Tweet tweet, String str, ArrayList<MediaDescriptor> arrayList, String str2, boolean z, boolean z2, boolean z3, int i, int i2, boolean z4) {
        if (this.j != null) {
            String str3;
            if (z4) {
                str3 = "platform_forward_player_card";
            } else {
                str3 = "platform_player_card";
            }
            str3 = (String) e.b(this.g.d(), a(tweet, str3, "click"));
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.j.g()).a(this.c, tweet, this.f, null).b(new String[]{str3})).a(this.f)).g(this.l));
        }
        if (!(tweet == null || tweet.f == null)) {
            this.d.a(PromotedEvent.p, tweet.f);
        }
        if (arrayList == null || arrayList.isEmpty()) {
            if (aj.b(str)) {
                try {
                    fragment.startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(str)));
                    return;
                } catch (ActivityNotFoundException e) {
                    Toast.makeText(fragment.getActivity(), bdc.unsupported_feature, 0).show();
                    return;
                }
            }
            bbl bbl = new bbl(new InvalidDataException("No streams or player url supplied"));
            cgl aa = tweet.aa();
            if (aa != null) {
                bbl.a("cardType", aa.b()).a("cardUrl", aa.c());
            }
            bbn.a(bbl);
        } else if (be.d(tweet)) {
            new bd().a(this.f).a(new TweetAVDataSource(tweet, str)).b(true).e(bdj.a(fragment.getActivity()).k()).a(fragment.getActivity());
        } else {
            Intent intent = new Intent(fragment.getActivity(), MediaPlayerActivity.class);
            intent.putExtra("image_url", str2).putExtra("aud", z).putExtra("is_looping", z2).putExtra("simple_controls", z3).putExtra("player_url", str).putExtra("player_stream_urls", arrayList).putExtra("tweet", tweet).putExtra("video_position", i2).putExtra("video_index", i).putExtra("association", this.f).putExtra("amplify", be.d(tweet));
            fragment.startActivityForResult(intent, 9155);
        }
    }

    public void a(Fragment fragment, Tweet tweet, boolean z) {
        this.m.a(fragment.getActivity(), tweet, z, this.f);
    }

    public void a(Tweet tweet, cr crVar) {
        this.m.a(tweet, crVar, this.g.b(), this.f);
    }

    public void a(Tweet tweet, com.twitter.model.core.q qVar) {
        Fragment fragment = (Fragment) this.b.get();
        if (fragment != null) {
            fragment.startActivity(fk.a(this.c, qVar));
            Tweet tweet2 = tweet;
            a(tweet2, PromotedEvent.e, "hashtag", "search", qVar.c, a(tweet.H), null);
        }
    }

    public void a(Tweet tweet, b bVar) {
        Fragment fragment = (Fragment) this.b.get();
        if (fragment != null) {
            fragment.startActivity(fk.a(this.c, bVar));
            Tweet tweet2 = tweet;
            a(tweet2, PromotedEvent.u, "cashtag", "search", bVar.c, a(tweet.H), null);
        }
    }

    public void a(Tweet tweet, ap apVar) {
        Fragment fragment = (Fragment) this.b.get();
        if (fragment != null) {
            TwitterScribeAssociation a = a(tweet.H);
            String str = apVar.i;
            Intent putExtra = new Intent(this.c, ProfileActivity.class).putExtra("screen_name", str);
            putExtra.putExtra("association", ((TwitterScribeAssociation) new TwitterScribeAssociation(a).a(1)).a(tweet.t));
            if (tweet.f != null) {
                putExtra.putExtra("pc", cni.a(tweet.f));
            }
            fragment.startActivity(putExtra);
            a(tweet, PromotedEvent.f, TtmlNode.ANONYMOUS_REGION_ID, "mention_click", str, a, TwitterScribeItem.a(str));
        }
    }

    private void a(Tweet tweet, PromotedEvent promotedEvent, String str, String str2, String str3, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeItem twitterScribeItem) {
        if (tweet.f != null) {
            cbs.a(this.c).a(cbp.a(promotedEvent, tweet.f).a());
        }
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).a(this.c.getApplicationContext(), tweet, twitterScribeAssociation, null).b(new String[]{a(tweet, str, str2)})).g(str3)).b(twitterScribeItem)).a(this.f));
    }

    public void a(Tweet tweet, cr crVar, String str) {
        this.m.a(tweet, crVar, str, this.f);
    }

    public void a(TwitterScribeAssociation twitterScribeAssociation) {
        this.k = twitterScribeAssociation;
    }

    public void a(TweetActionType tweetActionType, TweetView tweetView) {
        if (this.i != null) {
            this.i.a(tweetActionType, tweetView.getTweet(), tweetView.getFriendshipCache(), a(tweetView), tweetView, true);
        }
    }

    public void b(Tweet tweet, cr crVar) {
        TwitterScribeAssociation twitterScribeAssociation = this.f;
        String a = TwitterScribeLog.a(new String[]{twitterScribeAssociation.a(), twitterScribeAssociation.b(), ":attribution:open_link"});
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.j.g()).a(this.c, tweet, twitterScribeAssociation, null).b(new String[]{a})).a(twitterScribeAssociation));
        a(tweet, crVar);
    }

    public void c(Tweet tweet, TweetView tweetView) {
        Fragment fragment = (Fragment) this.b.get();
        if (fragment != null && tweet != null && this.i != null) {
            FragmentActivity activity = fragment.getActivity();
            if (activity != null) {
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.j == null ? 0 : this.j.g()).a(null, tweet, this.f, null).b(new String[]{a(tweet, "quoted_tweet", "click")})).a(this.f)).a(a(tweetView))).g(this.l));
                this.i.a(tweet.y, activity);
            }
        }
    }

    public boolean a(Tweet tweet) {
        if (this.i == null || tweet == null || tweet.x == null) {
            return false;
        }
        return this.i.b(tweet);
    }

    public void a(Tweet tweet, TweetView tweetView) {
        Fragment fragment = (Fragment) this.b.get();
        FragmentActivity activity = fragment != null ? fragment.getActivity() : null;
        if (activity != null) {
            this.i.a(tweet, tweetView, activity);
        }
    }

    public void d(Tweet tweet, TweetView tweetView) {
        Fragment fragment = (Fragment) this.b.get();
        FragmentActivity activity = fragment != null ? fragment.getActivity() : null;
        if (activity != null) {
            tj.a(tweet, tweetView.getFriendshipCache(), activity, this.i, false);
        }
    }

    String a(String str) {
        return com.twitter.config.c.b(str);
    }
}
