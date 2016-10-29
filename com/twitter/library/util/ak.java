package com.twitter.library.util;

import android.content.res.Resources;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import com.twitter.util.al;
import com.twitter.util.t;
import defpackage.bcw;
import defpackage.bda;
import defpackage.bdc;
import defpackage.bdd;

/* compiled from: Twttr */
public class ak {
    public static int a(int i) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case bdd.TweetView_linkSelectedColor /*25*/:
            case bdd.TweetView_previewFlags /*26*/:
            case bdd.TweetView_tweetViewLayoutId /*29*/:
            case bdd.AppCompatTheme_actionModeSelectAllDrawable /*35*/:
            case bdd.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                return bcw.ic_activity_follow_tweet_default;
            case EbmlReader.TYPE_FLOAT /*5*/:
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
            case b.ShimmerFrameLayout_shape /*13*/:
            case bdd.TwitterButton_strokeWidth /*15*/:
            case bdd.TwitterButton_knockout /*18*/:
            case bdd.TwitterButton_iconLayout /*19*/:
            case bdd.AppCompatTheme_listDividerAlertDialog /*44*/:
                return bcw.ic_activity_rt_tweet_default;
            case C.ENCODING_DTS /*7*/:
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
            case b.ShimmerFrameLayout_relative_width /*11*/:
            case Atom.FULL_HEADER_SIZE /*12*/:
                return bcw.ic_activity_reply_tweet;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
            case b.ShimmerFrameLayout_tilt /*14*/:
            case Atom.LONG_HEADER_SIZE /*16*/:
            case bdd.TwitterButton_bounded /*17*/:
            case bdd.AppCompatTheme_actionModeCopyDrawable /*33*/:
            case bdd.AppCompatTheme_actionModeShareDrawable /*36*/:
                return bcw.ic_activity_heart_tweet_default;
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
            case bdd.TweetView_mediaBottomMargin /*22*/:
            case bdd.TweetView_mediaDivider /*23*/:
                return bcw.ic_activity_top_tweet;
            case bdd.TweetView_autoLink /*24*/:
                return bcw.ic_social_proof_conversation;
            case OggUtil.PAGE_HEADER_SIZE /*27*/:
                return bcw.ic_highlight_context_nearby;
            case bdd.TweetView_inlineActionBarPaddingNormal /*28*/:
                return bcw.ic_highlight_context_popular;
            case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                return bcw.ic_activity_collections_tweet;
            case bdd.AppCompatTheme_actionModeFindDrawable /*37*/:
                return bcw.ic_social_proof_recommendation_default;
            case bdd.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                return bcw.ic_activity_trending;
            case bdd.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                return bcw.ic_activity_pinned_tweet;
            case bdd.AppCompatTheme_dialogTheme /*42*/:
                return bcw.ic_activity_trending;
            case bdd.AppCompatTheme_dialogPreferredPadding /*43*/:
                return bcw.ic_activity_moments_default;
            default:
                return 0;
        }
    }

    public static String a(Resources resources, int i, String str, String str2, int i2, int i3, long j, int i4, long j2) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return resources.getString(bdc.social_both_follow, new Object[]{str});
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return resources.getString(bdc.social_both_followed_by, new Object[]{str});
            case Util.TYPE_OTHER /*3*/:
            case bdd.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                if (str2 == null) {
                    return resources.getString(bdc.social_follow_and_follow, new Object[]{str});
                } else if (i4 > 0) {
                    return resources.getQuantityString(bda.social_follow_and_follow_and_others, i4, new Object[]{str, str2, Integer.valueOf(i4)});
                } else {
                    return resources.getString(bdc.social_follow_and_follow_with_two_users, new Object[]{str, str2});
                }
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return resources.getString(bdc.social_follower_of_follower, new Object[]{str});
            case EbmlReader.TYPE_FLOAT /*5*/:
                return resources.getString(bdc.tweets_retweeted, new Object[]{str});
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return resources.getString(bdc.social_follower_and_retweets, new Object[]{str});
            case C.ENCODING_DTS /*7*/:
                return resources.getString(bdc.social_follow_and_reply, new Object[]{str});
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return resources.getString(bdc.social_follower_and_reply, new Object[]{str});
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                return resources.getString(bdc.social_follow_and_like, new Object[]{str});
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return resources.getString(bdc.social_follower_and_like, new Object[]{str});
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return resources.getString(bdc.social_reply_to_follow, new Object[]{str});
            case Atom.FULL_HEADER_SIZE /*12*/:
                return resources.getString(bdc.social_reply_to_follower, new Object[]{str});
            case b.ShimmerFrameLayout_shape /*13*/:
                return resources.getString(bdc.tweets_retweeted, new Object[]{str});
            case b.ShimmerFrameLayout_tilt /*14*/:
                return resources.getQuantityString(bda.social_like_and_retweets_count, i3, new Object[]{t.a(resources, (long) i2), t.a(resources, (long) i3)});
            case bdd.TwitterButton_strokeWidth /*15*/:
                if (i3 == 1) {
                    return resources.getString(bdc.social_retweet_and_like_count);
                }
                return resources.getQuantityString(bda.social_retweet_and_likes_count, i2, new Object[]{t.a(resources, (long) i3), t.a(resources, (long) i2)});
            case Atom.LONG_HEADER_SIZE /*16*/:
                if (str2 != null) {
                    return resources.getString(bdc.social_like_with_two_user, new Object[]{str, str2});
                }
                return resources.getString(bdc.social_like_with_user, new Object[]{str});
            case bdd.TwitterButton_bounded /*17*/:
                return resources.getQuantityString(bda.social_like_count, i2, new Object[]{t.a(resources, (long) i2)});
            case bdd.TwitterButton_knockout /*18*/:
                return resources.getString(bdc.social_retweet_with_user, new Object[]{str});
            case bdd.TwitterButton_iconLayout /*19*/:
                return resources.getQuantityString(bda.social_retweet_count, i3, new Object[]{t.a(resources, (long) i3)});
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                return resources.getString(bdc.social_top_news);
            case bdd.TweetView_mediaTopMargin /*21*/:
                return resources.getString(bdc.social_trending_topic, new Object[]{str});
            case bdd.TweetView_mediaBottomMargin /*22*/:
                return resources.getString(bdc.top_tweet);
            case bdd.TweetView_mediaDivider /*23*/:
                if (al.c(resources, j2) == null) {
                    return resources.getString(bdc.highlight_tweet_today);
                }
                return resources.getString(bdc.highlight_tweet, new Object[]{r2});
            case bdd.TweetView_autoLink /*24*/:
                if (i4 == 0) {
                    if (str2 == null) {
                        return resources.getString(bdc.social_conversation_tweet, new Object[]{str});
                    }
                    return resources.getString(bdc.social_conversation_tweet_two, new Object[]{str, str2});
                } else if (str2 == null) {
                    return resources.getQuantityString(bda.in_reply_to_name_and_count, i4, new Object[]{str, Integer.valueOf(i4), " "});
                } else {
                    return resources.getQuantityString(bda.social_proof_in_reply_multiple_names_and_count, i4, new Object[]{str, str2, Integer.valueOf(i4)});
                }
            case bdd.TweetView_linkSelectedColor /*25*/:
                return resources.getString(bdc.social_context_mutual_follow);
            case bdd.TweetView_previewFlags /*26*/:
                return resources.getString(bdc.social_following);
            case OggUtil.PAGE_HEADER_SIZE /*27*/:
                return resources.getString(bdc.highlight_context_nearby);
            case bdd.TweetView_inlineActionBarPaddingNormal /*28*/:
                return resources.getString(bdc.highlight_context_popular);
            case bdd.TweetView_tweetViewLayoutId /*29*/:
                return resources.getString(bdc.social_who_to_follow);
            case bdd.AppCompatTheme_actionModeCopyDrawable /*33*/:
                return resources.getQuantityString(bda.social_like_count_with_user, i2, new Object[]{str, Integer.valueOf(i2)});
            case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
            case bdd.AppCompatTheme_actionModeSelectAllDrawable /*35*/:
            case bdd.AppCompatTheme_actionModeShareDrawable /*36*/:
            case bdd.AppCompatTheme_actionModeFindDrawable /*37*/:
            case bdd.AppCompatTheme_dialogPreferredPadding /*43*/:
                return str;
            case bdd.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                return resources.getString(bdc.social_promoted_trend, new Object[]{str});
            case bdd.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                return resources.getString(bdc.pinned_tweet);
            case bdd.AppCompatTheme_dialogTheme /*42*/:
                return resources.getString(bdc.social_view_count_highlight, new Object[]{t.a(resources, j, true)});
            case bdd.AppCompatTheme_listDividerAlertDialog /*44*/:
                return resources.getString(bdc.social_you_retweeted);
            default:
                return null;
        }
    }

    public static String b(Resources resources, int i, String str, String str2, int i2, int i3, long j, int i4, long j2) {
        switch (i) {
            case Util.TYPE_OTHER /*3*/:
                return resources.getString(bdc.social_follow_and_follow_accessibility_description, new Object[]{str});
            case EbmlReader.TYPE_FLOAT /*5*/:
                return resources.getString(bdc.tweets_retweeted_accessibility_description, new Object[]{str});
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return resources.getString(bdc.social_follower_and_retweets_accessibility_description, new Object[]{str});
            case C.ENCODING_DTS /*7*/:
                return resources.getString(bdc.social_follow_and_reply_accessibility_description, new Object[]{str});
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return resources.getString(bdc.social_follower_and_reply_accessibility_description, new Object[]{str});
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                return resources.getString(bdc.social_follow_and_like_accessibility_description, new Object[]{str});
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return resources.getString(bdc.social_follower_and_like_accessibility_description, new Object[]{str});
            case b.ShimmerFrameLayout_shape /*13*/:
                return resources.getString(bdc.tweets_retweeted_accessibility_description, new Object[]{str});
            case Atom.LONG_HEADER_SIZE /*16*/:
                if (str2 != null) {
                    return resources.getString(bdc.social_like_with_two_user_accessibility_description, new Object[]{str, str2});
                }
                return resources.getString(bdc.social_like_with_user_accessibility_description, new Object[]{str});
            case bdd.TwitterButton_knockout /*18*/:
                return resources.getString(bdc.social_retweet_with_user_accessibility_description, new Object[]{str});
            case bdd.AppCompatTheme_actionModeCopyDrawable /*33*/:
                return resources.getQuantityString(bda.social_like_count_with_user_accessibility_description, i2, new Object[]{str, Integer.valueOf(i2)});
            default:
                return a(resources, i, str, str2, i2, i3, j, i4, j2);
        }
    }
}
