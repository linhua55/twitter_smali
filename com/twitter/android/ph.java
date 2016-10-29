package com.twitter.android;

import android.os.Bundle;
import android.view.View;
import bbu;
import cni;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import com.twitter.android.widget.TopicView;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.widget.UserView;
import com.twitter.model.core.Tweet;
import defpackage.bdd;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class ph implements kr<View, Object> {
    final /* synthetic */ SearchResultsFragment a;
    private final Set<String> b;

    public ph(SearchResultsFragment searchResultsFragment) {
        this.a = searchResultsFragment;
        this.b = new HashSet();
    }

    public void a(View view, Object obj, Bundle bundle) {
        pb pbVar = (pb) view.getTag();
        pk pkVar = pbVar.m;
        TopicView topicView = pbVar.j;
        int i = bundle.getInt("page", 0);
        if (SearchResultsFragment.b(this.a).add(Long.valueOf((pkVar.a * 10) + ((long) i)))) {
            TwitterScribeItem a;
            TwitterScribeAssociation c = SearchResultsFragment.c(this.a);
            Tweet tweet;
            switch (pkVar.b) {
                case Util.TYPE_DASH /*0*/:
                case bdd.TweetView_mediaDivider /*23*/:
                    tweet = pbVar.a.d.getTweet();
                    a(tweet);
                    a = TwitterScribeItem.a(this.a.getActivity().getApplicationContext(), tweet, c, null);
                    a.B = bundle.getString("reason_text");
                    break;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    UserView userView = (UserView) ((GroupedRowView) view).getChildAt(0);
                    cni promotedContent = userView.getPromotedContent();
                    if (promotedContent != null && this.b.add(promotedContent.c)) {
                        SearchResultsFragment.d(this.a).a(PromotedEvent.a, promotedContent);
                    }
                    a = TwitterScribeItem.a(userView.getUserId(), promotedContent, null, "list");
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    a = TwitterScribeItem.a(pkVar.g.b, "spelling_correction");
                    break;
                case Util.TYPE_OTHER /*3*/:
                    a = TwitterScribeItem.a(pkVar.h, "related_query");
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    tweet = pbVar.a.d.getTweet();
                    a(tweet);
                    a = TwitterScribeItem.a(this.a.getActivity().getApplicationContext(), tweet, c, "news");
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    xa a2 = ((wv) pbVar.d.getAdapter()).a(i);
                    if (a2.a != 1) {
                        a = null;
                        break;
                    }
                    bbu.a(new TwitterScribeLog(SearchResultsFragment.e(this.a)).b(new String[]{this.a.B, this.a.P(), "user_gallery", null, "impression"}));
                    if (a2.e != null && this.b.add(a2.e.c)) {
                        SearchResultsFragment.f(this.a).a(PromotedEvent.a, a2.e);
                    }
                    a = TwitterScribeItem.a(a2.d, a2.e, null, "list");
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    tweet = pbVar.a.d.getTweet();
                    a(tweet);
                    a = TwitterScribeItem.a(this.a.getActivity().getApplicationContext(), tweet, c, "highlight");
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                case bdd.TwitterButton_iconLayout /*19*/:
                    a = new TwitterScribeItem();
                    a.c = 16;
                    if (!SearchResultsFragment.i(this.a)) {
                        a.v = "single";
                        a.b = this.a.D;
                        break;
                    }
                    this.a.q = topicView.getTopicType();
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    String a3 = pkVar.k.a();
                    bbu.a(new TwitterScribeLog(SearchResultsFragment.g(this.a)).b(new String[]{this.a.B, this.a.P(), a3, null, "impression"}));
                    a = TwitterScribeItem.a(pkVar.k.c, a3);
                    break;
                case bdd.TwitterButton_knockout /*18*/:
                    TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(SearchResultsFragment.j(this.a)).b(new String[]{"search:universal_top::recommendation:show"});
                    TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
                    twitterScribeItem.b = this.a.D;
                    twitterScribeItem.w = this.a.u;
                    twitterScribeItem.c = 12;
                    twitterScribeItem.x = this.a.C;
                    twitterScribeLog.a(twitterScribeItem);
                    bbu.a(twitterScribeLog);
                    a = null;
                    break;
                case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                    if (pkVar.k.b()) {
                        bbu.a(new TwitterScribeLog(SearchResultsFragment.h(this.a)).b(new String[]{this.a.B, this.a.P(), pkVar.k.a(), null, "impression"}));
                    }
                    a = null;
                    break;
                case bdd.TweetView_mediaTopMargin /*21*/:
                    Tweet tweet2 = pbVar.a.d.getTweet();
                    a(tweet2);
                    a = TwitterScribeItem.a(this.a.getActivity().getApplicationContext(), tweet2, c, pbVar.m.k.a());
                    break;
                default:
                    a = null;
                    break;
            }
            if (a != null) {
                a.g = bundle.getInt("position") + 1;
                SearchResultsFragment.k(this.a).add(a);
            }
        }
    }

    private void a(Tweet tweet) {
        cni cni = tweet.f;
        if (cni != null && this.b.add(cni.c)) {
            SearchResultsFragment.l(this.a).a(PromotedEvent.a, cni);
        }
    }
}
