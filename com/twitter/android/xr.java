package com.twitter.android;

import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import cey;
import com.google.android.exoplayer.util.Util;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import com.twitter.library.client.bg;
import com.twitter.library.service.x;
import com.twitter.ui.widget.TwitterEditText;
import defpackage.boc;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class xr extends Handler {
    private final WeakReference<UsernameEntryFragment> a;

    public xr(UsernameEntryFragment usernameEntryFragment) {
        this.a = new WeakReference(usernameEntryFragment);
    }

    public void handleMessage(Message message) {
        UsernameEntryFragment usernameEntryFragment = (UsernameEntryFragment) this.a.get();
        if (usernameEntryFragment != null && usernameEntryFragment.ad()) {
            TwitterEditText twitterEditText = usernameEntryFragment.b;
            switch (message.what) {
                case Util.TYPE_OTHER /*3*/:
                    State state;
                    Level level;
                    Editable text = twitterEditText.getText();
                    boolean matches = cey.d.matcher(text).matches();
                    if (text.length() < 5) {
                        usernameEntryFragment.b.setError(2131363541);
                        state = State.d;
                        level = Level.a;
                    } else if (!cey.a.matcher(text).matches() || matches) {
                        usernameEntryFragment.b.setError(UsernameEntryFragment.b(text));
                        state = State.d;
                        level = Level.a;
                    } else {
                        x a = boc.a(usernameEntryFragment.getActivity(), bg.a().c(), 2, text.toString());
                        state = State.b;
                        level = Level.b;
                        usernameEntryFragment.a(a);
                    }
                    usernameEntryFragment.h.a(state, level);
                default:
            }
        }
    }

    public void a(int i) {
        removeMessages(i);
        sendEmptyMessageDelayed(i, 1000);
    }
}
