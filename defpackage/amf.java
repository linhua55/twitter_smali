package defpackage;

import android.content.ContentUris;
import android.net.Uri;
import aow;
import aoy;
import com.twitter.android.mx;
import com.twitter.config.d;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.dd;
import com.twitter.library.provider.df;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;
import zu;

/* compiled from: Twttr */
/* renamed from: amf */
public class amf {
    public static aow a(amc amc) {
        Uri withAppendedId;
        String[] strArr;
        String str;
        String str2;
        String[] strArr2 = null;
        int i = amc.a;
        long j = amc.b;
        long j2 = amc.c;
        long j3 = amc.d;
        boolean z = amc.e;
        String str3 = amc.g;
        zu zuVar;
        switch (i) {
            case mx.View_android_theme /*0*/:
                withAppendedId = ContentUris.withAppendedId(df.b, j3);
                strArr = cdc.a;
                str = "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC";
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                withAppendedId = ContentUris.withAppendedId(df.c, j3);
                strArr = cdc.a;
                str = "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC";
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (!d.a("urt_favorites_timeline_enabled")) {
                    zuVar = new zu();
                    withAppendedId = zuVar.a(ContentUris.withAppendedId(dd.j, j3), ContentUris.withAppendedId(df.j, j3));
                    strArr = zuVar.a();
                    str = zuVar.b();
                    break;
                }
                withAppendedId = ContentUris.withAppendedId(df.j, j3);
                strArr = cdc.a;
                str = "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC";
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                withAppendedId = ContentUris.withAppendedId(df.i, j3);
                strArr = cdc.a;
                str = "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC";
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                zuVar = new zu();
                withAppendedId = zuVar.a(ContentUris.withAppendedId(dd.e, j3), ContentUris.withAppendedId(df.l, j3));
                strArr = zuVar.a();
                str = zuVar.b();
                break;
            case ControlMessage.CONTROL_BAN /*8*/:
                withAppendedId = ContentUris.withAppendedId(df.h, j3);
                strArr = cdc.a;
                str = "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC";
                break;
            case mx.TwitterEditText_messageSize /*9*/:
                withAppendedId = ContentUris.withAppendedId(dd.d, j3);
                strArr = cdg.b;
                str = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
                break;
            case mx.TwitterButton_bounded /*17*/:
                zuVar = new zu();
                withAppendedId = zuVar.a(ContentUris.withAppendedId(dd.q, j3), ContentUris.withAppendedId(df.k, j3));
                strArr = zuVar.a();
                str = zuVar.b();
                break;
            case mx.TweetView_mediaDivider /*23*/:
                zuVar = new zu();
                withAppendedId = zuVar.a(ContentUris.withAppendedId(dd.f, j3), ContentUris.withAppendedId(df.n, j3));
                strArr = zuVar.a();
                str = zuVar.b();
                break;
            case mx.TweetView_autoLink /*24*/:
                zuVar = new zu();
                withAppendedId = zuVar.a(ContentUris.withAppendedId(dd.h, j3), ContentUris.withAppendedId(df.o, j3));
                strArr = zuVar.a();
                str = zuVar.b();
                break;
            case mx.TweetView_linkSelectedColor /*25*/:
                zuVar = new zu();
                withAppendedId = zuVar.a(ContentUris.withAppendedId(dd.g, j3), ContentUris.withAppendedId(df.m, j3));
                strArr = zuVar.a();
                str = zuVar.b();
                break;
            case mx.TweetView_mediaTagIcon /*27*/:
                withAppendedId = ContentUris.withAppendedId(df.e, j3);
                strArr = cdc.a;
                str = "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC";
                break;
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                withAppendedId = ContentUris.withAppendedId(df.d, j3);
                strArr = cdc.a;
                str = "status_groups_preview_draft_id DESC, timeline_updated_at DESC, _id ASC";
                break;
            case mx.AppCompatTheme_actionModeSplitBackground /*30*/:
                withAppendedId = ContentUris.withAppendedId(df.g, j3);
                strArr = cdc.a;
                str = "status_groups_preview_draft_id DESC, timeline_updated_at DESC, _id ASC";
                break;
            case mx.AppCompatTheme_actionModeFindDrawable /*37*/:
                withAppendedId = ContentUris.withAppendedId(df.f, j3);
                strArr = cdc.a;
                str = "status_groups_preview_draft_id ASC, timeline_sort_index ASC, timeline_updated_at ASC, _id ASC";
                break;
            default:
                throw new IllegalArgumentException("Invalid status type: " + i);
        }
        if (!"unspecified".equals(str3)) {
            str2 = "timeline_timeline_tag=?";
            strArr2 = new String[]{str3};
        } else if (j > 0) {
            str2 = "status_groups_tag=?";
            strArr2 = new String[]{Long.toString(j)};
        } else if (i == 1) {
            str2 = "p_format IS NULL OR p_format=?";
            strArr2 = z ? new String[]{"profile_self"} : new String[]{"profile_other"};
        } else if (i == 0) {
            str2 = "p_format IS NULL OR p_format=?";
            strArr2 = new String[]{"home_timeline"};
        } else {
            str2 = i == 17 ? amc.f ? "statuses_flags&50689!= 0" : "statuses_flags&50689!= 0 AND statuses_flags&64 = 0" : null;
        }
        return new aoy().a(ck.a(withAppendedId, j2)).a(strArr).a(str2).b(strArr2).b(str).a();
    }
}
