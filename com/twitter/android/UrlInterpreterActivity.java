package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.UriMatcher;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.TaskStackBuilder;
import android.support.v4.media.TransportMediator;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.android.ads.AdsCompanionWebViewActivity;
import com.twitter.android.alerts.landing.AlertLandingActivity;
import com.twitter.android.analytics.TweetAnalyticsWebViewActivity;
import com.twitter.android.avatars.b;
import com.twitter.android.client.by;
import com.twitter.android.composer.ComposerActivity;
import com.twitter.android.composer.aw;
import com.twitter.android.dm.m;
import com.twitter.android.dm.o;
import com.twitter.android.dm.r;
import com.twitter.android.eventtimelines.tv.show.TvShowActivity;
import com.twitter.android.highlights.HighlightsStoriesActivity;
import com.twitter.android.livevideo.landing.LiveVideoLandingActivity;
import com.twitter.android.livevideo.landing.a;
import com.twitter.android.media.stickers.timeline.StickerTimelineActivity;
import com.twitter.android.moments.ui.fullscreen.MomentsFullScreenPagerActivity;
import com.twitter.android.moments.ui.guide.ModernGuideActivity;
import com.twitter.android.moments.ui.guide.ai;
import com.twitter.android.news.NewsActivity;
import com.twitter.android.news.NewsDetailActivity;
import com.twitter.android.people.PeopleDiscoveryActivity;
import com.twitter.android.profilecompletionmodule.ProfileCompletionFlowActivity;
import com.twitter.android.settings.AccessibilityActivity;
import com.twitter.android.settings.NotificationsTimelineSettingsActivity;
import com.twitter.android.settings.PrivacyAndContentActivity;
import com.twitter.android.settings.SettingsActivity;
import com.twitter.android.settings.TimelineSettingsActivity;
import com.twitter.android.smartfollow.g;
import com.twitter.android.trends.TrendsPlusActivity;
import com.twitter.android.util.AppEventTrack;
import com.twitter.android.util.ak;
import com.twitter.android.util.al;
import com.twitter.android.util.bi;
import com.twitter.android.util.u;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.t;
import com.twitter.app.lists.ListTabActivity;
import com.twitter.app.lists.c;
import com.twitter.app.main.MainActivity;
import com.twitter.app.users.q;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.dh;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.aq;
import com.twitter.model.core.bf;
import com.twitter.model.stratostore.SourceLocation;
import com.twitter.util.aj;
import com.twitter.util.ao;
import com.twitter.util.collection.ar;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import com.twitter.util.n;
import com.twitter.util.object.e;
import com.twitter.util.x;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.buv;
import defpackage.bym;
import defpackage.cbj;
import defpackage.cbx;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class UrlInterpreterActivity extends TwitterFragmentActivity implements na {
    public static final Pattern a;
    public static final Pattern b;
    public static final Pattern c;
    private static final UriMatcher d;
    private static final UriMatcher e;
    private static final UriMatcher f;
    private static final Set<Integer> g;
    private static final Set<Integer> h;
    private static final Set<Integer> i;
    private TwitterScribeAssociation j;
    private boolean k;
    private boolean l;

    static {
        a = Pattern.compile("(www\\.)?twitter.com");
        b = Pattern.compile("https?");
        c = Pattern.compile("twitter");
        d = new UriMatcher(-1);
        e = new UriMatcher(-1);
        f = new UriMatcher(-1);
        e.addURI("account", null, mx.AppCompatTheme_spinnerStyle);
        e.addURI("bouncer", null, 139);
        e.addURI("custom_timeline", null, 119);
        e.addURI("dm_conversation", null, 131);
        e.addURI("events", "tv_show/*", 151);
        e.addURI("explore", null, 120);
        e.addURI("flow", "ad_hoc", 115);
        e.addURI("flow", "add_phone", 136);
        e.addURI("flow", "setup_profile", 150);
        e.addURI("follow", null, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        e.addURI("followers", "verified", mx.AppCompatTheme_ratingBarStyleSmall);
        e.addURI("front", null, 113);
        e.addURI("hashtag", "*", mx.AppCompatTheme_buttonStyleSmall);
        e.addURI("intent", "favorite", 125);
        e.addURI("intent", "follow", TransportMediator.KEYCODE_MEDIA_RECORD);
        e.addURI("intent", "like", 125);
        e.addURI("intent", "retweet", 125);
        e.addURI("interest_picker", null, 114);
        e.addURI("internal", "special_events/world_cup_2014/choose_team_full", mx.AppCompatTheme_checkedTextViewStyle);
        e.addURI("internal", "special_events/world_cup_2014/choose_team_lite", mx.AppCompatTheme_editTextStyle);
        e.addURI("internal", "special_events/world_cup_2014/find_friends", mx.AppCompatTheme_radioButtonStyle);
        e.addURI("internal", "special_events/world_cup_2014/opt_in", mx.AppCompatTheme_checkboxStyle);
        e.addURI("internal", "who_to_follow", 13);
        e.addURI("internal", "worldcup", mx.AppCompatTheme_ratingBarStyleIndicator);
        e.addURI("list", null, 117);
        e.addURI("login", null, 122);
        e.addURI("login-token", null, 122);
        e.addURI("mentions", null, 116);
        e.addURI("moment", null, 138);
        e.addURI("moments", null, 142);
        e.addURI("moments", "guide", 142);
        e.addURI("news", null, 137);
        e.addURI("news", "*", 146);
        e.addURI("photo", null, TransportMediator.KEYCODE_MEDIA_PAUSE);
        e.addURI("post", null, TransportMediator.KEYCODE_MEDIA_PLAY);
        e.addURI("profiles", "edit", 144);
        e.addURI("profiles", "edit/birthday", 145);
        e.addURI("quote", null, TransportMediator.KEYCODE_MEDIA_PLAY);
        e.addURI("search", null, 121);
        e.addURI("session", "new", 100);
        e.addURI("settings", null, mx.AppCompatTheme_switchStyle);
        e.addURI("settings", "notifications_tab", 132);
        e.addURI("share_via_dm", null, 140);
        e.addURI("signup", null, 112);
        e.addURI(NotificationCompatApi21.CATEGORY_STATUS, null, 124);
        e.addURI("storystream", null, 129);
        e.addURI("timeline", null, 123);
        e.addURI("tweet", null, 124);
        e.addURI("unfollow", null, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        e.addURI("user", null, 118);
        e.addURI("user", "media", 147);
        e.addURI("user", "tweets", 157);
        e.addURI("who_to_follow", "interests/*", 133);
        e.addURI("settings", "timeline", 45);
        e.addURI("settings", "accessibility", 74);
        e.addURI("people_discovery_modules", null, 162);
        e.addURI("connect_people", null, 155);
        e.addURI("settings", "backup_code", 156);
        e.addURI("stickers", "*", 158);
        e.addURI("stickers", "*/top", 158);
        e.addURI("stickers", "*/all", 158);
        e.addURI("stickers", "*/live", 158);
        e.addURI("alerts", "landing_page/#", 160);
        e.addURI("live", "timeline/*", 161);
        d.addURI("analytics.twitter.com", "user/*/tweet/*", 81);
        d.addURI("ads.twitter.com", "mobile/*/accounts", 84);
        d.addURI("ads.twitter.com", "mobile/*/accounts/*", 85);
        d.addURI("ads.twitter.com", "mobile/*/accounts/*/*", 85);
        d.addURI("ads.twitter.com", "mobile/*/accounts/*/*/*", 85);
        d.addURI("ads.twitter.com", "mobile/*/accounts/*/*/*/*", 85);
        d.addURI("ads.twitter.com", "mobile/*/accounts/*/*/*/*/*", 85);
        d.addURI("*", "i/app_link", 75);
        d.addURI("*", "i/redirect", 53);
        d.addURI("*", "i/cricket", 79);
        d.addURI("*", "i/cricket/*", 80);
        d.addURI("*", "i/highlights", 129);
        d.addURI("*", "i/t/special_events/world_cup_2014/opt_in", 64);
        d.addURI("*", "i/t/special_events/world_cup_2014/choose_team_full", 65);
        d.addURI("*", "i/t/special_events/world_cup_2014/choose_team_lite", 66);
        d.addURI("*", "i/t/special_events/world_cup_2014/find_friends", 67);
        d.addURI("*", "i/t/worldcup", 69);
        d.addURI("*", "i/notifications", 82);
        d.addURI("*", "i/connect", 83);
        d.addURI("*", "i/verified_followers", 77);
        d.addURI("*", "i/soccer/*", 134);
        d.addURI("*", "i/soccer/*/*", 135);
        d.addURI("*", "i/moments", 148);
        d.addURI("*", "i/moments/*", 141);
        d.addURI("*", "hashtag/*", 58);
        d.addURI("*", "search", 1);
        d.addURI("*", "search/users/*", 2);
        d.addURI("*", "search/realtime/*", 3);
        d.addURI("*", "search/links/*", 4);
        d.addURI("*", "search/*/grid/*", 6);
        d.addURI("*", "search/*", 5);
        d.addURI("*", "compose/tweet", 7);
        d.addURI("*", "compose/dm", 8);
        d.addURI("*", "compose/dm/*", 9);
        d.addURI("*", "compose/gifs", 153);
        d.addURI("*", "direct_messages/create/*", 57);
        d.addURI("*", "open_play_store", 46);
        d.addURI("*", "enable_device_follow", 47);
        d.addURI("*", "follow_user/#", 48);
        d.addURI("*", "mentions", 10);
        d.addURI("*", "messages", 11);
        d.addURI("*", "messages/media/*", 154);
        d.addURI("*", "direct_messages", 56);
        d.addURI("*", "messages/compose", 86);
        d.addURI("*", "messages/*/#", 12);
        d.addURI("*", "messages/*", 51);
        d.addURI("*", "who_to_follow", 13);
        d.addURI("*", "who_to_follow/suggestions", 14);
        d.addURI("*", "who_to_follow/interests", 15);
        d.addURI("*", "who_to_follow/interests/*", 16);
        d.addURI("*", "who_to_follow/import", 17);
        d.addURI("*", "who_to_follow/search/*", 18);
        d.addURI("*", "lists", 19);
        d.addURI("*", "favorites", 20);
        d.addURI("*", "likes", 20);
        d.addURI("*", "find_friends", 41);
        d.addURI("*", "turn_on_push", 44);
        d.addURI("*", "settings/profile", 21);
        d.addURI("*", "settings/accessibility", 74);
        d.addURI("*", "similar_to/*", 22);
        d.addURI("*", "share", 36);
        d.addURI("*", "intent/tweet", 37);
        d.addURI("*", "intent/user", 38);
        d.addURI("*", "intent/retweet", 62);
        d.addURI("*", "intent/favorite", 63);
        d.addURI("*", "intent/like", 63);
        d.addURI("*", "intent/follow", 76);
        d.addURI("*", "intent/session", 40);
        d.addURI("*", "session/new", 40);
        d.addURI("*", "login", 40);
        d.addURI("*", "signup", 39);
        d.addURI("*", "people_timeline", 43);
        d.addURI("*", "settings/devices/create", 49);
        d.addURI("*", "start_phone_ownership_verification", 71);
        d.addURI("*", "account/confirm_email_reset", 78);
        d.addURI("*", "download", 55);
        d.addURI("*", "home", 68);
        d.addURI("*", "i/stickers/*", 159);
        d.addURI("*", "i/stickers/*/top", 159);
        d.addURI("*", "i/stickers/*/live", 159);
        d.addURI("*", "i/stickers/*/all", 159);
        d.addURI("*", "i/live/*", 161);
        d.addURI("*", "*/status/#/photo/#/large", 59);
        d.addURI("*", "*/status/#/photo/#", 23);
        d.addURI("*", "*/status/#/video/#", 70);
        d.addURI("*", "*/status/#", 23);
        d.addURI("*", "*/statuses/#", 54);
        d.addURI("*", "*/lists", 24);
        d.addURI("*", "*/lists/*", 25);
        d.addURI("*", "*/following", 26);
        d.addURI("*", "*/following/*", 27);
        d.addURI("*", "*/followers", 28);
        d.addURI("*", "*/followers_you_follow", 29);
        d.addURI("*", "*/favorites", 30);
        d.addURI("*", "*/likes", 30);
        d.addURI("*", "*/activity", 31);
        d.addURI("*", "*/alerts", 50);
        d.addURI("*", "*/with_replies", 72);
        d.addURI("*", "*/media", 73);
        d.addURI("*", "*/tweets", 87);
        d.addURI("*", "*/timelines/*", 52);
        d.addURI("*", "*/*/members", 33);
        d.addURI("*", "*/*/subscribers", 34);
        d.addURI("*", "*", 35);
        d.addURI("*", null, 88);
        f.addURI("profiles", "vine/enable_display", 149);
        f.addURI("settings", "auto_mute", 152);
        i = ar.a(Integer.valueOf(78), Integer.valueOf(20), Integer.valueOf(76), Integer.valueOf(38), Integer.valueOf(31), Integer.valueOf(50), Integer.valueOf(30), Integer.valueOf(28), Integer.valueOf(29), Integer.valueOf(26), Integer.valueOf(73), Integer.valueOf(35), Integer.valueOf(72), Integer.valueOf(87), Integer.valueOf(88));
        g = ar.a(Integer.valueOf(55), Integer.valueOf(57), Integer.valueOf(8), Integer.valueOf(9), Integer.valueOf(7), Integer.valueOf(56), Integer.valueOf(20), Integer.valueOf(41), Integer.valueOf(37), Integer.valueOf(38), Integer.valueOf(19), Integer.valueOf(10), Integer.valueOf(11), Integer.valueOf(12), Integer.valueOf(43), Integer.valueOf(1), Integer.valueOf(4), Integer.valueOf(3), Integer.valueOf(5), Integer.valueOf(6), Integer.valueOf(2), Integer.valueOf(21), Integer.valueOf(36), Integer.valueOf(22), Integer.valueOf(31), Integer.valueOf(50), Integer.valueOf(52), Integer.valueOf(30), Integer.valueOf(28), Integer.valueOf(29), Integer.valueOf(26), Integer.valueOf(27), Integer.valueOf(24), Integer.valueOf(25), Integer.valueOf(35), Integer.valueOf(33), Integer.valueOf(34), Integer.valueOf(59), Integer.valueOf(23), Integer.valueOf(54), Integer.valueOf(13), Integer.valueOf(17), Integer.valueOf(15), Integer.valueOf(16), Integer.valueOf(18), Integer.valueOf(14), Integer.valueOf(58), Integer.valueOf(64), Integer.valueOf(67), Integer.valueOf(65), Integer.valueOf(66), Integer.valueOf(68), Integer.valueOf(62), Integer.valueOf(63), Integer.valueOf(72), Integer.valueOf(73), Integer.valueOf(75), Integer.valueOf(76), Integer.valueOf(51), Integer.valueOf(78), Integer.valueOf(79), Integer.valueOf(80), Integer.valueOf(81), Integer.valueOf(84), Integer.valueOf(85), Integer.valueOf(135), Integer.valueOf(134), Integer.valueOf(70), Integer.valueOf(87), Integer.valueOf(159), Integer.valueOf(88));
        h = ar.g();
    }

    public static boolean a(Uri uri, boolean z) {
        return a(uri, true, z) != -1 || d(uri);
    }

    private static boolean d(Uri uri) {
        return uri != null && uri.getScheme() != null && b.matcher(uri.getScheme().toLowerCase()).matches() && uri.getAuthority() != null && a.matcher(uri.getAuthority().toLowerCase()).matches() && uri.getPathSegments().isEmpty() && "compose".equals(uri.getQueryParameter("action"));
    }

    private static int a(Uri uri, boolean z, boolean z2) {
        String str = null;
        String scheme = uri != null ? uri.getScheme() : null;
        if (scheme == null) {
            return -1;
        }
        scheme = scheme.toLowerCase();
        if (uri.getAuthority() != null) {
            str = uri.getAuthority().toLowerCase();
        }
        int a = a(uri, scheme, str, z);
        if (a == -1) {
            return a(uri, scheme, z2);
        }
        return a;
    }

    private static int a(Uri uri, String str, String str2, boolean z) {
        if (b.matcher(str).matches()) {
            if (!z) {
                return d.match(uri);
            }
            if (a.matcher((CharSequence) e.a((Object) str2)).matches()) {
                return d.match(uri);
            }
        }
        return -1;
    }

    private static int a(Uri uri, String str, boolean z) {
        if (!c.matcher(str).matches()) {
            return -1;
        }
        int match = e.match(uri);
        if (match == -1 && z) {
            return f.match(uri);
        }
        return match;
    }

    public void b(Bundle bundle, t tVar) {
        this.j = (TwitterScribeAssociation) new TwitterScribeAssociation().b("permalink");
        boolean z = bundle != null && bundle.getBoolean("is_processing_redirect");
        this.k = z;
        Intent intent = getIntent();
        Uri data = intent.getData();
        this.l = intent.getBooleanExtra("is_from_umf_prompt", false);
        if (!this.k && data != null) {
            b(ao.c(data));
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("is_processing_redirect", this.k);
    }

    public t a(Bundle bundle, t tVar) {
        tVar.b(26);
        tVar.c(false);
        tVar.a(false);
        tVar.a(0);
        return tVar;
    }

    protected void b(Uri uri) {
        Uri b = b(uri, ab().d());
        if (b != null) {
            a(uri, b, h.contains(Integer.valueOf(d.match(b))));
        } else {
            c(uri).b(new wt(this)).d(new ws(this)).c(new wr(this));
        }
    }

    protected j<Intent> c(Uri uri) {
        Context applicationContext = getApplicationContext();
        bg aa = aa();
        Session ab = ab();
        long g = ab.g();
        Object e = ab.e();
        TwitterUser f = ab.f();
        boolean d = ab.d();
        List pathSegments = uri.getPathSegments();
        int a = a(uri, false, this.l);
        Uri data = getIntent().getData();
        if (data != null) {
            AppEventTrack.a(getApplicationContext(), ao.c(data));
        }
        Object obj = null;
        String queryParameter;
        CharSequence queryParameter2;
        String queryParameter3;
        Uri uri2;
        long a2;
        Session b;
        Intent a3;
        Intent intent;
        switch (a) {
            case WireMessage.WIRE_CHAT /*1*/:
                CharSequence queryParameter4 = uri.getQueryParameter("q");
                if (aj.b(queryParameter4)) {
                    queryParameter = uri.getQueryParameter("src");
                    if (aj.a((CharSequence) queryParameter)) {
                        queryParameter = "api_call";
                    }
                    obj = new Intent(this, SearchActivity.class).putExtra("query", queryParameter4).putExtra("q_source", queryParameter);
                    queryParameter2 = uri.getQueryParameter("event_id");
                    if (aj.b(queryParameter2)) {
                        obj.putExtra("event_id", queryParameter2).putExtra("from_push", true).putExtra("terminal", true);
                        break;
                    }
                }
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
            case mx.TwitterButton_knockout /*18*/:
                obj = new Intent(this, SearchActivity.class).putExtra("query", (String) pathSegments.get(2)).putExtra("search_type", 2).putExtra("q_source", "api_call");
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                obj = new Intent(this, SearchActivity.class).putExtra("query", (String) pathSegments.get(2)).putExtra("realtime", true).putExtra("q_source", "api_call");
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                obj = new Intent(this, SearchActivity.class).putExtra("query", (String) pathSegments.get(2)).putExtra("q_source", "api_call");
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                obj = new Intent(this, SearchActivity.class).putExtra("query", (String) pathSegments.get(1)).putExtra("q_source", "api_call");
                break;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                aw a4 = aw.a();
                queryParameter3 = uri.getQueryParameter(NotificationCompatApi21.CATEGORY_STATUS);
                if (aj.b((CharSequence) queryParameter3)) {
                    a4.a(queryParameter3, null);
                }
                CharSequence queryParameter5 = uri.getQueryParameter("cursor");
                if (aj.b(queryParameter5)) {
                    int parseInt = Integer.parseInt(queryParameter5);
                    a4.a(new int[]{parseInt, parseInt});
                }
                obj = a4.d(67108864).a((Context) this);
                break;
            case ControlMessage.CONTROL_BAN /*8*/:
                obj = r.a(this);
                break;
            case mx.TwitterEditText_messageSize /*9*/:
            case mx.AppCompatTheme_activityChooserViewStyle /*57*/:
                g = aj.a(uri.getQueryParameter("user_id"), -1);
                if (a != 57 || g != -1) {
                    obj = r.a((Context) this, new o().a(g != -1 ? new long[]{g} : null).d());
                    break;
                }
                obj = new Intent(this, WebViewActivity.class).setData(uri);
                break;
                break;
            case mx.TwitterEditText_messageStyle /*10*/:
            case 116:
                obj = ak.a(this, f, false, true);
                break;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
            case mx.AppCompatTheme_dividerHorizontal /*56*/:
                obj = r.c(this).setData(new Builder().scheme("twitter").authority("messages").build());
                break;
            case mx.TwitterEditText_characterCounterColor /*12*/:
                if (aj.a((String) pathSegments.get(2), -1) == -1) {
                    obj = c();
                    break;
                }
                obj = r.a((Context) this, new o().a(new long[]{aj.a((String) pathSegments.get(2), -1)}).d());
                break;
            case mx.TwitterEditText_characterCounterMode /*13*/:
            case mx.TwitterButton_labelMargin /*14*/:
                obj = f(uri);
                break;
            case mx.TwitterButton_strokeWidth /*15*/:
                obj = new Intent(this, CategoriesActivity.class);
                break;
            case mx.TwitterButton_nodpiBaseIconName /*16*/:
                obj = b((String) pathSegments.get(2));
                break;
            case mx.TwitterButton_bounded /*17*/:
                obj = new q().a(7).f("url_interpreter").a(true).a((Context) this);
                break;
            case mx.TwitterButton_iconLayout /*19*/:
                obj = new Intent(this, MainActivity.class).setData(new Builder().scheme("twitter").authority("list").build());
                break;
            case mx.TweetView_mediaPlaceholderDrawable /*20*/:
                obj = new Intent(this, ProfileActivity.class).putExtra("user_id", g).putExtra("start_page", ProfileActivity.d.toString()).putExtra("association", this.j);
                break;
            case mx.TweetView_mediaTopMargin /*21*/:
            case 144:
                obj = a(uri, g);
                break;
            case mx.TweetView_mediaBottomMargin /*22*/:
                obj = new Intent(this, ProfileActivity.class).setData(new Builder().scheme("twitter").authority("user").appendQueryParameter("screen_name", (String) pathSegments.get(1)).build()).putExtra("association", this.j);
                break;
            case mx.TweetView_mediaDivider /*23*/:
            case mx.AppCompatTheme_borderlessButtonStyle /*54*/:
            case mx.AppCompatTheme_listPreferredItemHeightSmall /*70*/:
                obj = new Intent(this, TweetActivity.class).setData(new Builder().scheme("twitter").authority("tweet").appendQueryParameter("status_id", (String) pathSegments.get(2)).build());
                break;
            case mx.TweetView_autoLink /*24*/:
                obj = c.a().b(0).a((String) pathSegments.get(0)).a(true).a((Context) this);
                break;
            case mx.TweetView_linkSelectedColor /*25*/:
                obj = new Intent(this, ListTabActivity.class).putExtra("screen_name", (String) pathSegments.get(0)).putExtra("slug", (String) pathSegments.get(2));
                break;
            case mx.TweetView_previewFlags /*26*/:
            case mx.TweetView_mediaTagIcon /*27*/:
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
            case mx.TweetView_tweetViewLayoutId /*29*/:
            case mx.AppCompatTheme_actionModeCloseDrawable /*31*/:
            case mx.AppCompatTheme_buttonBarStyle /*50*/:
            case mx.AppCompatTheme_listPreferredItemPaddingLeft /*72*/:
            case mx.AppCompatTheme_listPreferredItemPaddingRight /*73*/:
            case mx.AppCompatTheme_colorControlHighlight /*87*/:
                obj = c((String) pathSegments.get(0));
                switch (a) {
                    case mx.TweetView_previewFlags /*26*/:
                        uri2 = ProfileActivity.i;
                        break;
                    case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                        uri2 = ProfileActivity.h;
                        break;
                    case mx.AppCompatTheme_listPreferredItemPaddingRight /*73*/:
                        uri2 = ProfileActivity.c;
                        break;
                    case mx.AppCompatTheme_colorControlHighlight /*87*/:
                        uri2 = ProfileActivity.b;
                        break;
                    default:
                        uri2 = null;
                        break;
                }
                if (uri2 != null) {
                    obj.putExtra("start_page", uri2.toString());
                    break;
                }
                break;
            case mx.AppCompatTheme_actionModeSplitBackground /*30*/:
                obj = new Intent(this, ProfileActivity.class).putExtra("start_page", ProfileActivity.d.toString()).putExtra("association", this.j).setData(new Builder().scheme("twitter").authority("favorites").appendQueryParameter("screen_name", (String) pathSegments.get(0)).build());
                break;
            case mx.AppCompatTheme_actionModeCopyDrawable /*33*/:
                obj = new Intent(this, ListTabActivity.class).putExtra("screen_name", (String) pathSegments.get(0)).putExtra("slug", (String) pathSegments.get(1)).putExtra("tab", "list_members");
                break;
            case mx.AppCompatTheme_actionModePasteDrawable /*34*/:
                obj = new Intent(this, ListTabActivity.class).putExtra("screen_name", (String) pathSegments.get(0)).putExtra("slug", (String) pathSegments.get(1));
                break;
            case mx.AppCompatTheme_actionModeSelectAllDrawable /*35*/:
                queryParameter = (String) pathSegments.get(0);
                List a5 = by.a((Context) this).a();
                if (a5 != null && a5.contains(queryParameter)) {
                    obj = new Intent(this, WebViewActivity.class).setData(uri);
                    break;
                }
                obj = c(queryParameter);
                break;
            case mx.AppCompatTheme_actionModeShareDrawable /*36*/:
            case mx.AppCompatTheme_actionModeFindDrawable /*37*/:
                obj = a(uri, uri.getQueryParameter("text"));
                break;
            case mx.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
            case 118:
                g = aj.a((String) e.b(uri.getQueryParameter("user_id"), uri.getQueryParameter("id")), 0);
                String queryParameter6 = uri.getQueryParameter("screen_name");
                Object obj2 = (!"1".equals(uri.getQueryParameter("df")) || queryParameter6 == null) ? null : 1;
                obj = ProfileActivity.a(this, g, queryParameter6, null, this.j, -1, null, null);
                if (obj2 != null) {
                    obj.putExtra("start_page", ProfileActivity.k.toString());
                    break;
                }
                break;
            case mx.AppCompatTheme_actionModePopupWindowStyle /*39*/:
            case 112:
                if (!d) {
                    obj = new Intent(this, FlowActivity.class).putExtra("flow_data", bi.a(this).a(false, false, true));
                    break;
                }
                obj = c();
                break;
            case mx.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
            case mx.AppCompatTheme_buttonStyle /*100*/:
                al.a(applicationContext, uri);
                a2 = aj.a(uri.getQueryParameter("user_id"), -1);
                if (a2 > 0) {
                    Session b2 = aa.b(a2);
                    if (b2.g() == a2) {
                        aa.c(b2);
                        obj = new Intent(this, MainActivity.class).setFlags(67108864);
                        break;
                    }
                }
                obj = new Intent(this, LoginActivity.class);
                queryParameter2 = uri.getQueryParameter("screen_name");
                if (aj.b(queryParameter2)) {
                    obj.putExtra("screen_name", queryParameter2);
                }
                if (!d) {
                    obj.putExtra("android.intent.extra.INTENT", new Intent(this, MainActivity.class));
                    break;
                }
                startActivityForResult(obj, 2);
                obj = null;
                break;
            case mx.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                obj = new Intent(this, AddressbookHelperActivity.class).setAction("find_friends").putExtra("extra_scribe_page", "app").setFlags(335544320);
                break;
            case mx.AppCompatTheme_dialogPreferredPadding /*43*/:
                obj = f(uri);
                break;
            case mx.AppCompatTheme_listDividerAlertDialog /*44*/:
                if (d && PushRegistration.c(this)) {
                    PushRegistration.a((String) e.a(e));
                    PushRegistration.d(this);
                    break;
                }
            case mx.AppCompatTheme_actionDropDownStyle /*45*/:
                obj = new Intent(this, TimelineSettingsActivity.class).putExtra("extra_account_id", ab.g()).putExtra("source", uri.getQueryParameter("source"));
                break;
            case mx.AppCompatTheme_dropdownListPreferredItemHeight /*46*/:
                obj = M().b((Context) this);
                break;
            case mx.AppCompatTheme_spinnerDropDownItemStyle /*47*/:
                queryParameter2 = n.b(uri.getQueryParameter("screen_name"), "UTF8");
                if (!aj.a(queryParameter2)) {
                    obj = new Intent(this, ProfileActivity.class).putExtra("start_page", ProfileActivity.k.toString()).putExtra("association", this.j).putExtra("screen_name", queryParameter2);
                    break;
                }
                break;
            case mx.AppCompatTheme_homeAsUpIndicator /*48*/:
                obj = a((String) pathSegments.get(1), null);
                break;
            case mx.AppCompatTheme_actionButtonStyle /*49*/:
                new FollowFlowController("add_phone_prompt").a(false).e(true).c((Activity) this);
                break;
            case mx.AppCompatTheme_buttonBarButtonStyle /*51*/:
                g = aj.a(uri.getQueryParameter("user_id"), -1);
                if (g != -1) {
                    b = aa.b(g);
                    if (b.d()) {
                        aa.c(b);
                        obj = r.a((Context) this, ((o) new o().b((String) pathSegments.get(1)).b(true)).d());
                        break;
                    }
                }
                if (!d) {
                    io.c(this);
                    break;
                }
                obj = r.a((Context) this, ((o) new o().b((String) pathSegments.get(1)).b(true)).d());
                break;
            case mx.AppCompatTheme_selectableItemBackground /*52*/:
            case 119:
                queryParameter2 = uri.getQueryParameter("timeline_id");
                if (!aj.b(queryParameter2)) {
                    queryParameter2 = uri.getLastPathSegment();
                }
                if (aj.b(queryParameter2)) {
                    obj = new Intent(this, CollectionPermalinkActivity.class).putExtra("type", 27).putExtra("timeline_tag", "custom-" + queryParameter2);
                    break;
                }
                break;
            case mx.AppCompatTheme_dividerVertical /*55*/:
                obj = new Intent("android.intent.action.VIEW", Uri.parse(x.a((Context) this) ? x.a(this, getPackageName()) : x.b(this, getPackageName())));
                break;
            case mx.AppCompatTheme_toolbarStyle /*58*/:
                obj = new Intent(this, SearchActivity.class).putExtra("query", '#' + ((String) pathSegments.get(1))).putExtra("q_source", uri.getQueryParameter("src"));
                break;
            case mx.AppCompatTheme_toolbarNavigationButtonStyle /*59*/:
                if (pathSegments != null) {
                    obj = new Intent(this, GalleryActivity.class).putExtra("statusId", Long.parseLong((String) pathSegments.get(2)));
                    break;
                }
                break;
            case mx.AppCompatTheme_editTextColor /*62*/:
                obj = a(uri, 62);
                break;
            case mx.AppCompatTheme_editTextBackground /*63*/:
                obj = a(uri, 63);
                break;
            case mx.AppCompatTheme_imageButtonStyle /*64*/:
            case mx.AppCompatTheme_textAppearanceSearchResultTitle /*65*/:
            case mx.AppCompatTheme_textAppearanceSearchResultSubtitle /*66*/:
            case mx.AppCompatTheme_textColorSearchUrl /*67*/:
            case mx.AppCompatTheme_listPreferredItemHeight /*69*/:
            case mx.AppCompatTheme_checkboxStyle /*102*/:
            case mx.AppCompatTheme_checkedTextViewStyle /*103*/:
            case mx.AppCompatTheme_editTextStyle /*104*/:
            case mx.AppCompatTheme_radioButtonStyle /*105*/:
            case mx.AppCompatTheme_ratingBarStyleIndicator /*107*/:
                new FollowFlowController("referral_campaign").e(false).c((Activity) this);
                break;
            case mx.AppCompatTheme_searchViewStyle /*68*/:
                queryParameter = uri.getQueryParameter(NotificationCompatApi21.CATEGORY_STATUS);
                if (queryParameter == null) {
                    obj = c();
                    break;
                }
                obj = a(uri, queryParameter);
                break;
            case mx.AppCompatTheme_listPreferredItemHeightLarge /*71*/:
                obj = new Intent(this, PhoneOwnershipActivity.class);
                break;
            case mx.AppCompatTheme_dropDownListViewStyle /*74*/:
                obj = new Intent(this, AccessibilityActivity.class).putExtra("extra_account_id", g);
                break;
            case mx.AppCompatTheme_listPopupWindowStyle /*75*/:
            case 120:
                if (!d.a("android_email_explore_enabled")) {
                    obj = c();
                    break;
                }
                obj = new Intent(this, EmailExploreFetchCategoryUsersActivity.class).putExtra("explore_email_category", uri.getQueryParameter("id")).putExtra("explore_email_country", uri.getQueryParameter("country")).addFlags(1073741824);
                break;
            case mx.AppCompatTheme_textAppearanceListItem /*76*/:
                obj = a(uri.getQueryParameter("user_id"), uri.getQueryParameter("screen_name"));
                break;
            case mx.AppCompatTheme_textAppearanceListItemSmall /*77*/:
            case mx.AppCompatTheme_ratingBarStyleSmall /*108*/:
                obj = u.a(this, g, f, TabbedVitFollowersActivity.d);
                break;
            case mx.AppCompatTheme_panelBackground /*78*/:
                obj = new Intent(this, PasswordResetActivity.class).putExtra("init_url", uri.toString());
                break;
            case mx.AppCompatTheme_panelMenuListWidth /*79*/:
                obj = new Intent(this, SearchActivity.class).putExtra("query", d.b("cricket_experience_tournament_hashtag_takeover")).putExtra("q_source", uri.getQueryParameter("src"));
                break;
            case mx.AppCompatTheme_panelMenuListTheme /*80*/:
                obj = new Intent(this, SearchActivity.class).putExtra("query", "#" + ((String) pathSegments.get(2))).putExtra("q_source", uri.getQueryParameter("src"));
                break;
            case mx.AppCompatTheme_listChoiceBackgroundIndicator /*81*/:
                queryParameter = (String) pathSegments.get(1);
                if (!queryParameter.equals(e)) {
                    aa.d(queryParameter);
                }
                g = aj.a((String) pathSegments.get(3), -1);
                if (g != -1) {
                    obj = TweetAnalyticsWebViewActivity.a((Context) this, g);
                    break;
                }
                break;
            case mx.AppCompatTheme_colorPrimary /*82*/:
            case mx.AppCompatTheme_colorPrimaryDark /*83*/:
                obj = ak.a(this, f, false, false);
                break;
            case mx.AppCompatTheme_colorAccent /*84*/:
                obj = AdsCompanionWebViewActivity.a(this);
                break;
            case mx.AppCompatTheme_colorControlNormal /*85*/:
                String queryParameter7 = uri.getQueryParameter("user");
                if (queryParameter7 != null) {
                    if (!queryParameter7.equals(e)) {
                        aa.d(queryParameter7);
                    }
                    obj = new Intent(applicationContext, AdsCompanionWebViewActivity.class).setData(uri);
                    break;
                }
                break;
            case mx.AppCompatTheme_colorControlActivated /*86*/:
                b = a(aj.a(uri.getQueryParameter("user_id"), -1));
                if (!b.d()) {
                    if (!d) {
                        obj = io.d(this);
                        break;
                    }
                    obj = r.a((Context) this, ((com.twitter.android.dm.d) new com.twitter.android.dm.d().b(true)).a());
                    break;
                }
                aa.c(b);
                queryParameter3 = uri.getQueryParameter("text");
                if (aj.a(uri.getQueryParameter("recipient_id"), -1) != -1) {
                    a3 = r.a((Context) this, ((o) ((o) new o().a(new long[]{aj.a(uri.getQueryParameter("recipient_id"), -1)}).b(true)).a(queryParameter3)).d());
                } else {
                    a3 = r.a((Context) this, ((m) ((m) new m().b(true)).a(queryParameter3)).d());
                }
                intent = a3;
                break;
            case mx.AppCompatTheme_colorButtonNormal /*88*/:
                if (!d) {
                    obj = new Intent(this, LoginActivity.class);
                    break;
                }
                obj = c();
                break;
            case mx.AppCompatTheme_buttonStyleSmall /*101*/:
                obj = new Intent(this, SearchActivity.class).putExtra("query", '#' + ((String) pathSegments.get(0))).putExtra("q_source", uri.getQueryParameter("src"));
                break;
            case mx.AppCompatTheme_spinnerStyle /*110*/:
                obj = ProfileActivity.b(this, g, e, null, null, null);
                break;
            case mx.AppCompatTheme_switchStyle /*111*/:
                obj = new Intent(this, SettingsActivity.class).putExtra("extra_account_id", g);
                break;
            case 113:
            case 123:
                obj = a(new Intent(this, MainActivity.class), true);
                break;
            case 114:
                new FollowFlowController("url_interpreter").b(uri.getBooleanQueryParameter("allow_continue", false)).a(new String[]{"interest_picker"}).c((Activity) this);
                break;
            case 115:
                if (!a(uri.getQueryParameter("steps"), d)) {
                    obj = c();
                    break;
                }
                break;
            case 117:
                queryParameter = uri.getQueryParameter("screen_name");
                queryParameter3 = uri.getQueryParameter("slug");
                boolean booleanQueryParameter = uri.getBooleanQueryParameter("members", false);
                obj = new Intent(this, ListTabActivity.class).putExtra("screen_name", queryParameter).putExtra("slug", queryParameter3);
                if (booleanQueryParameter) {
                    obj.putExtra("tab", "list_members");
                    break;
                }
                break;
            case 121:
                if (!aj.a(uri.getQueryParameter("query"))) {
                    obj = new Intent(this, SearchActivity.class).putExtra("query", uri.getQueryParameter("query").trim());
                    queryParameter = uri.getQueryParameter("event_id");
                    if (queryParameter != null) {
                        obj.putExtra("event_id", queryParameter.trim()).putExtra("terminal", true);
                        break;
                    }
                }
                obj = new Intent(this, TrendsPlusActivity.class).putExtra("focus_search_bar", true);
                break;
                break;
            case 122:
                obj = a(new Intent(this, LoginActivity.class), false);
                break;
            case 124:
                obj = a(new Intent(this, TweetActivity.class), false);
                break;
            case 125:
                obj = a(new Intent(this, TweetActivity.class), true);
                break;
            case TransportMediator.KEYCODE_MEDIA_PLAY /*126*/:
                obj = a(new Intent(this, ComposerActivity.class), true);
                break;
            case TransportMediator.KEYCODE_MEDIA_PAUSE /*127*/:
                obj = b(new Intent(this, GalleryActivity.class), false);
                break;
            case AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS /*128*/:
                obj = a(e(), true);
                break;
            case 129:
                if (!d) {
                    DispatchActivity.a((Activity) this);
                    break;
                }
                a3 = getIntent();
                if (a3 == null || MainActivity.class.getCanonicalName().equals(a3.getStringExtra("source"))) {
                    a3 = new Intent(this, HighlightsStoriesActivity.class).setData(getIntent().getData());
                } else {
                    TaskStackBuilder.create(this).addNextIntent(new Intent(this, MainActivity.class)).addNextIntent(new Intent(this, HighlightsStoriesActivity.class).setData(getIntent().getData())).startActivities();
                    a3 = null;
                }
                intent = a3;
                break;
                break;
            case TransportMediator.KEYCODE_MEDIA_RECORD /*130*/:
                obj = a(e(), false);
                break;
            case 131:
                obj = b(r.b(this, ((com.twitter.android.dm.d) new com.twitter.android.dm.d().a(getIntent().getStringExtra("android.intent.extra.TEXT"))).a()), true);
                break;
            case 132:
                if (!d) {
                    obj = c();
                    break;
                }
                obj = new Intent(this, NotificationsTimelineSettingsActivity.class).putExtra("NotificationSettingsActivity_account_name", e);
                break;
            case 133:
                obj = b((String) pathSegments.get(1));
                break;
            case 134:
                obj = new Intent(this, SearchActivity.class).putExtra("query", "#" + ((String) pathSegments.get(2))).putExtra("q_source", uri.getQueryParameter("src"));
                break;
            case 135:
                obj = new Intent(this, SearchActivity.class).putExtra("query", "#" + ((String) pathSegments.get(3))).putExtra("q_source", uri.getQueryParameter("src"));
                break;
            case 136:
                obj = new Intent(this, PhoneEntrySettingsActivity.class).putExtra("account_name", e).putExtra("umf_flow", true);
                break;
            case 137:
                if (!cbj.g(ab().g())) {
                    obj = c();
                    break;
                }
                obj = new Intent(this, NewsActivity.class);
                break;
            case 138:
            case 141:
                if (!d || !bym.b()) {
                    obj = c();
                    break;
                }
                a2 = aj.a(a == 141 ? uri.getLastPathSegment() : uri.getQueryParameter("moment_id"), -1);
                if (a2 != -1) {
                    a3 = MomentsFullScreenPagerActivity.b(this, a2);
                } else {
                    a3 = new Intent(this, ModernGuideActivity.class);
                }
                intent = a3;
                break;
                break;
            case 139:
                BouncerWebViewActivity.a(this, uri.getQueryParameter("bounce_location"), true);
                break;
            case 140:
                obj = b(r.b(this), true);
                break;
            case 142:
                if (!d || !bym.a()) {
                    obj = c();
                    break;
                }
                obj = a(applicationContext, uri.getQueryParameter("category_id"));
                break;
                break;
            case 145:
                if (!d.a("profile_birthday_collection_enabled")) {
                    obj = c();
                    break;
                }
                obj = a(uri, g).putExtra("edit_birthdate", true);
                break;
            case 146:
                if (!cbj.g(ab().g())) {
                    obj = c();
                    break;
                }
                obj = new Intent(this, NewsDetailActivity.class).putExtra("news_id", uri.getLastPathSegment());
                break;
            case 147:
            case 157:
                obj = c(uri.getQueryParameter("screen_name"));
                switch (a) {
                    case 147:
                        uri2 = ProfileActivity.c;
                        break;
                    case 157:
                        uri2 = ProfileActivity.b;
                        break;
                    default:
                        uri2 = null;
                        break;
                }
                if (uri2 != null) {
                    obj.putExtra("start_page", uri2.toString());
                    break;
                }
                break;
            case 148:
                if (!d || !bym.c()) {
                    obj = c();
                    break;
                }
                obj = a(applicationContext, uri.getQueryParameter("categoryId"));
                break;
                break;
            case 149:
                if (d) {
                    obj = c((String) e.a(e)).putExtra("start_page", ProfileActivity.l.toString());
                    break;
                }
                break;
            case 150:
                if (!d) {
                    obj = c();
                    break;
                }
                obj = ProfileCompletionFlowActivity.a((Context) this, "deep_link");
                break;
            case 151:
                a2 = aj.a(uri.getLastPathSegment(), -1);
                if (a2 == -1) {
                    obj = c();
                    break;
                }
                obj = b(new Intent(this, TvShowActivity.class).putExtra("entity_id", a2), true);
                break;
            case 152:
                obj = new Intent(this, PrivacyAndContentActivity.class).putExtra("scroll_to_row", "smart_mute").putExtra("extra_account_id", g);
                break;
            case 153:
                obj = aw.a().d(67108864).b(1).a((Context) this);
                break;
            case 154:
                obj = new Intent(this, WebViewActivity.class).setData(uri);
                break;
            case 155:
                obj = f(uri);
                break;
            case 156:
                if (!d.a("native_mobile_sms_2fa_enabled")) {
                    obj = c();
                    break;
                }
                obj = new Intent(this, BackupCodeActivity.class).putExtra("bc_account_name", e).putExtra("bc_account_id", g);
                break;
            case 158:
                if (!buv.a()) {
                    obj = c();
                    break;
                }
                obj = StickerTimelineActivity.a((Context) this, aj.a((String) pathSegments.get(0), -1), pathSegments.size() > 1 ? (String) pathSegments.get(1) : null);
                break;
            case 159:
                if (!buv.a()) {
                    obj = c();
                    break;
                }
                obj = StickerTimelineActivity.a((Context) this, aj.a((String) pathSegments.get(2), -1), pathSegments.size() > 3 ? (String) pathSegments.get(3) : "top");
                break;
            case 160:
                if (!d.a("alerts_v2_experience_enabled")) {
                    obj = c();
                    break;
                }
                a2 = aj.a(uri.getLastPathSegment(), -1);
                intent = a2 >= 0 ? AlertLandingActivity.a((Context) this, a2) : c();
                break;
            case 161:
                if (!d.a("live_video_timeline_enabled")) {
                    obj = c();
                    break;
                }
                obj = LiveVideoLandingActivity.a((Context) this, new a(uri.getLastPathSegment()));
                break;
            case 162:
                obj = e(uri);
                break;
            default:
                if (!uri.getHost().endsWith("twitter.com") || (pathSegments != null && !pathSegments.isEmpty())) {
                    if (!c.matcher(uri.getScheme().toLowerCase()).matches()) {
                        obj = new Intent(this, WebViewActivity.class).setData(uri);
                        break;
                    }
                    obj = c();
                    break;
                } else if (!d) {
                    obj = new Intent(this, LoginActivity.class);
                    break;
                } else {
                    queryParameter = uri.getQueryParameter("action");
                    queryParameter3 = uri.getQueryParameter("mode");
                    if ("compose".equals(queryParameter) && "poll".equals(queryParameter3)) {
                        a3 = aw.a().a(5).d(67108864).a((Context) this);
                    } else {
                        a3 = c();
                    }
                    obj = a3;
                    break;
                }
                break;
        }
        return ObservablePromise.a(obj);
    }

    private Intent e(Uri uri) {
        return c(uri, true);
    }

    private Intent f(Uri uri) {
        return c(uri, false);
    }

    private Intent c(Uri uri, boolean z) {
        if (!cbx.a()) {
            return b(new Intent(this, RootTabbedFindPeopleActivity.class).setData(uri), true);
        }
        Intent b = b(new Intent(this, PeopleDiscoveryActivity.class).setData(uri), true);
        if (b == null) {
            return b;
        }
        b.putExtra("is_internal", z);
        return b;
    }

    private Intent e() {
        return new Intent(this, ProfileActivity.class).putExtra("start_page", ProfileActivity.j.toString()).putExtra("association", this.j);
    }

    private Intent a(String str, String str2) {
        Builder authority = new Builder().scheme("twitter").authority("user");
        a(authority, "user_id", str);
        a(authority, "screen_name", str2);
        return e().setData(authority.build());
    }

    private Intent b(String str) {
        return new q().a(str).a(6).f("url_interpreter").a(true).b(true).e(true).a((Context) this);
    }

    private Intent c(String str) {
        return new Intent(this, ProfileActivity.class).setData(new Builder().scheme("twitter").authority("user").appendQueryParameter("screen_name", str).build()).putExtra("association", this.j);
    }

    private Intent a(Uri uri, int i) {
        String queryParameter = uri.getQueryParameter("tweet_id");
        if (queryParameter == null) {
            return new Intent(this, WebViewActivity.class).setData(uri);
        }
        String str;
        switch (i) {
            case mx.AppCompatTheme_editTextColor /*62*/:
                str = "email_redirect_retweet";
                break;
            case mx.AppCompatTheme_editTextBackground /*63*/:
                str = "email_redirect_favorite";
                break;
            default:
                str = null;
                break;
        }
        return new Intent(this, TweetActivity.class).putExtra(str, true).setData(new Builder().scheme("twitter").authority("tweet").appendQueryParameter("status_id", queryParameter).build());
    }

    private Intent a(Context context, String str) {
        if (aj.b((CharSequence) str)) {
            return new Intent(context, ModernGuideActivity.class).putExtra("guide_category_id", str);
        }
        ai.a((Activity) this);
        return null;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 2 && i2 == -1) {
            CharSequence stringExtra = intent.getStringExtra("AbsFragmentActivity_account_name");
            if (aj.b(stringExtra)) {
                startActivity(new Intent(this, MainActivity.class).putExtra("AbsFragmentActivity_account_name", stringExtra));
            }
        }
        finish();
    }

    private static Tweet a(Long l, String[] strArr) {
        bf h = new bf().e(l.longValue()).h(strArr[0].trim());
        if (strArr.length > 1) {
            com.twitter.model.core.m mVar = new com.twitter.model.core.m(strArr.length - 1);
            for (int i = 1; i < strArr.length; i++) {
                mVar.a((com.twitter.model.core.e) new aq().a(strArr[i].trim()).q());
            }
            h.a((com.twitter.model.core.bg) new com.twitter.model.core.bi().b((com.twitter.model.core.j) mVar.q()).q());
        }
        return h.a();
    }

    private static void a(Builder builder, String str, String str2) {
        if (aj.b((CharSequence) str2)) {
            builder.appendQueryParameter(str, str2);
        }
    }

    private void a(Uri uri, Uri uri2, boolean z) {
        if (z) {
            this.k = true;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment redirectServiceFragment = new RedirectServiceFragment();
        redirectServiceFragment.a(new h().b("redirect_uri", uri.toString()).a("wait_for_response", z).c());
        supportFragmentManager.beginTransaction().add(16908290, redirectServiceFragment, "redirect_service_fragment").commit();
        if (!z) {
            b(uri2);
        }
    }

    Intent c() {
        return new Intent(this, MainActivity.class);
    }

    public void startActivity(Intent intent) {
        io.a(true, intent);
        super.startActivity(intent);
    }

    Intent a(Uri uri, long j) {
        String queryParameter = uri.getQueryParameter("action");
        String valueOf = String.valueOf(j);
        Intent data = new Intent(this, b.a() ? EditProfileWithAvatarDrawerActivity.class : EditProfileActivity.class).setData(dh.b.buildUpon().appendEncodedPath(valueOf).appendQueryParameter("ownerId", valueOf).build());
        if ("change_avatar".equals(queryParameter) && b.b()) {
            data.putExtra("extra_show_avatar_picker", true);
        }
        return data;
    }

    private Intent a(Uri uri, String str) {
        aw a;
        Builder authority = new Builder().scheme("twitter").authority("post");
        a(authority, "text", str);
        a(authority, "url", uri.getQueryParameter("url"));
        a(authority, "hashtags", n.b(uri.getQueryParameter("hashtags"), "UTF8"));
        a(authority, "via", uri.getQueryParameter("via"));
        long a2 = aj.a(uri.getQueryParameter("in_reply_to"), -1);
        if (a2 == -1) {
            a = aw.a();
        } else {
            CharSequence queryParameter = uri.getQueryParameter("in_reply_to_usernames");
            String[] split = aj.b(queryParameter) ? queryParameter.split(",") : null;
            a(authority, "in_reply_to_status_id", Long.toString(a2));
            aw a3 = aw.a();
            if (split != null && split.length > 0) {
                a3.a(a(Long.valueOf(a2), split));
            }
            a = a3;
        }
        return a.a(authority.build()).a((Context) this);
    }

    Uri b(Uri uri, boolean z) {
        if (d.match(uri) == 53) {
            a("impression", uri);
            String queryParameter = uri.getQueryParameter("url");
            if (queryParameter != null) {
                Uri parse = Uri.parse(Uri.decode(queryParameter));
                int match = d.match(parse);
                if (match != -1) {
                    if ((z ? g : i).contains(Integer.valueOf(match))) {
                        a("resolvable", parse);
                        return parse;
                    }
                    a("resolvable_not_whitelisted", parse);
                    return null;
                }
            }
        }
        return null;
    }

    public void c_(Uri uri) {
        this.k = false;
        b(uri);
    }

    public void a(String str) {
        a(str, null);
    }

    @VisibleForTesting
    public Session a(long j) {
        return aa().a(j);
    }

    public void a(String str, Uri uri) {
        bbw bbw = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(ab().g()).c(2)).b("app:url_interpreter:redirect_service:", str);
        if (uri != null) {
            bbw.b(uri.toString());
        }
        bbu.a(bbw);
    }

    private Intent a(Intent intent, boolean z) {
        boolean d = bg.a().c().d();
        if (!z || d) {
            intent.setData(getIntent().getData());
            return intent;
        }
        DispatchActivity.a((Activity) this);
        return null;
    }

    private Intent b(Intent intent, boolean z) {
        if (getIntent().getExtras() != null) {
            return a(intent.putExtras(getIntent().getExtras()), z);
        }
        return a(intent, z);
    }

    private boolean a(String str, boolean z) {
        boolean z2 = false;
        if (!z || !aj.b((CharSequence) str)) {
            return false;
        }
        if ("smart_follow".equals(str)) {
            SourceLocation sourceLocation;
            if (d.a("interest_persistence_source_location_rux_enabled")) {
                sourceLocation = SourceLocation.Rux;
            } else {
                sourceLocation = SourceLocation.Nux;
            }
            startActivity(new g().a("url_interpreter").a(1).a(true).a(sourceLocation).b("resurrection").a((Context) this));
            return true;
        }
        FollowFlowController a = new FollowFlowController("url_interpreter").a(false);
        if (!com.twitter.android.util.aq.a(this).m()) {
            z2 = true;
        }
        a.a(str, z2).c((Activity) this);
        return true;
    }
}
