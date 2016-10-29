package defpackage;

import bha;
import bjz;
import com.twitter.library.util.aq;

/* compiled from: Twttr */
/* renamed from: bjy */
public class bjy extends bha {
    private final boolean k;
    private final boolean l;

    public bjy(bjz bjz) {
        super(bjz);
        this.k = bjz.a(bjz);
        boolean z = (this.k || this.f) && this.j;
        this.l = z;
    }

    protected CharSequence f() {
        if (!this.g) {
            return b(this.l);
        }
        if (this.l) {
            return aq.a(this.a, bdc.dm_user_sent_a_video_with_message_for_push_notification, new Object[]{this.d, this.e});
        }
        return aq.a(this.a, bdc.dm_sent_a_video_with_message_for_push_notification, new Object[]{this.e});
    }

    protected CharSequence e() {
        if (!this.g) {
            return a(this.l);
        }
        if (this.l) {
            return aq.a(this.a, bdc.dm_user_sent_a_gif_with_message_for_push_notification, new Object[]{this.d, this.e});
        }
        return aq.a(this.a, bdc.dm_sent_a_gif_with_message_for_push_notification, new Object[]{this.e});
    }

    protected CharSequence g() {
        if (!this.g) {
            return c(this.l);
        }
        if (this.l) {
            return aq.a(this.a, bdc.dm_user_sent_a_photo_with_message_for_push_notification, new Object[]{this.d, this.e});
        }
        return aq.a(this.a, bdc.dm_sent_a_photo_with_message_for_push_notification, new Object[]{this.e});
    }

    protected boolean c() {
        return super.c() || this.k;
    }

    protected CharSequence d() {
        if (this.g) {
            if (this.l) {
                return aq.a(this.a, bdc.dm_shared_tweet_with_you_with_message_for_push_notification, new Object[]{this.d, this.e});
            }
            return aq.a(this.a, bdc.dm_shared_tweet_with_you_with_message, new Object[]{this.e});
        } else if (!this.l) {
            return aq.a(this.a, bdc.dm_shared_tweet_with_you, new Object[0]);
        } else {
            return aq.a(this.a, bdc.dm_shared_tweet_with_you_for_push_notification, new Object[]{this.d});
        }
    }

    protected CharSequence h() {
        return this.a.getString(bdc.dm_added_you_to_a_group);
    }
}
