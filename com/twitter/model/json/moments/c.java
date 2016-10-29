package com.twitter.model.json.moments;

import com.twitter.model.json.common.n;
import com.twitter.model.moments.MomentPageType;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class c extends n<MomentPageType> {
    public c() {
        super(MomentPageType.TEXT, new Entry[]{a("image", MomentPageType.TWEET_IMAGE), a("withheld", MomentPageType.IMAGE), a("text", MomentPageType.TEXT), a("video", MomentPageType.CONSUMER_VIDEO), a("animated_gif", MomentPageType.ANIMATED_GIF), a("card_player", MomentPageType.PLAYER), a("card_vine", MomentPageType.VINE), a("card_animated_gif", MomentPageType.ANIMATED_GIF), a("card_amplify", MomentPageType.PROFESSIONAL_VIDEO), a("card_audio", MomentPageType.AUDIO), a("card_poll2choice_text_only", MomentPageType.CONSUMER_POLL), a("card_poll3choice_text_only", MomentPageType.CONSUMER_POLL), a("card_poll4choice_text_only", MomentPageType.CONSUMER_POLL)});
    }
}
