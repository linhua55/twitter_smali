package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.support.annotation.StringRes;
import android.text.method.KeyListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.widget.TextView;
import com.twitter.android.as;
import com.twitter.android.at;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.library.client.bg;
import com.twitter.model.profile.ExtendedProfile.Visibility;
import com.twitter.ui.widget.TwitterSelection;
import com.twitter.ui.widget.v;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* compiled from: Twttr */
/* renamed from: vr */
public class vr {
    public static Calendar a(long j) {
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(j);
        instance.add(1, -13);
        return instance;
    }

    public static Calendar b(long j) {
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(j);
        instance.add(1, -120);
        return instance;
    }

    public static Calendar a() {
        Calendar instance = Calendar.getInstance();
        instance.add(1, -18);
        return instance;
    }

    public static String a(int i, int i2, int i3) {
        Calendar instance = Calendar.getInstance();
        instance.set(i3, i2 - 1, i);
        return SimpleDateFormat.getDateInstance(1).format(instance.getTime());
    }

    public static as a(Context context, Visibility[] visibilityArr, at atVar) {
        as asVar = new as(context, visibilityArr);
        asVar.a(atVar);
        return asVar;
    }

    public static void a(TwitterSelection twitterSelection, v vVar, @StringRes int i, OnClickListener onClickListener, OnFocusChangeListener onFocusChangeListener, KeyListener keyListener) {
        twitterSelection.setSelectionAdapter(vVar);
        View displayLayout = twitterSelection.getDisplayLayout();
        displayLayout.setOnClickListener(onClickListener);
        displayLayout.setOnFocusChangeListener(onFocusChangeListener);
        ((TextView) displayLayout).setKeyListener(keyListener);
        Dialog dialog = twitterSelection.getDialog();
        ((TextView) dialog.findViewById(2131952392)).setText(i);
        dialog.findViewById(2131952393).setOnClickListener(onClickListener);
    }

    public static void a(Context context) {
        OpenUriHelper.a(context, null, "https://support.twitter.com/articles/20172733", bg.a().c().g(), null, null, null);
    }
}
