package defpackage;

import bha;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import com.twitter.library.util.aq;
import com.twitter.model.dms.ae;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bjc */
public class bjc extends bha {
    private final boolean k;
    private final boolean l;
    private final ae m;

    public bjc(bjd bjd) {
        super(bjd);
        this.k = bjd.b;
        this.l = bjd.c;
        this.m = bjd.d;
    }

    public CharSequence a() {
        switch (this.i) {
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return k();
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return m();
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                return l();
            case bdd.TweetView_mediaTopMargin /*21*/:
                return i();
            case bdd.TweetView_mediaBottomMargin /*22*/:
                return j();
            default:
                return super.a();
        }
    }

    protected boolean c() {
        return super.c() && !this.k;
    }

    protected CharSequence d() {
        if (n()) {
            return aq.a(this.a, bdc.dm_someone_replied_privately_to_your_tweet, new Object[]{this.d});
        }
        int i;
        String str = this.m.e.d;
        if (this.b == this.m.e.b) {
            i = 1;
        } else {
            i = 0;
        }
        if (this.g) {
            if (this.k) {
                if (i != 0) {
                    return aq.a(this.a, bdc.dm_you_shared_your_own_tweet_with_message, new Object[]{this.e});
                }
                return aq.a(this.a, bdc.dm_you_shared_someones_tweet_with_message, new Object[]{str, this.e});
            } else if (this.f) {
                return aq.a(this.a, bdc.dm_shared_someones_tweet_in_a_group_with_message, new Object[]{this.d, str, this.e});
            } else {
                return aq.a(this.a, bdc.dm_shared_someones_tweet_with_message, new Object[]{str, this.e});
            }
        } else if (this.k) {
            if (i != 0) {
                return aq.a(this.a, bdc.dm_you_shared_your_own_tweet, new Object[0]);
            }
            return aq.a(this.a, bdc.dm_you_shared_someones_tweet, new Object[]{str});
        } else if (this.f) {
            return aq.a(this.a, bdc.dm_shared_someones_tweet_in_a_group, new Object[]{this.d, str});
        } else {
            return aq.a(this.a, bdc.dm_shared_someones_tweet, new Object[]{str});
        }
    }

    protected CharSequence f() {
        if (!this.k) {
            return super.f();
        }
        if (!this.g) {
            return aq.a(this.a, bdc.dm_you_sent_a_video, new Object[0]);
        }
        return aq.a(this.a, bdc.dm_you_sent_a_video_with_message, new Object[]{this.e});
    }

    protected CharSequence e() {
        if (!this.k) {
            return super.e();
        }
        if (!this.g) {
            return aq.a(this.a, bdc.dm_you_sent_a_gif, new Object[0]);
        }
        return aq.a(this.a, bdc.dm_you_sent_a_gif_with_message, new Object[]{this.e});
    }

    protected CharSequence g() {
        if (!this.g || !this.k) {
            return super.g();
        }
        return aq.a(this.a, bdc.dm_you_sent_a_photo_with_message, new Object[]{this.e});
    }

    protected CharSequence c(boolean z) {
        if (this.k) {
            return aq.a(this.a, bdc.dm_you_sent_a_photo, new Object[0]);
        }
        return super.c(z);
    }

    protected CharSequence h() {
        if (aj.a(this.d)) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        return aq.a(this.a, bdc.dm_italicized_added_you, new Object[]{this.d});
    }

    private CharSequence i() {
        return aq.a(this.a, bdc.dm_italicized_cs_feedback_submitted_text, new Object[0]);
    }

    private CharSequence j() {
        return aq.a(this.a, bdc.dm_italicized_cs_feedback_dismissed_text, new Object[0]);
    }

    private CharSequence k() {
        if (aj.a(this.e)) {
            if (aj.a(this.d)) {
                return aq.a(this.a, bdc.dm_italicized_group_name_removed, new Object[0]);
            }
            if (this.k) {
                return aq.a(this.a, bdc.dm_italicized_you_removed_group_name, new Object[0]);
            }
            return aq.a(this.a, bdc.dm_italicized_user_removed_group_name, new Object[]{this.d});
        } else if (aj.a(this.d)) {
            return aq.a(this.a, bdc.dm_italicized_group_name_changed, new Object[]{r0});
        } else if (this.k) {
            return aq.a(this.a, bdc.dm_italicized_you_changed_group_name, new Object[]{r0});
        } else {
            return aq.a(this.a, bdc.dm_italicized_user_changed_group_name, new Object[]{this.d, r0});
        }
    }

    private CharSequence l() {
        if (this.k) {
            return aq.a(this.a, this.l ? bdc.dm_italicized_you_removed_group_photo : bdc.dm_italicized_you_updated_group_photo, new Object[0]);
        }
        return aq.a(this.a, this.l ? bdc.dm_italicized_user_removed_group_photo : bdc.dm_italicized_user_updated_group_photo, new Object[]{this.d});
    }

    private CharSequence m() {
        String str = this.e;
        if (aj.a(this.d)) {
            return aq.a(this.a, bdc.dm_italicized_participant_added_by_deleted_user, new Object[]{str});
        } else if (this.k) {
            return aq.a(this.a, bdc.dm_italicized_participant_added_by_you, new Object[]{str});
        } else {
            return aq.a(this.a, bdc.dm_italicized_participant_added_by_user, new Object[]{this.d, str});
        }
    }

    private boolean n() {
        return (this.c != this.m.e.b || this.c == this.b || this.f) ? false : true;
    }
}
