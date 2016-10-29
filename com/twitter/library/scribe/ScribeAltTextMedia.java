package com.twitter.library.scribe;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.preference.PreferenceManager;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import java.util.List;

/* compiled from: Twttr */
public class ScribeAltTextMedia extends MapScribeItem {
    public static final Creator<ScribeAltTextMedia> CREATOR;
    private static final String[] a;

    static {
        CREATOR = new s();
        a = new String[]{"alt_text_enabled", "has_alt_text", "alt_text_length"};
    }

    public ScribeAltTextMedia(Context context, List<DraftAttachment> list) {
        boolean z = false;
        super(a.length);
        boolean z2 = PreferenceManager.getDefaultSharedPreferences(context).getBoolean("compose_alt_text", false);
        a(0, (Object) Boolean.valueOf(z2));
        if (z2 && !list.isEmpty()) {
            int i = 0;
            for (DraftAttachment a : list) {
                int i2;
                EditableMedia a2 = a.a(2);
                if (a2 == null || !(a2 instanceof EditableImage)) {
                    i2 = 0;
                } else {
                    i2 = ((EditableImage) a2).a().length();
                }
                i = i2 + i;
            }
            if (i > 0) {
                z = true;
            }
            a(1, (Object) Boolean.valueOf(z));
            a(2, (Object) Integer.valueOf(i));
        }
    }

    ScribeAltTextMedia(Parcel parcel) {
        super(parcel);
    }

    protected String a(int i) {
        return a[i];
    }
}
