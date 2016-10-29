package com.twitter.library.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.support.v4.media.TransportMediator;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.android.mx;
import com.twitter.util.aj;
import defpackage.cdc;
import defpackage.cfb;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TwitterProvider extends ContentProvider {
    private static final UriMatcher a;

    static {
        a = new UriMatcher(-1);
        a.addURI(ck.c, "users", 1);
        a.addURI(ck.c, "users/id/#", 2);
        a.addURI(ck.c, "user_groups", 60);
        a.addURI(ck.c, "user_groups_view/#", 70);
        a.addURI(ck.c, "user_groups_view/following/#", 72);
        a.addURI(ck.c, "user_groups_view/followers/#", 73);
        a.addURI(ck.c, "user_groups_view/verified_followers/#", 99);
        a.addURI(ck.c, "user_groups_view/blocked/#", 74);
        a.addURI(ck.c, "user_groups_view/members/#", 75);
        a.addURI(ck.c, "user_groups_view/subscribers/#", 76);
        a.addURI(ck.c, "user_groups_view/people/#", 77);
        a.addURI(ck.c, "user_groups_view/search", 78);
        a.addURI(ck.c, "user_groups_view/category_users/#", 79);
        a.addURI(ck.c, "user_groups_view/contacts/#", 80);
        a.addURI(ck.c, "user_groups_view/activity_sources/#", 81);
        a.addURI(ck.c, "user_groups_view/favorited/#", 82);
        a.addURI(ck.c, "user_groups_view/retweeted/#", 83);
        a.addURI(ck.c, "user_groups_view/media_tagged/#", 96);
        a.addURI(ck.c, "user_groups_view/activity_targets/#", 84);
        a.addURI(ck.c, "user_groups_view/dm_contacts/#", 85);
        a.addURI(ck.c, "user_groups_view/device_following/#", 86);
        a.addURI(ck.c, "user_groups_view/incoming_friendships/#", 88);
        a.addURI(ck.c, "user_groups_view/welcome_wtf/#", 89);
        a.addURI(ck.c, "user_groups_view/find_people/#", 98);
        a.addURI(ck.c, "user_groups_view/similar_to/#", 90);
        a.addURI(ck.c, "user_groups_view/streamified_wtf/#", 92);
        a.addURI(ck.c, "user_groups_view/follow_recommendations/#", 91);
        a.addURI(ck.c, "user_groups_view/mutual_follows/#", 94);
        a.addURI(ck.c, "user_groups_view/geo_wtf/#", mx.AppCompatTheme_buttonStyleSmall);
        a.addURI(ck.c, "user_groups_view/blocked_imported/#", mx.AppCompatTheme_checkboxStyle);
        a.addURI(ck.c, "user_groups_view/muted/#", mx.AppCompatTheme_checkedTextViewStyle);
        a.addURI(ck.c, "user_groups_view/muted_automated/#", mx.AppCompatTheme_editTextStyle);
        a.addURI(ck.c, "user_groups_view/contact_forward_recommendation/#", mx.AppCompatTheme_radioButtonStyle);
        a.addURI(ck.c, "statuses", 20);
        a.addURI(ck.c, "statuses/id/#", 21);
        a.addURI(ck.c, "drafts", 40);
        a.addURI(ck.c, "drafts/id/#", 41);
        a.addURI(ck.c, "status_groups", mx.AppCompatTheme_spinnerStyle);
        a.addURI(ck.c, "status_groups/#", mx.AppCompatTheme_switchStyle);
        a.addURI(ck.c, "status_groups_view", 120);
        a.addURI(ck.c, "status_groups_view/#", 121);
        a.addURI(ck.c, "status_groups_view/ref_id/#", 122);
        a.addURI(ck.c, "status_groups_view/id/#", 142);
        a.addURI(ck.c, "status_groups_view/timeline/#", 123);
        a.addURI(ck.c, "status_groups_view/favorites/#", 124);
        a.addURI(ck.c, "status_groups_view/home/#", 125);
        a.addURI(ck.c, "status_groups_view/mentions/#", AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        a.addURI(ck.c, "status_groups_view/mentions_filtered/#", 129);
        a.addURI(ck.c, "status_groups_view/mentions_verified/#", TransportMediator.KEYCODE_MEDIA_RECORD);
        a.addURI(ck.c, "status_groups_view/mentions_following/#", 131);
        a.addURI(ck.c, "status_groups_view/list/#", 132);
        a.addURI(ck.c, "status_groups_view/conversation/#", 136);
        a.addURI(ck.c, "status_groups_view/conversation_older/#", 136);
        a.addURI(ck.c, "status_groups_view/conversation_newer/#", 136);
        a.addURI(ck.c, "status_groups_view/activity_targets/#", 138);
        a.addURI(ck.c, "status_groups_view/activity_target_objects/#", 139);
        a.addURI(ck.c, "status_groups_view/activity/#", 137);
        a.addURI(ck.c, "status_groups_view/custom_timeline_users", 97);
        a.addURI(ck.c, "status_groups_retweets_view/rt_timeline/#", 135);
        a.addURI(ck.c, "status_groups_retweets_view/rt_timeline_unlimited/#", 146);
        a.addURI(ck.c, "status_groups_view/media/#", 140);
        a.addURI(ck.c, "status_groups_retweets_view/rt_media/#", 141);
        a.addURI(ck.c, "status_groups_retweets_view/activity/#", 143);
        a.addURI(ck.c, "status_groups_retweets_view/#", 144);
        a.addURI(ck.c, "status_groups_retweets_view/ref_id/#", 145);
        a.addURI(ck.c, "status_groups_view/moments/#", 147);
        a.addURI(ck.c, "conversation/*", 202);
        a.addURI(ck.c, "dm_inbox", 203);
        a.addURI(ck.c, "dm_inbox/*", 204);
        a.addURI(ck.c, "conversation_participants", 206);
        a.addURI(ck.c, "conversation_participants/*", 207);
        a.addURI(ck.c, "dm_unread_count", 208);
        a.addURI(ck.c, "lists_view", 300);
        a.addURI(ck.c, "lists_view/#", 301);
        a.addURI(ck.c, "lists_view/id/#", 302);
        a.addURI(ck.c, "timeline_view", 400);
        a.addURI(ck.c, "timeline_view/home/#", 401);
        a.addURI(ck.c, "timeline_view/user/#", 402);
        a.addURI(ck.c, "timeline_view/trendsplus/#", 405);
        a.addURI(ck.c, "timeline_view/conversation/#", 414);
        a.addURI(ck.c, "timeline_view/custom/#", 404);
        a.addURI(ck.c, "timeline_view/place/#", 403);
        a.addURI(ck.c, "timeline_view/alert/#", 406);
        a.addURI(ck.c, "timeline_view/live_video_event/#", 413);
        a.addURI(ck.c, "timeline_view/favorites/#", 407);
        a.addURI(ck.c, "timeline_view/media/#", 408);
        a.addURI(ck.c, "timeline_view/mentions/#", 409);
        a.addURI(ck.c, "timeline_view/mentions_filtered/#", 410);
        a.addURI(ck.c, "timeline_view/mentions_verified/#", 411);
        a.addURI(ck.c, "timeline_view/mentions_following/#", 412);
        a.addURI(ck.c, "dismiss_info_view/timeline_id/#", 420);
        a.addURI(ck.c, "search_queries", 520);
        a.addURI(ck.c, "search_queries/#", 521);
        a.addURI(ck.c, "search_results_view", 522);
        a.addURI(ck.c, "activities", 700);
        a.addURI(ck.c, "stories_view", 850);
        a.addURI(ck.c, "stories_view", 850);
        a.addURI(ck.c, "stories/tweets/*", 851);
        a.addURI(ck.c, "categories_view", 900);
        a.addURI(ck.c, "notifications", 1000);
        a.addURI(ck.c, "order_history", 1400);
        a.addURI(ck.c, "news", 1500);
        a.addURI(ck.c, "news/#", 1501);
        a.addURI(ck.c, "news/tweets/#", 1502);
        a.addURI(ck.c, "news/users/#", 1503);
        a.addURI(ck.c, "moments_guide_categories", 1607);
        a.addURI(ck.c, "moments_guide_view/#", 1600);
        a.addURI(ck.c, "moments_sectioned_guide/#", 1608);
        a.addURI(ck.c, "moments_pages_view/#", 1601);
        a.addURI(ck.c, "moments/#", 1602);
        a.addURI(ck.c, "moments_pivot_guide/#", 1605);
        a.addURI(ck.c, "ads_account_permissions", 1700);
        a.addURI(ck.c, "business_profiles", 1800);
        a.addURI(ck.c, "business_profiles/id/#", 1801);
        a.addURI(ck.c, "business_profiles/user_id/#", 1802);
        a.addURI(ck.c, "dm_card_state", 2000);
        a.addURI(ck.c, "ads_view", 2100);
    }

    public boolean onCreate() {
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.database.Cursor query(android.net.Uri r14, java.lang.String[] r15, java.lang.String r16, java.lang.String[] r17, java.lang.String r18) {
        /*
        r13 = this;
        r2 = 0;
        r5 = 0;
        r0 = "limit";
        r7 = r14.getQueryParameter(r0);
        r0 = "ownerId";
        r1 = r14.getQueryParameter(r0);
        r0 = new android.database.sqlite.SQLiteQueryBuilder;
        r0.<init>();
        r3 = "TwitterProvider";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r6 = "QUERY uri: ";
        r4 = r4.append(r6);
        r4 = r4.append(r14);
        r6 = " -> ";
        r4 = r4.append(r6);
        r6 = a;
        r6 = r6.match(r14);
        r4 = r4.append(r6);
        r4 = r4.toString();
        defpackage.cfb.b(r3, r4);
        r3 = a;
        r3 = r3.match(r14);
        r4 = com.twitter.util.aj.a(r1);
        if (r4 == 0) goto L_0x007f;
    L_0x004c:
        r8 = 0;
    L_0x004e:
        r1 = 41;
        if (r3 == r1) goto L_0x0056;
    L_0x0052:
        r1 = 40;
        if (r3 != r1) goto L_0x0084;
    L_0x0056:
        r1 = r13.getContext();
        r1 = com.twitter.library.provider.v.a(r1, r8);
        r1 = r1.getReadableDatabase();
    L_0x0062:
        switch(r3) {
            case 1: goto L_0x0091;
            case 2: goto L_0x0091;
            case 20: goto L_0x08c8;
            case 21: goto L_0x08c8;
            case 40: goto L_0x08fc;
            case 41: goto L_0x08fc;
            case 60: goto L_0x011e;
            case 70: goto L_0x0132;
            case 72: goto L_0x015a;
            case 73: goto L_0x01a3;
            case 74: goto L_0x0236;
            case 75: goto L_0x0251;
            case 76: goto L_0x026c;
            case 77: goto L_0x02a2;
            case 78: goto L_0x0287;
            case 79: goto L_0x0328;
            case 80: goto L_0x035b;
            case 81: goto L_0x03b7;
            case 82: goto L_0x0515;
            case 83: goto L_0x0562;
            case 84: goto L_0x0405;
            case 85: goto L_0x0453;
            case 86: goto L_0x04cb;
            case 88: goto L_0x05fc;
            case 89: goto L_0x0649;
            case 90: goto L_0x0739;
            case 91: goto L_0x0783;
            case 92: goto L_0x071e;
            case 94: goto L_0x07cd;
            case 96: goto L_0x05af;
            case 97: goto L_0x039f;
            case 98: goto L_0x0664;
            case 99: goto L_0x01ec;
            case 101: goto L_0x0841;
            case 102: goto L_0x085c;
            case 103: goto L_0x0877;
            case 104: goto L_0x0892;
            case 105: goto L_0x08ad;
            case 110: goto L_0x0930;
            case 111: goto L_0x0930;
            case 120: goto L_0x0964;
            case 121: goto L_0x0979;
            case 122: goto L_0x09a9;
            case 123: goto L_0x09ff;
            case 124: goto L_0x0aeb;
            case 125: goto L_0x0b34;
            case 128: goto L_0x0b9d;
            case 129: goto L_0x0bdf;
            case 130: goto L_0x0c22;
            case 131: goto L_0x0c65;
            case 132: goto L_0x0ca8;
            case 135: goto L_0x0a48;
            case 136: goto L_0x0cef;
            case 137: goto L_0x0da3;
            case 138: goto L_0x0d1f;
            case 139: goto L_0x0d61;
            case 140: goto L_0x0df3;
            case 141: goto L_0x0e3c;
            case 142: goto L_0x09d4;
            case 143: goto L_0x0dcb;
            case 144: goto L_0x0a95;
            case 145: goto L_0x0ac0;
            case 146: goto L_0x0a48;
            case 147: goto L_0x0e7e;
            case 202: goto L_0x102e;
            case 203: goto L_0x1074;
            case 204: goto L_0x1081;
            case 206: goto L_0x10af;
            case 207: goto L_0x10bc;
            case 208: goto L_0x10ea;
            case 300: goto L_0x0fd1;
            case 301: goto L_0x0fde;
            case 302: goto L_0x1006;
            case 400: goto L_0x0ea6;
            case 401: goto L_0x0eb5;
            case 402: goto L_0x0ecf;
            case 403: goto L_0x0f13;
            case 404: goto L_0x0ef1;
            case 405: goto L_0x0ee0;
            case 406: goto L_0x0f24;
            case 407: goto L_0x0f46;
            case 408: goto L_0x0f57;
            case 409: goto L_0x0f68;
            case 410: goto L_0x0f79;
            case 411: goto L_0x0f9b;
            case 412: goto L_0x0f8a;
            case 413: goto L_0x0f35;
            case 414: goto L_0x0f02;
            case 420: goto L_0x0fac;
            case 520: goto L_0x10ff;
            case 521: goto L_0x1138;
            case 522: goto L_0x1160;
            case 700: goto L_0x1173;
            case 850: goto L_0x1180;
            case 851: goto L_0x1196;
            case 900: goto L_0x1261;
            case 1000: goto L_0x1294;
            case 1400: goto L_0x12a1;
            case 1500: goto L_0x12ae;
            case 1501: goto L_0x12bb;
            case 1502: goto L_0x12d5;
            case 1503: goto L_0x1317;
            case 1600: goto L_0x135c;
            case 1601: goto L_0x13ac;
            case 1602: goto L_0x13d4;
            case 1605: goto L_0x13f9;
            case 1607: goto L_0x141e;
            case 1608: goto L_0x1384;
            case 1700: goto L_0x1428;
            case 1800: goto L_0x1432;
            case 1801: goto L_0x143c;
            case 1802: goto L_0x1461;
            case 2000: goto L_0x1486;
            case 2100: goto L_0x1490;
            default: goto L_0x0065;
        };
    L_0x0065:
        r0 = new java.lang.IllegalArgumentException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Unknown URL ";
        r1 = r1.append(r2);
        r1 = r1.append(r14);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x007f:
        r8 = java.lang.Long.parseLong(r1);
        goto L_0x004e;
    L_0x0084:
        r1 = r13.getContext();
        r1 = com.twitter.library.provider.di.a(r1, r8);
        r1 = r1.getReadableDatabase();
        goto L_0x0062;
    L_0x0091:
        r2 = "users";
        r0.setTables(r2);
        r2 = 2;
        if (r3 != r2) goto L_0x00b5;
    L_0x009a:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
    L_0x00b5:
        r2 = "profile_created DESC";
        r8 = r7;
        r9 = r5;
    L_0x00ba:
        r3 = com.twitter.util.aj.b(r18);
        if (r3 == 0) goto L_0x149a;
    L_0x00c0:
        r10 = r18;
    L_0x00c2:
        r11 = "TwitterProvider";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "QUERY: ";
        r12 = r2.append(r3);
        r5 = 0;
        r6 = 0;
        r2 = r0;
        r3 = r15;
        r4 = r16;
        r7 = r18;
        r2 = r2.buildQuery(r3, r4, r5, r6, r7, r8);
        r2 = r12.append(r2);
        r2 = r2.toString();
        defpackage.cfb.b(r11, r2);
        r6 = 0;
        r2 = r15;
        r3 = r16;
        r4 = r17;
        r5 = r9;
        r7 = r10;
        r0 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);
        r1 = "TwitterProvider";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "QUERY results: ";
        r2 = r2.append(r3);
        r3 = r0.getCount();
        r2 = r2.append(r3);
        r2 = r2.toString();
        defpackage.cfb.b(r1, r2);
        r1 = r13.getContext();
        r1 = r1.getContentResolver();
        r0.setNotificationUri(r1, r14);
    L_0x011d:
        return r0;
    L_0x011e:
        r2 = "user_groups";
        r0.setTables(r2);
        r2 = "rank ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x0129:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0132:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "_id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x015a:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 0;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x0199:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x01a3:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 1;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x01e2:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x01ec:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 29;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x022c:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0236:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = "user_groups_type=2";
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x0247:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0251:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = "user_groups_type=4";
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x0262:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x026c:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = "user_groups_type=5";
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x027d:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0287:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = "user_groups_type=3";
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x0298:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x02a2:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = " IN (";
        r2 = r2.append(r3);
        r3 = 1;
        r2 = r2.append(r3);
        r3 = ",";
        r2 = r2.append(r3);
        r3 = 29;
        r2 = r2.append(r3);
        r3 = ",";
        r2 = r2.append(r3);
        r3 = 0;
        r2 = r2.append(r3);
        r3 = ",";
        r2 = r2.append(r3);
        r3 = 15;
        r2 = r2.append(r3);
        r3 = ",";
        r2 = r2.append(r3);
        r3 = -1;
        r2 = r2.append(r3);
        r3 = ")";
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r5 = "users_user_id";
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x14a1;
    L_0x031e:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0328:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r5 = "users_user_id";
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x14a1;
    L_0x0351:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x035b:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 7;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r5 = "users_user_id";
        r2 = "_id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x039f:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r5 = "username";
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        if (r7 != 0) goto L_0x14a1;
    L_0x03ad:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x03b7:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = "=";
        r2 = r2.append(r3);
        r3 = 8;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r5 = "users_user_id";
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x14a1;
    L_0x03fb:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0405:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = "=";
        r2 = r2.append(r3);
        r3 = 13;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r5 = "users_user_id";
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x14a1;
    L_0x0449:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0453:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND (";
        r2 = r2.append(r3);
        r3 = "users_friendship";
        r2 = r2.append(r3);
        r3 = 38;
        r2 = r2.append(r3);
        r3 = 8;
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 8;
        r2 = r2.append(r3);
        r3 = " OR ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 1;
        r2 = r2.append(r3);
        r3 = 41;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r5 = "users_user_id";
        r2 = "users_friendship DESC, LOWER(users_name) ASC";
        if (r7 != 0) goto L_0x14a1;
    L_0x04c1:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x04cb:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 16;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x050b:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0515:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 11;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r5 = "users_user_id";
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x14a1;
    L_0x0558:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0562:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 12;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r5 = "users_user_id";
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x14a1;
    L_0x05a5:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x05af:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 25;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r5 = "users_user_id";
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x14a1;
    L_0x05f2:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x05fc:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 18;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r5 = "users_user_id";
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x14a1;
    L_0x063f:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0649:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = "user_groups_type=19";
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x065a:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0664:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = defpackage.cbx.a();
        if (r2 == 0) goto L_0x06e2;
    L_0x0670:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 39;
        r2 = r2.append(r3);
        r3 = " AND NOT (";
        r2 = r2.append(r3);
        r3 = "users_friendship";
        r2 = r2.append(r3);
        r3 = 38;
        r2 = r2.append(r3);
        r3 = 4;
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 4;
        r2 = r2.append(r3);
        r3 = ")";
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
    L_0x06d0:
        r5 = "users_user_id";
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x14a1;
    L_0x06d8:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x06e2:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_type=19 OR (user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 7;
        r2 = r2.append(r3);
        r3 = ")";
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        goto L_0x06d0;
    L_0x071e:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = "user_groups_type=21";
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x072f:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0739:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 10;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x0779:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0783:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 20;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x07c3:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x07cd:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "users_friendship";
        r2 = r2.append(r3);
        r3 = "&(";
        r2 = r2.append(r3);
        r3 = 1;
        r2 = r2.append(r3);
        r3 = 124; // 0x7c float:1.74E-43 double:6.13E-322;
        r2 = r2.append(r3);
        r3 = 2;
        r2 = r2.append(r3);
        r3 = 41;
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 1;
        r2 = r2.append(r3);
        r3 = 124; // 0x7c float:1.74E-43 double:6.13E-322;
        r2 = r2.append(r3);
        r3 = 2;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r5 = "users_user_id";
        r2 = "LOWER(users_name) ASC";
        if (r7 != 0) goto L_0x14a1;
    L_0x0837:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0841:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = "user_groups_type=33";
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x0852:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x085c:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = "user_groups_type=37";
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x086d:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0877:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = "user_groups_type=26";
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x0888:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0892:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = "user_groups_type=38";
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x08a3:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x08ad:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = "user_groups_type=41 AND NOT (users_friendship&4=4)";
        r0.appendWhere(r2);
        r2 = "_id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x08be:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x08c8:
        r2 = "statuses";
        r0.setTables(r2);
        r2 = 21;
        if (r3 != r2) goto L_0x08ed;
    L_0x08d2:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
    L_0x08ed:
        r2 = "created DESC";
        if (r7 != 0) goto L_0x149d;
    L_0x08f2:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x08fc:
        r2 = "drafts";
        r0.setTables(r2);
        r2 = 41;
        if (r3 != r2) goto L_0x0921;
    L_0x0906:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
    L_0x0921:
        r2 = "updated_at DESC";
        if (r7 != 0) goto L_0x149d;
    L_0x0926:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0930:
        r2 = "status_groups";
        r0.setTables(r2);
        r2 = 111; // 0x6f float:1.56E-43 double:5.5E-322;
        if (r3 != r2) goto L_0x0955;
    L_0x093a:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
    L_0x0955:
        r2 = "type DESC";
        if (r7 != 0) goto L_0x149d;
    L_0x095a:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0964:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x096f:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0979:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x099f:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x09a9:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_ref_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r7 = "1";
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x09d4:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_g_status_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r7 = "1";
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x09ff:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "status_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 1;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x0a3e:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0a48:
        r2 = "status_groups_retweets_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "status_groups_owner_id=";
        r2 = r2.append(r4);
        r4 = r14.getLastPathSegment();
        r2 = r2.append(r4);
        r4 = " AND ";
        r2 = r2.append(r4);
        r4 = "status_groups_type";
        r2 = r2.append(r4);
        r4 = 61;
        r2 = r2.append(r4);
        r4 = 1;
        r2 = r2.append(r4);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r4 = 135; // 0x87 float:1.89E-43 double:6.67E-322;
        if (r4 != r3) goto L_0x149d;
    L_0x0a89:
        if (r7 != 0) goto L_0x149d;
    L_0x0a8b:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0a95:
        r2 = "status_groups_retweets_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_g_status_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r7 = "1";
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0ac0:
        r2 = "status_groups_retweets_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_ref_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r7 = "1";
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0aeb:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "status_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 2;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x0b2a:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0b34:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "status_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 0;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "newer";
        r2 = r14.getQueryParameter(r2);
        if (r2 == 0) goto L_0x0b8e;
    L_0x0b77:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = " AND status_groups_updated_at>";
        r3 = r3.append(r4);
        r2 = r3.append(r2);
        r2 = r2.toString();
        r0.appendWhere(r2);
    L_0x0b8e:
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        if (r7 != 0) goto L_0x149d;
    L_0x0b93:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0b9d:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "status_groups_type";
        r2 = r2.append(r3);
        r3 = "=";
        r2 = r2.append(r3);
        r3 = 5;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0bdf:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "status_groups_type";
        r2 = r2.append(r3);
        r3 = "=";
        r2 = r2.append(r3);
        r3 = 23;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0c22:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "status_groups_type";
        r2 = r2.append(r3);
        r3 = "=";
        r2 = r2.append(r3);
        r3 = 25;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0c65:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "status_groups_type";
        r2 = r2.append(r3);
        r3 = "=";
        r2 = r2.append(r3);
        r3 = 24;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0ca8:
        r3 = "status_groups_retweets_view";
        r0.setTables(r3);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "status_groups_owner_id=";
        r3 = r3.append(r4);
        r4 = r14.getLastPathSegment();
        r3 = r3.append(r4);
        r4 = " AND ";
        r3 = r3.append(r4);
        r4 = "status_groups_type";
        r3 = r3.append(r4);
        r4 = 61;
        r3 = r3.append(r4);
        r4 = 9;
        r3 = r3.append(r4);
        r3 = r3.toString();
        r0.appendWhere(r3);
        if (r7 != 0) goto L_0x149d;
    L_0x0ce5:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0cef:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_type=21 AND status_groups_tag=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_updated_at ASC, status_groups_g_status_id ASC, status_groups_preview_draft_id ASC, _id DESC";
        if (r7 != 0) goto L_0x149d;
    L_0x0d15:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = java.lang.String.valueOf(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0d1f:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "status_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 12;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0d61:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "status_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 14;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0da3:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0dcb:
        r2 = "status_groups_retweets_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0df3:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND (";
        r2 = r2.append(r3);
        r3 = "status_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 17;
        r2 = r2.append(r3);
        r3 = " )";
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0e3c:
        r2 = "status_groups_retweets_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_owner_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "status_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 17;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0e7e:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_type=33 AND status_groups_tag=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0ea6:
        r4 = 0;
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0eb5:
        r0 = 0;
        r0 = defpackage.buw.b(r0);
        r7 = java.lang.String.valueOf(r0);
        r4 = "timeline_type=0 AND (timeline_data_type_group=0 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0ecf:
        r4 = "timeline_type=1 AND (timeline_data_type_group=1 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0ee0:
        r4 = "timeline_type=6 AND (timeline_data_type_group=28 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0ef1:
        r4 = "timeline_type=5 AND (timeline_data_type_group=27 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0f02:
        r4 = "timeline_type=14 AND (timeline_data_type_group=37 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0f13:
        r4 = "timeline_type=3 AND (timeline_data_type_group=30 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0f24:
        r4 = "timeline_type=4 AND (timeline_data_type_group=8 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0f35:
        r4 = "timeline_type=13 AND (timeline_data_type_group=3 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0f46:
        r4 = "timeline_type=8 AND (timeline_data_type_group=2 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0f57:
        r4 = "timeline_type=2 AND (timeline_data_type_group=17 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0f68:
        r4 = "timeline_type=9 AND (timeline_data_type_group=5 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0f79:
        r4 = "timeline_type=10 AND (timeline_data_type_group=23 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0f8a:
        r4 = "timeline_type=12 AND (timeline_data_type_group=24 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0f9b:
        r4 = "timeline_type=11 AND (timeline_data_type_group=25 OR timeline_data_type_group IS NULL)";
        r0 = r13;
        r2 = r14;
        r3 = r16;
        r5 = r17;
        r6 = r18;
        r0 = r0.a(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x011d;
    L_0x0fac:
        r3 = r14.getLastPathSegment();
        r4 = "dismiss_info_view";
        r0.setTables(r4);
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r6 = "dismiss_info_timeline_id=";
        r4 = r4.append(r6);
        r3 = r4.append(r3);
        r3 = r3.toString();
        r0.appendWhere(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0fd1:
        r2 = "lists_view";
        r0.setTables(r2);
        r2 = "topics_ev_query ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x0fde:
        r2 = "lists_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "topics_ev_query ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1006:
        r2 = "lists_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "topics_ev_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "topics_ev_query ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x102e:
        r2 = "conversation";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "conversation_entries_conversation_id=\"";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = 34;
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "conversation_entries_entry_type";
        r2 = r2.append(r3);
        r3 = defpackage.chr.c;
        r3 = com.twitter.library.provider.di.a(r3);
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "conversation_entries_sort_entry_id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1074:
        r2 = "dm_inbox";
        r0.setTables(r2);
        r2 = "conversations_sort_event_id DESC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1081:
        r2 = "dm_inbox";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "conversations_conversation_id=\"";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = 34;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "conversations_sort_event_id DESC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x10af:
        r2 = "conversation_participants";
        r0.setTables(r2);
        r2 = "participant_type,join_time ASC,CAST(user_id AS INT)";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x10bc:
        r2 = "conversation_participants";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "conversation_id=\"";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = 34;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "participant_type,join_time ASC,CAST(user_id AS INT)";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x10ea:
        r0 = "SELECT COUNT(*) FROM conversations WHERE last_readable_event_id > last_read_event_id AND last_readable_event_id > (SELECT COALESCE((SELECT CAST(next as int) AS last_seen_event_id FROM cursors WHERE kind=14 AND type=0 ORDER BY last_seen_event_id DESC LIMIT 1), 0));";
        r2 = 0;
        r0 = r1.rawQuery(r0, r2);
        r1 = r13.getContext();
        r1 = r1.getContentResolver();
        r0.setNotificationUri(r1, r14);
        goto L_0x011d;
    L_0x10ff:
        r2 = "search_queries";
        r0.setTables(r2);
        r2 = "like";
        r2 = r14.getQueryParameter(r2);
        if (r2 == 0) goto L_0x1131;
    L_0x110e:
        r3 = r2.isEmpty();
        if (r3 != 0) goto L_0x1131;
    L_0x1114:
        r3 = "name LIKE ";
        r0.appendWhere(r3);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r2 = r3.append(r2);
        r3 = "%";
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhereEscapeString(r2);
    L_0x1131:
        r2 = "name ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1138:
        r2 = "search_queries";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "name ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1160:
        r2 = "search_results_view";
        r0.setTables(r2);
        r2 = "polled=0";
        r0.appendWhere(r2);
        r2 = "type_id ASC, _id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1173:
        r2 = "activities";
        r0.setTables(r2);
        r2 = "max_position DESC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1180:
        r2 = "stories_view";
        r0.setTables(r2);
        r2 = com.twitter.util.aj.b(r18);
        if (r2 == 0) goto L_0x1192;
    L_0x118c:
        r2 = r18;
    L_0x118e:
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1192:
        r2 = "story_order DESC, _id ASC";
        goto L_0x118e;
    L_0x1196:
        r0 = r14.getLastPathSegment();
        r2 = "search_id";
        r9 = r14.getQueryParameter(r2);
        r2 = "stories_view";
        r3 = defpackage.cdb.a;
        r4 = "story_id=? AND data_type=?";
        r5 = 2;
        r5 = new java.lang.String[r5];
        r6 = 0;
        r5[r6] = r0;
        r0 = 1;
        r6 = 4;
        r6 = java.lang.String.valueOf(r6);
        r5[r0] = r6;
        r6 = 0;
        r7 = 0;
        r0 = com.twitter.util.aj.a(r18);
        if (r0 == 0) goto L_0x120d;
    L_0x11bf:
        r8 = "story_order DESC, _id ASC";
    L_0x11c2:
        r10 = r1.query(r2, r3, r4, r5, r6, r7, r8);
        r0 = r13.getContext();
        r0 = r0.getContentResolver();
        r10.setNotificationUri(r0, r14);
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r2 = r10.moveToFirst();
        if (r2 == 0) goto L_0x1215;
    L_0x11dc:
        r2 = " AND ";
        r2 = r0.append(r2);
        r3 = "status_groups_g_status_id";
        r2 = r2.append(r3);
        r3 = " NOT IN (";
        r2.append(r3);
        r2 = 1;
        r2 = r10.getLong(r2);
        r0.append(r2);
    L_0x11f8:
        r2 = r10.moveToNext();
        if (r2 == 0) goto L_0x1210;
    L_0x11fe:
        r2 = 44;
        r2 = r0.append(r2);
        r3 = 1;
        r4 = r10.getLong(r3);
        r2.append(r4);
        goto L_0x11f8;
    L_0x120d:
        r8 = r18;
        goto L_0x11c2;
    L_0x1210:
        r2 = 41;
        r0.append(r2);
    L_0x1215:
        r2 = "search_results_view";
        r3 = defpackage.ccu.a;
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "search_id=?";
        r4 = r4.append(r5);
        r0 = r4.append(r0);
        r4 = r0.toString();
        r0 = 1;
        r5 = new java.lang.String[r0];
        r0 = 0;
        r5[r0] = r9;
        r6 = 0;
        r7 = 0;
        r0 = com.twitter.util.aj.a(r18);
        if (r0 == 0) goto L_0x125e;
    L_0x123c:
        r8 = "type_id ASC, _id ASC";
    L_0x123f:
        r1 = r1.query(r2, r3, r4, r5, r6, r7, r8);
        r0 = r13.getContext();
        r0 = r0.getContentResolver();
        r1.setNotificationUri(r0, r14);
        r0 = new android.database.MergeCursor;
        r2 = 2;
        r2 = new android.database.Cursor[r2];
        r3 = 0;
        r2[r3] = r10;
        r3 = 1;
        r2[r3] = r1;
        r0.<init>(r2);
        goto L_0x011d;
    L_0x125e:
        r8 = r18;
        goto L_0x123f;
    L_0x1261:
        r2 = "categories_view";
        r0.setTables(r2);
        r9 = new com.twitter.library.provider.d;
        r6 = 0;
        r2 = com.twitter.util.aj.a(r18);
        if (r2 == 0) goto L_0x1291;
    L_0x1270:
        r7 = "user_groups_view_user_groups_rank ASC ";
    L_0x1273:
        r8 = 0;
        r2 = r15;
        r3 = r16;
        r4 = r17;
        r0 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);
        r9.<init>(r0);
        r9.b();
        r0 = r13.getContext();
        r0 = r0.getContentResolver();
        r9.setNotificationUri(r0, r14);
        r0 = r9;
        goto L_0x011d;
    L_0x1291:
        r7 = r18;
        goto L_0x1273;
    L_0x1294:
        r2 = "notifications";
        r0.setTables(r2);
        r2 = "notif_id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x12a1:
        r2 = "order_history";
        r0.setTables(r2);
        r2 = "ordered_at DESC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x12ae:
        r2 = "news";
        r0.setTables(r2);
        r2 = "_id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x12bb:
        r2 = "news";
        r0.setTables(r2);
        r2 = "topic_id=";
        r0.appendWhere(r2);
        r2 = r14.getLastPathSegment();
        r0.appendWhereEscapeString(r2);
        r2 = "_id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x12d5:
        r2 = "status_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "status_groups_tag=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "status_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 32;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "_id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1317:
        r2 = "user_groups_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "user_groups_tag=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r3 = " AND ";
        r2 = r2.append(r3);
        r3 = "user_groups_type";
        r2 = r2.append(r3);
        r3 = 61;
        r2 = r2.append(r3);
        r3 = 35;
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "_id ASC";
        r7 = "1";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x135c:
        r2 = "moments_guide_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "moments_sections_section_group_type=0 AND moments_sections_section_group_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "moments_guide_section_id ASC, _id";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1384:
        r2 = "moments_guide_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "moments_sections_section_group_type=2 AND moments_sections_section_group_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "moments_guide_section_id ASC, _id";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x13ac:
        r2 = "moments_pages_view";
        r0.setTables(r2);
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "moments_pages_moment_id=";
        r2 = r2.append(r3);
        r3 = r14.getLastPathSegment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0.appendWhere(r2);
        r2 = "_id ASC";
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x13d4:
        r3 = "moments";
        r0.setTables(r3);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "_id=";
        r3 = r3.append(r4);
        r4 = r14.getLastPathSegment();
        r3 = r3.append(r4);
        r3 = r3.toString();
        r0.appendWhere(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x13f9:
        r3 = "moments_guide_view";
        r0.setTables(r3);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "moments_sections_section_group_type=1 AND moments_sections_section_group_id=";
        r3 = r3.append(r4);
        r4 = r14.getLastPathSegment();
        r3 = r3.append(r4);
        r3 = r3.toString();
        r0.appendWhere(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x141e:
        r3 = "moments_guide_categories";
        r0.setTables(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1428:
        r3 = "ads_account_permissions";
        r0.setTables(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1432:
        r3 = "business_profiles";
        r0.setTables(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x143c:
        r3 = "business_profiles";
        r0.setTables(r3);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "_id=";
        r3 = r3.append(r4);
        r4 = r14.getLastPathSegment();
        r3 = r3.append(r4);
        r3 = r3.toString();
        r0.appendWhere(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1461:
        r3 = "business_profiles";
        r0.setTables(r3);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "user_id=";
        r3 = r3.append(r4);
        r4 = r14.getLastPathSegment();
        r3 = r3.append(r4);
        r3 = r3.toString();
        r0.appendWhere(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1486:
        r3 = "dm_card_state";
        r0.setTables(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x1490:
        r3 = "ads_view";
        r0.setTables(r3);
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x149a:
        r10 = r2;
        goto L_0x00c2;
    L_0x149d:
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
    L_0x14a1:
        r8 = r7;
        r9 = r5;
        goto L_0x00ba;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.provider.TwitterProvider.query(android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String):android.database.Cursor");
    }

    private cg a(SQLiteDatabase sQLiteDatabase, Uri uri, String str, String str2, String[] strArr, String str3, String str4) {
        String str5;
        int parseInt;
        int i;
        StringBuilder stringBuilder = new StringBuilder();
        if (str != null) {
            stringBuilder.append("(").append(str).append(")").append(" AND ");
        }
        stringBuilder.append("timeline_owner_id").append('=').append(uri.getLastPathSegment());
        if (aj.b((CharSequence) str2)) {
            stringBuilder.append(" AND ").append(str2);
        }
        String queryParameter = uri.getQueryParameter("newer");
        if (queryParameter != null) {
            stringBuilder.append(" AND ").append("timeline_updated_at").append('>').append(queryParameter);
        }
        if (aj.b((CharSequence) str3)) {
            str5 = str3;
        } else {
            str5 = "status_groups_preview_draft_id DESC, timeline_updated_at DESC, _id ASC";
        }
        try {
            parseInt = Integer.parseInt(str4);
        } catch (NumberFormatException e) {
            parseInt = 0;
        }
        if (parseInt <= 0) {
            i = 400;
        } else {
            i = parseInt;
        }
        if (cfb.a()) {
            SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
            sQLiteQueryBuilder.setTables("timeline_view");
            cfb.b("TwitterProvider", "QUERY: " + sQLiteQueryBuilder.buildQuery(cdc.a, stringBuilder.toString(), null, null, str5, null) + ", POST-GROUPING LIMIT: " + i);
        }
        cg cgVar = new cg(sQLiteDatabase.query("timeline_view", cdc.a, stringBuilder.toString(), strArr, null, null, str5, null));
        cgVar.a(i);
        cgVar.b();
        cgVar.setNotificationUri(getContext().getContentResolver(), uri);
        return cgVar;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Insert not supported " + uri);
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Update not supported: " + uri);
    }

    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Delete not supported: " + uri);
    }

    public String getType(Uri uri) {
        switch (a.match(uri)) {
            case WireMessage.WIRE_CHAT /*1*/:
                return "vnd.android.cursor.dir/vnd.twitter.android.users";
            case WireMessage.WIRE_CONTROL /*2*/:
                return "vnd.android.cursor.item/vnd.twitter.android.users";
            case mx.TweetView_mediaPlaceholderDrawable /*20*/:
                return "vnd.android.cursor.dir/vnd.twitter.android.statuses";
            case mx.TweetView_mediaTopMargin /*21*/:
                return "vnd.android.cursor.item/vnd.twitter.android.statuses";
            case mx.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                return "vnd.android.cursor.dir/vnd.twitter.android.drafts";
            case mx.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                return "vnd.android.cursor.item/vnd.twitter.android.drafts";
            case mx.AppCompatTheme_popupMenuStyle /*60*/:
            case mx.AppCompatTheme_listPreferredItemHeightSmall /*70*/:
            case mx.AppCompatTheme_listPreferredItemPaddingLeft /*72*/:
            case mx.AppCompatTheme_listPreferredItemPaddingRight /*73*/:
            case mx.AppCompatTheme_dropDownListViewStyle /*74*/:
            case mx.AppCompatTheme_listPopupWindowStyle /*75*/:
            case mx.AppCompatTheme_textAppearanceListItem /*76*/:
            case mx.AppCompatTheme_textAppearanceListItemSmall /*77*/:
            case mx.AppCompatTheme_panelBackground /*78*/:
            case mx.AppCompatTheme_listChoiceBackgroundIndicator /*81*/:
            case mx.AppCompatTheme_colorPrimary /*82*/:
            case mx.AppCompatTheme_colorPrimaryDark /*83*/:
            case mx.AppCompatTheme_colorAccent /*84*/:
            case mx.AppCompatTheme_colorControlNormal /*85*/:
            case mx.AppCompatTheme_colorControlActivated /*86*/:
            case mx.AppCompatTheme_colorButtonNormal /*88*/:
            case mx.AppCompatTheme_colorSwitchThumbNormal /*89*/:
            case mx.AppCompatTheme_controlBackground /*90*/:
            case mx.AppCompatTheme_alertDialogStyle /*91*/:
            case mx.AppCompatTheme_buttonBarPositiveButtonStyle /*96*/:
            case mx.AppCompatTheme_buttonBarNegativeButtonStyle /*97*/:
            case mx.AppCompatTheme_buttonBarNeutralButtonStyle /*98*/:
            case mx.AppCompatTheme_autoCompleteTextViewStyle /*99*/:
            case mx.AppCompatTheme_checkboxStyle /*102*/:
            case mx.AppCompatTheme_checkedTextViewStyle /*103*/:
            case mx.AppCompatTheme_radioButtonStyle /*105*/:
                return "vnd.android.cursor.dir/vnd.twitter.android.users.groups";
            case mx.AppCompatTheme_spinnerStyle /*110*/:
                return "vnd.android.cursor.dir/vnd.twitter.android.statuses.groups";
            case mx.AppCompatTheme_switchStyle /*111*/:
                return "vnd.android.cursor.item/vnd.twitter.android.statuses.groups";
            case 120:
            case 123:
            case 124:
            case 125:
            case AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS /*128*/:
            case 129:
            case TransportMediator.KEYCODE_MEDIA_RECORD /*130*/:
            case 131:
            case 132:
            case 135:
            case 136:
            case 138:
            case 139:
            case 140:
            case 146:
            case 147:
                return "vnd.android.cursor.dir/vnd.twitter.android.statuses";
            case 121:
            case 122:
            case 142:
            case 144:
            case 145:
                return "vnd.android.cursor.item/vnd.twitter.android.statuses";
            case 300:
                return "vnd.android.cursor.dir/vnd.twitter.android.lists";
            case 301:
            case 302:
                return "vnd.android.cursor.item/vnd.twitter.android.lists";
            case 400:
            case 401:
            case 402:
            case 403:
            case 404:
            case 406:
            case 413:
            case 414:
                return "vnd.android.cursor.item/vnd.twitter.android.timeline";
            case 520:
                return "vnd.android.cursor.dir/vnd.twitter.android.search.queries";
            case 521:
                return "vnd.android.cursor.item/vnd.twitter.android.search.queries";
            case 522:
                return "vnd.android.cursor.item/vnd.twitter.android.search.results";
            case 700:
                return "vnd.android.cursor.dir/vnd.twitter.android.activities";
            case 850:
                return "vnd.android.cursor.dir/vnd.twitter.android.stories";
            case 851:
                return "vnd.android.cursor.dir/vnd.twitter.android.statuses";
            case 900:
                return "vnd.android.cursor.dir/vnd.twitter.android.search.queries";
            case 1000:
                return "vnd.android.cursor.dir/vnd.twitter.android.notifications";
            case 1400:
                return "vnd.android.cursor.dir/vnd.twitter.android.orderhistory";
            case 1500:
            case 1501:
                return "vnd.android.cursor.dir/vnd.twitter.android.news.news";
            case 1502:
                return "vnd.android.cursor.dir/vnd.twitter.android.statuses";
            case 1700:
                return "vnd.android.cursor.dir/vnd.twitter.android.adsaccountpermissions";
            case 1800:
                return "vnd.android.cursor.dir/vnd.twitter.android.businessprofiles";
            case 1801:
            case 1802:
                return "vnd.android.cursor.item/vnd.twitter.android.businessprofiles";
            case 2100:
                return "vnd.android.cursor.dir/vnd.twitter.android.ads";
            default:
                throw new IllegalArgumentException("Unknown URL " + uri);
        }
    }
}
