package com.twitter.android;

import android.os.Handler;
import android.os.Message;
import cew;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import com.twitter.config.AppConfig;
import com.twitter.library.util.aq;
import defpackage.boc;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class fc extends Handler {
    private final WeakReference<EmailEntryFragment> a;

    public fc(EmailEntryFragment emailEntryFragment) {
        this.a = new WeakReference(emailEntryFragment);
    }

    public void handleMessage(Message message) {
        EmailEntryFragment emailEntryFragment = (EmailEntryFragment) this.a.get();
        if (emailEntryFragment != null) {
            switch (message.what) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    State state;
                    Level level;
                    String obj = emailEntryFragment.b.getText().toString();
                    if (cew.c.matcher(obj).matches() && aq.a(EmailEntryFragment.a(emailEntryFragment), AppConfig.m().l(), obj)) {
                        EmailEntryFragment.a(emailEntryFragment, boc.a(EmailEntryFragment.b(emailEntryFragment), EmailEntryFragment.c(emailEntryFragment), 1, obj), 1, 0);
                        state = State.b;
                        level = Level.b;
                    } else {
                        emailEntryFragment.b.setError(2131363785);
                        state = State.d;
                        level = Level.a;
                    }
                    if (EmailEntryFragment.d(emailEntryFragment) != null) {
                        EmailEntryFragment.d(emailEntryFragment).a(state, level);
                    }
                default:
            }
        }
    }

    public void a(int i) {
        removeMessages(i);
        sendEmptyMessageDelayed(i, 1000);
    }
}
