package com.twitter.android;

import android.os.Handler;
import android.os.Message;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class li extends Handler {
    private final WeakReference<PhoneEntryFragment> a;

    public li(PhoneEntryFragment phoneEntryFragment) {
        this.a = new WeakReference(phoneEntryFragment);
    }

    public void handleMessage(Message message) {
        PhoneEntryFragment phoneEntryFragment = (PhoneEntryFragment) this.a.get();
        if (phoneEntryFragment != null && phoneEntryFragment.ad()) {
            switch (message.what) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    State state;
                    Level level;
                    Object j = phoneEntryFragment.j();
                    if (iy.b.matcher(j).matches()) {
                        PhoneEntryFragment.a(phoneEntryFragment).a(j, phoneEntryFragment);
                        state = State.b;
                        level = Level.b;
                    } else {
                        phoneEntryFragment.a.setError(2131363791);
                        state = State.d;
                        level = Level.a;
                    }
                    if (PhoneEntryFragment.b(phoneEntryFragment) != null) {
                        PhoneEntryFragment.b(phoneEntryFragment).a(state, level);
                    } else {
                        PhoneEntryFragment.c(phoneEntryFragment).a(state == State.c);
                    }
                default:
            }
        }
    }

    public void a(int i) {
        removeMessages(i);
        sendEmptyMessageDelayed(i, 800);
    }
}
