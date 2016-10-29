package com.twitter.android.composer;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.mx;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.ScribeItemSendMedia;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableMedia;
import defpackage.bbu;
import defpackage.bbw;
import java.util.Collections;
import java.util.List;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class bi {
    public static void a(long j, ComposerType composerType, List<DraftAttachment> list) {
        String str;
        String str2;
        String str3 = composerType.scribeName;
        switch (list.size()) {
            case mx.View_android_theme /*0*/:
                str = BuildConfig.VERSION_NAME;
                str2 = "send";
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                DraftAttachment draftAttachment = (DraftAttachment) list.get(0);
                str = draftAttachment.h.e() ? "remote" : "local";
                switch (bj.a[draftAttachment.g.ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        str2 = "send_1_photo_tweet";
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                    case WireMessage.WIRE_AUTH /*3*/:
                        str2 = "send_video_tweet";
                        break;
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        str2 = "send_gif_tweet";
                        break;
                    default:
                        str2 = "send";
                        break;
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                str = "local";
                str2 = "send_2_photo_tweet";
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                str = "local";
                str2 = "send_3_photo_tweet";
                break;
            default:
                str = "local";
                str2 = "send_4_photo_tweet";
                break;
        }
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(j).b(BuildConfig.VERSION_NAME, str3, "tweet", str, str2);
        for (DraftAttachment a : list) {
            EditableMedia a2 = a.a(2);
            if (a2 != null) {
                bbw.a((ScribeItem) new ScribeItemSendMedia(a2));
            }
        }
        bbu.a(bbw);
    }

    public static void a(long j, ComposerType composerType, DraftAttachment draftAttachment) {
        a(j, composerType, draftAttachment == null ? Collections.emptyList() : Collections.singletonList(draftAttachment));
    }
}
