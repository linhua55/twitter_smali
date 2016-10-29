package tv.periscope.android.ui.broadcast.moderator;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import java.lang.ref.WeakReference;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
class k extends Handler {
    private final WeakReference<ModeratorView> a;
    private long b;
    private long c;

    k(ModeratorView moderatorView) {
        this.a = new WeakReference(moderatorView);
    }

    void a() {
        this.b = 0;
        this.c = 0;
        removeMessages(1);
        removeMessages(2);
        removeMessages(3);
    }

    private void a(ModeratorView moderatorView) {
        moderatorView.x = null;
        moderatorView.g = true;
        removeMessages(3);
        moderatorView.n.setProgress(0);
    }

    public void handleMessage(Message message) {
        ModeratorView moderatorView = (ModeratorView) this.a.get();
        if (moderatorView != null) {
            switch (message.what) {
                case p.View_android_focusable /*1*/:
                    if (moderatorView.w != null) {
                        moderatorView.w.n();
                    }
                    a(moderatorView);
                case p.View_paddingStart /*2*/:
                    if (moderatorView.w != null) {
                        moderatorView.w.o();
                    }
                    a(moderatorView);
                case p.View_paddingEnd /*3*/:
                    int i;
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    int i2 = this.b == 0 ? 0 : (int) (elapsedRealtime - this.b);
                    if (this.c == 0) {
                        i = 0;
                    } else {
                        i = (int) (elapsedRealtime - this.c);
                    }
                    i2 = Math.max(0, moderatorView.n.getProgress() - i2);
                    moderatorView.n.setProgress(i2);
                    moderatorView.e();
                    sendEmptyMessageDelayed(3, (long) Math.min(0, 16 - i));
                    this.b = SystemClock.elapsedRealtime();
                    if (this.c == 0) {
                        this.c = this.b + 16;
                    } else {
                        this.c = ((long) (((i / 16) + 1) * 16)) + this.c;
                    }
                    if (moderatorView.x != null) {
                        moderatorView.x.a(i2);
                    }
                default:
            }
        }
    }
}
