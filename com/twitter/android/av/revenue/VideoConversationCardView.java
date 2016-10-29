package com.twitter.android.av.revenue;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.android.av.RevenueCardCanvasView;
import com.twitter.android.card.a;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
public class VideoConversationCardView extends RevenueCardCanvasView<VideoConversationPlayerCanvasView> {
    private a f;
    private VideoConversationCardData h;

    protected /* synthetic */ VideoPlayerView a(AVPlayerAttachment aVPlayerAttachment, Mode mode) {
        return b(aVPlayerAttachment, mode);
    }

    public VideoConversationCardView(Context context) {
        this(context, null, 0);
    }

    public VideoConversationCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoConversationCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
    }

    protected int getBottomContainerLayoutId() {
        return 2130969524;
    }

    protected VideoConversationPlayerCanvasView b(AVPlayerAttachment aVPlayerAttachment, Mode mode) {
        return new VideoConversationPlayerCanvasView(getContext(), aVPlayerAttachment, mode);
    }

    protected void a(VideoConversationPlayerCanvasView videoConversationPlayerCanvasView) {
        if (this.h != null && this.f != null) {
            videoConversationPlayerCanvasView.a(this.h, this.f);
        }
    }

    public void setVideoConversationCardData(VideoConversationCardData videoConversationCardData) {
        this.h = videoConversationCardData;
    }

    public void setActionHandler(a aVar) {
        this.f = aVar;
    }
}
