package com.twitter.library.api;

import com.twitter.util.collection.r;
import java.util.Map;

/* compiled from: Twttr */
public enum PromotedEvent {
    IMPRESSION("impression"),
    URL_CLICK("url_click"),
    PROFILE_IMAGE_CLICK("profile_image_click"),
    SCREEN_NAME_CLICK("screen_name_click"),
    HASHTAG_CLICK("hashtag_click"),
    USER_MENTION_CLICK("user_mention_click"),
    VIEW_DETAILS("view_details"),
    PROMOTED_TREND_CLICK("click"),
    DISMISS("dismiss"),
    DISMISS_REPETITIVE("dismiss_repetitive"),
    DISMISS_UNINTERESTING("dismiss_uninteresting"),
    DISMISS_SPAM("dismiss_spam"),
    FOOTER_PROFILE("footer_profile"),
    CARD_URL_CLICK("card_url_click"),
    CARD_CLICK("card_click"),
    CARD_MEDIA_CLICK("embedded_media"),
    CARD_OPEN_APP("open_app"),
    CARD_INSTALL_APP("install_app"),
    CARD_INSTALLED_APP("installed_app"),
    CARD_DIAL_PHONE("dial_phone"),
    CASHTAG_CLICK("cashtag_click"),
    VIDEO_CONTENT_PLAYBACK_START("video_content_playback_start"),
    VIDEO_CONTENT_PLAYBACK_25("video_content_playback_25"),
    VIDEO_CONTENT_PLAYBACK_50("video_content_playback_50"),
    VIDEO_CONTENT_PLAYBACK_75("video_content_playback_75"),
    VIDEO_CONTENT_PLAYBACK_95("video_content_playback_95"),
    VIDEO_CONTENT_PLAYBACK_COMPLETE("video_content_playback_complete"),
    VIDEO_CONTENT_VIEW("video_content_view"),
    VIDEO_CONTENT_VIEW_THRESHOLD("video_content_view_threshold"),
    VIDEO_CONTENT_PLAY_FROM_TAP("video_content_play_from_tap"),
    VIDEO_AD_PLAYBACK_START("video_ad_playback_start"),
    VIDEO_AD_PLAYBACK_25("video_ad_playback_25"),
    VIDEO_AD_PLAYBACK_50("video_ad_playback_50"),
    VIDEO_AD_PLAYBACK_75("video_ad_playback_75"),
    VIDEO_AD_PLAYBACK_95("video_ad_playback_95"),
    VIDEO_AD_PLAYBACK_COMPLETE("video_ad_playback_complete"),
    VIDEO_AD_VIEW("video_ad_view"),
    VIDEO_AD_VIEW_THRESHOLD("video_ad_view_threshold"),
    VIDEO_AD_PLAY_FROM_TAP("video_ad_play_from_tap"),
    VIDEO_CTA_APP_OPEN_CLICK("video_cta_app_open_click"),
    VIDEO_CTA_APP_INSTALL_CLICK("video_cta_app_install_click"),
    VIDEO_CTA_URL_CLICK("video_cta_url_click"),
    VIDEO_CTA_WATCH_CLICK("video_cta_watch_click"),
    BUYNOW_PRODUCT_DETAIL_LOAD_FINISHED("buynow_product_detail_load_finished"),
    BUYNOW_PRODUCT_DETAIL_LOAD_ABORTED("buynow_product_detail_load_aborted"),
    BUYNOW_PRODUCT_IMAGE_OPEN("buynow_product_image_open"),
    BUYNOW_BUY_BUTTON_CLICK("buynow_buy_button_click"),
    BUYNOW_STORE_PROFILE_START("buynow_store_profile_start"),
    BUYNOW_STORE_PROFILE_EXIT("buynow_store_profile_exit"),
    BUYNOW_STORE_PROFILE_SUBMIT("buynow_store_profile_submit"),
    BUYNOW_STORE_PROFILE_SUCCESS("buynow_store_profile_success"),
    BUYNOW_STORE_PROFILE_FAILURE("buynow_store_profile_failure"),
    BUYNOW_BUY_BUTTON_CONFIRM("buynow_buy_button_confirm"),
    BUYNOW_PURCHASE_SUCCESS("buynow_purchase_success"),
    BUYNOW_PURCHASE_FAILURE("buynow_purchase_failure"),
    BUYNOW_PRODUCT_DETAIL_EXIT("buynow_product_detail_exit"),
    BUYNOW_CHANGE_PAYMENT_PROFILE_BUTTON_CLICK("buynow_change_payment_profile_button_click"),
    BUYNOW_CARD_CLICK("buynow_card_click"),
    PRODUCT_PAGE_CARD_CLICK("product_page_card_click"),
    PRODUCT_AD_CARD_CLICK("product_ad_card_click"),
    COMMERCE_COLLECTION_CARD_CLICK("commerce_collection_card_click"),
    CL_OFFER_ACCEPTED("cl_offer_accepted"),
    CL_OFFER_REDEEMED("cl_offer_redeemed"),
    CL_OFFER_CARD_CLICK("cl_offer_card_click"),
    DWELL_SHORT("dwell_short"),
    DWELL_MEDIUM("dwell_medium"),
    DWELL_LONG("dwell_long"),
    SCROLL_WEBVIEW("scroll_webview"),
    CLOSE_WEBVIEW("close_webview"),
    CAROUSEL_SWIPE_NEXT("carousel_swipe_next"),
    CAROUSEL_SWIPE_PREVIOUS("carousel_swipe_previous"),
    LONG_DWELL_VIEW("long_dwell_view"),
    LONG_DWELL_VIEW_MEDIA("long_dwell_view_media"),
    VIDEO_CONTENT_MRC_VIEW("video_content_mrc_view"),
    VIDEO_AD_MRC_VIEW("video_ad_mrc_view"),
    VIDEO_CONTENT_GROUPM_VIEW("video_content_groupm_view"),
    VIDEO_AD_GROUPM_VIEW("video_ad_groupm_view"),
    VIDEO_CONTENT_1SEC_VIEW("video_content_1sec_view"),
    VIDEO_AD_1SEC_VIEW("video_ad_1sec_view"),
    VIDEO_SESSION("video_session"),
    INNER_CAROUSEL_SWIPE("inner_carousel_swipe"),
    POLL_CARD_VOTE("poll_card_vote");
    
    private final String mEvent;

    private PromotedEvent(String str) {
        this.mEvent = str;
    }

    public String toString() {
        return this.mEvent;
    }

    public static Map<String, PromotedEvent> a() {
        r d = r.d();
        for (PromotedEvent promotedEvent : values()) {
            d.b(promotedEvent.toString(), promotedEvent);
        }
        return (Map) d.q();
    }
}
