package com.twitter.library.av.playback;

import com.twitter.config.AppConfig;
import com.twitter.library.av.playback.AVPlayerAttachment.AttachmentState;
import java.util.LinkedHashSet;
import java.util.Set;
import rx.o;
import rx.subjects.e;

/* compiled from: Twttr */
public class as {
    private final Set<AVPlayerAttachment> a;
    private AVPlayerAttachment b;
    private final e<AVPlayerAttachment> c;

    public as() {
        this.a = new LinkedHashSet();
        this.c = e.q();
    }

    public AVPlayerAttachment a() {
        return this.b;
    }

    public Iterable<AVPlayerAttachment> b() {
        return this.a;
    }

    public as a(AVPlayerAttachment aVPlayerAttachment) {
        synchronized (this.a) {
            this.a.add(aVPlayerAttachment);
        }
        return this;
    }

    public as b(AVPlayerAttachment aVPlayerAttachment) {
        synchronized (this.a) {
            this.a.remove(aVPlayerAttachment);
        }
        if (this.b == aVPlayerAttachment) {
            aVPlayerAttachment.j();
        }
        return this;
    }

    public as c(AVPlayerAttachment aVPlayerAttachment) {
        if (this.a.contains(aVPlayerAttachment) || !AppConfig.m().a()) {
            AVPlayerAttachment aVPlayerAttachment2 = this.b;
            if (aVPlayerAttachment2 != aVPlayerAttachment) {
                if (aVPlayerAttachment2 != null) {
                    aVPlayerAttachment2.a(AttachmentState.b);
                    e(aVPlayerAttachment2);
                }
                this.b = aVPlayerAttachment;
                aVPlayerAttachment.a(AttachmentState.c);
                aVPlayerAttachment.k();
                this.c.b_(aVPlayerAttachment);
            }
            return this;
        }
        throw new IllegalArgumentException("An attachment can only take control if it is already registered with the player");
    }

    public as d(AVPlayerAttachment aVPlayerAttachment) {
        AVPlayerAttachment aVPlayerAttachment2 = this.b;
        aVPlayerAttachment.a(AttachmentState.a);
        if (aVPlayerAttachment2 == aVPlayerAttachment) {
            e(aVPlayerAttachment2);
            synchronized (this.a) {
                for (AVPlayerAttachment aVPlayerAttachment22 : this.a) {
                    if (aVPlayerAttachment22.c() == AttachmentState.b) {
                        break;
                    }
                }
                aVPlayerAttachment22 = null;
            }
            if (aVPlayerAttachment22 != null) {
                c(aVPlayerAttachment22);
            } else {
                this.c.b_(null);
            }
        }
        return this;
    }

    private boolean e(AVPlayerAttachment aVPlayerAttachment) {
        if (this.b != aVPlayerAttachment) {
            return false;
        }
        this.b = null;
        aVPlayerAttachment.l();
        return true;
    }

    public o<AVPlayerAttachment> c() {
        return this.c;
    }
}
