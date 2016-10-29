package com.twitter.android.av.audio;

import android.content.res.Resources;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.model.av.c;

/* compiled from: Twttr */
public class AudioCardErrorDialog extends PromptDialogFragment {
    public static AudioCardErrorDialog a(Resources resources, c cVar) {
        CharSequence charSequence = null;
        AudioCardError a = AudioCardError.a(cVar);
        int a2 = i.a.a(a);
        int b = i.a.b(a);
        ec ecVar = (ec) new b(cVar.b).a(a2 == 0 ? null : resources.getString(a2));
        if (b != 0) {
            charSequence = resources.getString(b);
        }
        return (AudioCardErrorDialog) ((ec) ((ec) ecVar.a(charSequence)).d(2131363218)).i();
    }
}
