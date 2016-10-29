package com.twitter.android;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Toast;
import bew;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.d;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.platform.notifications.w;
import com.twitter.library.util.b;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.al;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/* compiled from: Twttr */
public class PushDebugSettingsActivity extends TwitterFragmentActivity implements OnAccountsUpdateListener, OnClickListener {
    private Spinner a;
    private mv b;
    private RadioGroup c;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130969276);
        tVar.a(false);
        tVar.b(false);
        tVar.c(false);
        return tVar;
    }

    public void a(Bundle bundle, d dVar) {
        setTitle("Send a push Notification");
        this.a = (Spinner) findViewById(2131953212);
        this.b = new mv(this);
        this.a.setAdapter(this.b);
        this.c = (RadioGroup) findViewById(2131953214);
        findViewById(2131953231).setOnClickListener(this);
        findViewById(2131953213).setOnClickListener(this);
    }

    protected void onResume() {
        super.onResume();
        AccountManager.get(this).addOnAccountsUpdatedListener(this, null, true);
    }

    protected void onPause() {
        AccountManager.get(this).removeOnAccountsUpdatedListener(this);
        super.onPause();
    }

    protected void v_() {
        this.a.setVisibility(8);
    }

    protected void o() {
        onBackPressed();
    }

    public void onAccountsUpdated(Account[] accountArr) {
        String e = aa().c().e();
        TwitterUser twitterUser = null;
        List arrayList = new ArrayList(accountArr.length);
        int length = accountArr.length;
        int i = 0;
        while (i < length) {
            TwitterUser a;
            Account account = accountArr[i];
            if (b.a.equals(account.type)) {
                a = b.a(account);
                if (a != null) {
                    arrayList.add(a);
                    if (a.k.equals(e)) {
                        i++;
                        twitterUser = a;
                    }
                }
            }
            a = twitterUser;
            i++;
            twitterUser = a;
        }
        this.b.a(arrayList);
        if (!arrayList.isEmpty()) {
            int indexOf;
            Spinner spinner = this.a;
            if (twitterUser != null) {
                indexOf = arrayList.indexOf(twitterUser);
            } else {
                indexOf = 0;
            }
            spinner.setSelection(indexOf);
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131953213:
                c();
            case 2131953231:
                e();
            default:
        }
    }

    private void c() {
        Object a = PushRegistration.a(this);
        if (aj.a(a)) {
            Toast.makeText(this, "Push settings are not enabled on this device", 0).show();
            return;
        }
        TwitterUser a2 = this.b.a(this.a.getSelectedItemPosition());
        if (a2 == null) {
            Toast.makeText(this, "Please select a user from the list", 0).show();
            return;
        }
        w.a(this, a2.k).a(0);
        bew bew = (bew) new bew(this, aa().b(a2.c)).d(1);
        bew.a = a;
        this.J.a(bew);
        Toast.makeText(this, "Push check in issued", 0).show();
    }

    private void e() {
        if (this.b.a(this.a.getSelectedItemPosition()) == null) {
            Toast.makeText(this, "Please select a user from the list", 0).show();
            return;
        }
        Intent putExtra = new Intent().setAction("com.google.android.c2dm.intent.RECEIVE").putExtra("priority", "1").putExtra("schema", "1").putExtra("impression_id", "debug-" + al.b());
        try {
            AssetManager assets = getAssets();
            String format = String.format(a(assets, "push/user_recipient_and_sender.json"), new Object[]{Long.valueOf(r0.bf_()), r0.k, r0.c()});
            String format2 = String.format(a(assets, "push/user_recipient.json"), new Object[]{Long.valueOf(r0.bf_()), r0.k, r0.c()});
            String a = a(assets, "push/tweet.json");
            switch (this.c.getCheckedRadioButtonId()) {
                case 2131951910:
                    putExtra.putExtra("scribe_target", "retweeted").putExtra("uri", "twitter://tweet?status_id=483010988338184193").putExtra("collapse_key", "retweeted").putExtra("type", String.valueOf(6)).putExtra("tweet", a).putExtra("users", format);
                    break;
                case 2131951911:
                    putExtra.putExtra("scribe_target", "favorited").putExtra("uri", "twitter://tweet?status_id=483010988338184193").putExtra("from", "49625052041").putExtra("tweet", a).putExtra("collapse_key", "favorited").putExtra("type", String.valueOf(5)).putExtra("users", format);
                    break;
                case 2131952250:
                    putExtra.putExtra("scribe_target", "poll_announcement").putExtra("from", "49625052041").putExtra("type", String.valueOf(303)).putExtra(MimeTypes.BASE_TYPE_TEXT, "You ran a poll that received one vote. View the results!").putExtra("uri", "twitter://tweet?status_id=674371913842495488").putExtra("collapse_key", "poll_author").putExtra("users", String.format(a(assets, "push/poll_notification_users.json"), new Object[]{Long.valueOf(r0.bf_()), r0.k, r0.c()}));
                    break;
                case 2131952586:
                    putExtra.putExtra("schema", "2").putExtra("type", String.valueOf(270)).putExtra(MimeTypes.BASE_TYPE_TEXT, "Stories from Gordon, Todd and 12 more").putExtra("from", "49625052041").putExtra("scribe_target", "highlights").putExtra("uri", "twitter://storystream?allow_optout=true").putExtra("users", format);
                    break;
                case 2131953215:
                    putExtra.putExtra("scribe_target", "followed").putExtra("uri", "twitter://user?screen_name=chestcoast").putExtra("from", "49625052041").putExtra("collapse_key", "followed").putExtra("type", String.valueOf(23)).putExtra("tweet", a).putExtra(MimeTypes.BASE_TYPE_TEXT, "@chestcoast is now following you!").putExtra("users", format);
                    break;
                case 2131953216:
                    putExtra.putExtra("scribe_target", "followed_request").putExtra("uri", "twitter://user?screen_name=chestcoast").putExtra("from", "49625052041").putExtra("collapse_key", "followed_request").putExtra("type", String.valueOf(24)).putExtra(MimeTypes.BASE_TYPE_TEXT, "Requested to follow you").putExtra("users", format);
                    break;
                case 2131953217:
                    putExtra.putExtra("scribe_target", "tweet").putExtra("uri", "twitter://tweet?status_id=483010988338184193").putExtra("from", "49625052041").putExtra("collapse_key", "tweet").putExtra("type", String.valueOf(74)).putExtra("tweet", a).putExtra(MimeTypes.BASE_TYPE_TEXT, "Google's understanding of...").putExtra("users", format);
                    break;
                case 2131953218:
                    putExtra.putExtra("scribe_target", "event_parrot").putExtra("uri", "twitter://search?query=motorola%20lenovo%20google&event_id=EVENT_NEWS:428637429881638912").putExtra("from", "49625052041").putExtra(MimeTypes.BASE_TYPE_TEXT, "This is a fake Event Parrot notification").putExtra("collapse_key", "event_parrot").putExtra("type", String.valueOf(175)).putExtra("users", format2);
                    break;
                case 2131953219:
                    putExtra.putExtra("scribe_target", "planned_event_sports").putExtra("uri", "twitter://search?query=%23WorldCup&event_id=MOCKINGJAY_TWO_TEAM_SPORTS_LEAGUE|WC").putExtra("from", "49625052041").putExtra(MimeTypes.BASE_TYPE_TEXT, "Fake World Cup push!").putExtra("collapse_key", "planned_event_sports").putExtra("type", String.valueOf(251)).putExtra("users", format2);
                    break;
                case 2131953220:
                    putExtra.putExtra("scribe_target", "magic_rec_user_2").putExtra("uri", "twitter://user?screen_name=chestcoast").putExtra("from", "49625052041").putExtra("collapse_key", "magic_rec_user").putExtra("type", String.valueOf(154)).putExtra(MimeTypes.BASE_TYPE_TEXT, "@truthseeker1985, @vzhabiuk, @ajeet, and 2 more just followed @chestcoast").putExtra("users", format);
                    break;
                case 2131953221:
                    putExtra.putExtra("scribe_target", "magic_rec_tweet_2").putExtra("uri", "twitter://tweet?status_id=490934786223898626").putExtra("from", "49625052041").putExtra("collapse_key", "magic_rec_tweet").putExtra("type", String.valueOf(153)).putExtra("tweet", a(assets, "push/magic_rec_tweet.json")).putExtra("users", format);
                    break;
                case 2131953222:
                    putExtra.putExtra("scribe_target", "magic_rec_hashtag").putExtra("uri", "twitter://search?query=%23naacl2015&event_id=EVENT_NEWS:606132978612375552_605969794748194816").putExtra("from", "49625052041").putExtra("collapse_key", "magic_rec_hashtag").putExtra("type", String.valueOf(215)).putExtra(MimeTypes.BASE_TYPE_TEXT, "@chestcoast, @brendan642, @beaucronin and 2 more are tweeting about #naacl2015").putExtra("users", format);
                    break;
                case 2131953223:
                    putExtra.putExtra("collapse_key", "magic_rec_user");
                    putExtra.putExtra("type", String.valueOf(154));
                    putExtra.putExtra(MimeTypes.BASE_TYPE_TEXT, "@ramnathb was just followed by @truthseeker1985, @vzhabiuk, @ajeet, and 2 more.");
                    putExtra.putExtra("title", "Quannan + 4");
                    putExtra.putExtra("from", "49625052041");
                    putExtra.putExtra("uri", "twitter://user?screen_name=ramnathb");
                    putExtra.putExtra("scribe_target", "magic_rec_user_7");
                    putExtra.putExtra("users", String.format(a(assets, "push/magic_rec_exp_user_users.json"), new Object[]{Long.valueOf(r0.bf_()), r0.k, r0.c()}));
                    putExtra.putExtra("actions", a(assets, "push/magic_rec_exp_user_actions.json"));
                    break;
                case 2131953224:
                    putExtra.putExtra("collapse_key", "magic_rec_tweet");
                    putExtra.putExtra("type", String.valueOf(153));
                    putExtra.putExtra(MimeTypes.BASE_TYPE_TEXT, "@ramnathb's Tweet was just retweeted by @truthseeker1985, @vzhabiuk, @ajeet, and 2 more.");
                    putExtra.putExtra("title", "Quannan + 4");
                    putExtra.putExtra("from", "49625052041");
                    putExtra.putExtra("uri", "twitter://tweet?status_id=489160104734773248");
                    putExtra.putExtra("scribe_target", "magic_rec_tweet_7");
                    putExtra.putExtra("users", String.format(a(assets, "push/magic_rec_exp_tweet_users.json"), new Object[]{Long.valueOf(r0.bf_()), r0.k, r0.c()}));
                    putExtra.putExtra("actions", a(assets, "push/magic_rec_exp_tweet_actions.json"));
                    putExtra.putExtra("tweet", a(assets, "push/magic_rec_exp_tweet.json"));
                    break;
                case 2131953225:
                    putExtra.putExtra("collapse_key", "magic_rec_user");
                    putExtra.putExtra("type", String.valueOf(292));
                    putExtra.putExtra(MimeTypes.BASE_TYPE_TEXT, "Would you like us to notify you when @ramnathb tweets?");
                    putExtra.putExtra("title", "Twitter");
                    putExtra.putExtra("from", "49625052041");
                    putExtra.putExtra("uri", "twitter://user?screen_name=ramnathb&df=1");
                    putExtra.putExtra("scribe_target", "magic_rec_user_10");
                    putExtra.putExtra("users", format);
                    break;
                case 2131953226:
                    putExtra.putExtra("schema", "2").putExtra("type", String.valueOf(270)).putExtra(MimeTypes.BASE_TYPE_TEXT, "Stories from Gordon, Todd and 12 more").putExtra("from", "49625052041").putExtra("scribe_target", "highlights").putExtra("uri", "twitter://storystream").putExtra("users", format);
                    break;
                case 2131953227:
                    putExtra.putExtra("type", String.valueOf(270)).putExtra("presentation_type", "magic_rec").putExtra(MimeTypes.BASE_TYPE_TEXT, "@ZJYIN, @saud, @aneeshs and 2 more are tweeting about Crimea").putExtra("from", "49625052041").putExtra("scribe_target", "highlights_3").putExtra("uri", "twitter://storystream?id=MagicRecTweetFavorite:626120160760336384&ignore_nux=true").putExtra("tweet", a(assets, "push/magic_rec_tweet.json")).putExtra("users", format);
                    break;
                case 2131953228:
                    putExtra.putExtra("type", String.valueOf(270)).putExtra("presentation_type", "rich_magic_rec").putExtra(MimeTypes.BASE_TYPE_TEXT, "@ramnathb's Tweet was just retweeted by @ZJYIN, @saud, @aneeshs, and 2 more.").putExtra("title", "Quannan + 4").putExtra("from", "49625052041").putExtra("scribe_target", "highlights_3").putExtra("uri", "twitter://storystream?id=MagicRecTweetFavorite:626120160760336384&ignore_nux=true").putExtra("tweet", a(assets, "push/magic_rec_exp_tweet.json")).putExtra("users", String.format(a(assets, "push/magic_rec_exp_tweet_users.json"), new Object[]{Long.valueOf(r0.bf_()), r0.k, r0.c()}));
                    break;
                case 2131953229:
                    putExtra.putExtra("schema", "2").putExtra("type", String.valueOf(292)).putExtra("title", "Twitter").putExtra("collapse_key", "moments").putExtra(MimeTypes.BASE_TYPE_TEXT, "\"National Hot Dog Day Actually Amazing\" is starting now!").putExtra("from", "49625052041").putExtra("scribe_target", "moments").putExtra("uri", "twitter://moment?moment_id=623510724661243904").putExtra("users", format);
                    break;
                case 2131953230:
                    putExtra.putExtra("scribe_target", "news").putExtra("uri", "twitter://news").putExtra("from", "49625052041").putExtra(MimeTypes.BASE_TYPE_TEXT, "Fake News push!").putExtra("users", format);
                    break;
                default:
                    return;
            }
            sendBroadcast(putExtra);
        } catch (Exception e) {
            Toast.makeText(this, "Push failed due to exception: " + e, 0).show();
        }
    }

    static String a(AssetManager assetManager, String str) throws Exception {
        InputStream inputStream = null;
        try {
            inputStream = assetManager.open(str);
            Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
            String next = useDelimiter.hasNext() ? useDelimiter.next() : TtmlNode.ANONYMOUS_REGION_ID;
            if (inputStream != null) {
                inputStream.close();
            }
            return next;
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    public static void a(Context context) {
        context.sendBroadcast(new Intent().setAction("com.google.android.c2dm.intent.RECEIVE").putExtra("priority", "1").putExtra("schema", "1").putExtra("type", String.valueOf(285)).putExtra("title", "You are logged out...").putExtra(MimeTypes.BASE_TYPE_TEXT, "But you still got a notification!").putExtra("scribe_target", "logged_out").putExtra("uri", "twitter://user?screen_name=dickc"));
    }
}
