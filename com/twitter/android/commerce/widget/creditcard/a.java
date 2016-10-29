package com.twitter.android.commerce.widget.creditcard;

import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;

/* compiled from: Twttr */
class a extends InputConnectionWrapper {
    final /* synthetic */ CardEntryBase a;

    a(CardEntryBase cardEntryBase, InputConnection inputConnection, boolean z) {
        this.a = cardEntryBase;
        super(inputConnection, z);
    }

    public boolean sendKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 67) {
            this.a.c();
        }
        return super.sendKeyEvent(keyEvent);
    }

    public boolean deleteSurroundingText(int i, int i2) {
        long uptimeMillis = SystemClock.uptimeMillis();
        sendKeyEvent(new KeyEvent(uptimeMillis, uptimeMillis, 0, 67, 0, 0, -1, 0, 22));
        sendKeyEvent(new KeyEvent(SystemClock.uptimeMillis(), uptimeMillis, 1, 67, 0, 0, -1, 0, 22));
        return true;
    }
}
