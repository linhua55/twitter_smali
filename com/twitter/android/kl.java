package com.twitter.android;

import android.os.Handler;
import android.os.Message;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import com.twitter.library.util.aq;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class kl extends Handler {
    private final WeakReference<NameEntryFragment> a;

    public kl(NameEntryFragment nameEntryFragment) {
        this.a = new WeakReference(nameEntryFragment);
    }

    public void handleMessage(Message message) {
        NameEntryFragment nameEntryFragment = (NameEntryFragment) this.a.get();
        if (nameEntryFragment != null && nameEntryFragment.ad()) {
            switch (message.what) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    State state;
                    String trim = nameEntryFragment.a.getText().toString().trim();
                    String c = aq.c(trim);
                    boolean z = trim.length() > 0 && trim.equals(c);
                    nameEntryFragment.a(z);
                    if (z) {
                        state = State.c;
                    } else {
                        if (trim.equals(c)) {
                            nameEntryFragment.a.setError(2131363787);
                        } else {
                            nameEntryFragment.a.setError(2131363786);
                        }
                        state = State.d;
                    }
                    nameEntryFragment.g.a(state, Level.a);
                default:
            }
        }
    }

    public void a(int i) {
        removeMessages(i);
        sendEmptyMessageDelayed(i, 1000);
    }
}
