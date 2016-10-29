package com.twitter.android;

import android.os.Handler;
import android.os.Message;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import defpackage.bpe;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class lb extends Handler {
    private final WeakReference<PasswordEntryFragment> a;

    public lb(PasswordEntryFragment passwordEntryFragment) {
        this.a = new WeakReference(passwordEntryFragment);
    }

    public void handleMessage(Message message) {
        PasswordEntryFragment passwordEntryFragment = (PasswordEntryFragment) this.a.get();
        if (passwordEntryFragment != null && passwordEntryFragment.ad()) {
            switch (message.what) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    State state;
                    Level level;
                    if (passwordEntryFragment.a.length() < 6) {
                        passwordEntryFragment.a.setError(2131363789);
                        state = State.d;
                        level = Level.a;
                    } else {
                        passwordEntryFragment.a(new bpe(passwordEntryFragment.T, passwordEntryFragment.aT(), passwordEntryFragment.a.getText().toString(), null, null));
                        state = State.b;
                        level = Level.b;
                    }
                    if (passwordEntryFragment.o != null) {
                        passwordEntryFragment.o.a(state, level);
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
