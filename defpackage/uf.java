package defpackage;

import android.app.Activity;
import cah;
import caj;
import cmb;
import com.twitter.library.widget.tweet.content.DisplayMode;

/* compiled from: Twttr */
/* renamed from: uf */
public class uf extends caj {
    public boolean a(DisplayMode displayMode, cmb cmb) {
        return true;
    }

    public cah a(Activity activity, DisplayMode displayMode, cmb cmb) {
        if (DisplayMode.a == displayMode || DisplayMode.e == displayMode) {
            return new uj(activity, displayMode);
        }
        return new ue(activity, displayMode);
    }
}
