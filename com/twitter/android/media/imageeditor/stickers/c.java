package com.twitter.android.media.imageeditor.stickers;

import android.content.ComponentName;
import com.twitter.android.mx;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.ScribeItemMediaDetails;
import com.twitter.library.scribe.ScribeItemSendStickerPhotoTweet;
import com.twitter.library.scribe.ScribeItemShared;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.drafts.d;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bbu;
import java.util.Collection;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class c {
    public static void a(long j, EditableImage editableImage) {
        Collection collection = editableImage.h;
        if (!CollectionUtils.b(collection)) {
            bbu.a((TwitterScribeLog) new TwitterScribeLog(j, ":composition:image_attachment:sticker:add").a((long) collection.size()));
        }
    }

    public static void a(long j, int i) {
        String str;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                str = ":composition:sticker_category_recent:sticker:select";
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                str = ":composition:sticker_category_featured:sticker:select";
                break;
            default:
                str = ":composition:sticker_category_other:sticker:select";
                break;
        }
        bbu.a(new TwitterScribeLog(j, str));
    }

    public static void a(long j, d dVar) {
        List<DraftAttachment> list = dVar.d;
        int i = 0;
        for (DraftAttachment a : list) {
            int size;
            EditableMedia a2 = a.a(3);
            if (a2 instanceof EditableImage) {
                List list2 = ((EditableImage) a2).h;
                if (list2 != null) {
                    size = i + list2.size();
                    i = size;
                }
            }
            size = i;
            i = size;
        }
        if (i > 0) {
            bbu.a((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j, ":composition:::send_sticker_photo_tweet").a((long) i)).b((ScribeItem) new ScribeItemSendStickerPhotoTweet().a(new ScribeItemMediaDetails().b(list.size()))));
        }
    }

    public static void a(long j) {
        bbu.a((TwitterScribeLog) new TwitterScribeLog(j).b("gallery::gallery:sticker:click"));
    }

    public static void a(long j, String str) {
        bbu.a((TwitterScribeLog) new TwitterScribeLog(j).b("sticker_timeline", str, "::impression"));
    }

    public static void b(long j, String str) {
        bbu.a((TwitterScribeLog) new TwitterScribeLog(j).b("sticker_timeline", str, "share_sheet::impression"));
    }

    public static void a(long j, ComponentName componentName, String str) {
        String str2;
        String flattenToShortString = componentName.flattenToShortString();
        int i = -1;
        switch (flattenToShortString.hashCode()) {
            case -1789280118:
                if (flattenToShortString.equals("com.google.android.apps.docs/.drive.clipboard.SendTextToClipboardActivity")) {
                    i = 1;
                    break;
                }
                break;
            case 1469604096:
                if (flattenToShortString.equals("com.twitter.android/.UrlInterpreterActivity")) {
                    i = 0;
                    break;
                }
                break;
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
                str2 = "share_via_dm";
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                str2 = "share_via_copy";
                break;
            default:
                str2 = "share";
                break;
        }
        bbu.a((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b("sticker_timeline", str, "share_sheet:", str2)).a((ScribeItem) new ScribeItemShared(componentName)));
    }
}
