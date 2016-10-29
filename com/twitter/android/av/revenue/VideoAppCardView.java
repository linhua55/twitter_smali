package com.twitter.android.av.revenue;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.android.av.RevenueCardCanvasView;
import com.twitter.android.av.VideoAppPlayerCanvasView;
import com.twitter.android.card.CardActionHelper;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
public class VideoAppCardView extends RevenueCardCanvasView<VideoAppPlayerCanvasView> {
    private CardActionHelper f;
    private VideoAppCardData h;

    protected /* synthetic */ VideoPlayerView a(AVPlayerAttachment aVPlayerAttachment, Mode mode) {
        return b(aVPlayerAttachment, mode);
    }

    public VideoAppCardView(Context context) {
        this(context, null, 0);
    }

    public VideoAppCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoAppCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
    }

    protected int getBottomContainerLayoutId() {
        return 2130969517;
    }

    protected VideoAppPlayerCanvasView b(AVPlayerAttachment aVPlayerAttachment, Mode mode) {
        return new VideoAppPlayerCanvasView(getContext(), aVPlayerAttachment, mode);
    }

    protected void a(VideoAppPlayerCanvasView videoAppPlayerCanvasView) {
        if (this.h != null && this.f != null) {
            videoAppPlayerCanvasView.a(this.h, this.f);
        }
    }

    public void setVideoAppCardData(VideoAppCardData videoAppCardData) {
        this.h = videoAppCardData;
    }

    public void setActionHelper(CardActionHelper cardActionHelper) {
        this.f = cardActionHelper;
    }
}
