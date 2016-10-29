package com.twitter.android.livevideo.player;

import com.twitter.library.av.playback.AVPlayerAttachment;
import cys;
import defpackage.bcw;
import defpackage.bdc;

/* compiled from: Twttr */
class j implements cys<AVPlayerAttachment> {
    final /* synthetic */ h a;

    j(h hVar) {
        this.a = hVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((AVPlayerAttachment) obj);
    }

    public void a(AVPlayerAttachment aVPlayerAttachment) {
        if (aVPlayerAttachment.a().u()) {
            this.a.b.setImageResource(bcw.ic_video_pause_btn);
            this.a.b.setContentDescription(this.a.d.getString(bdc.pause));
        } else {
            this.a.b.setImageResource(bcw.ic_video_play_btn);
            this.a.b.setContentDescription(this.a.d.getString(bdc.play));
        }
        if (aVPlayerAttachment.b().e()) {
            this.a.c.setImageResource(bcw.ic_video_collapse_btn);
            this.a.c.setContentDescription(this.a.d.getString(bdc.av_player_button_collapse));
            return;
        }
        this.a.c.setImageResource(bcw.ic_video_expand_btn);
        this.a.c.setContentDescription(this.a.d.getString(bdc.av_player_button_fullscreen));
    }
}
