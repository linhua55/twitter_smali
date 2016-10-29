package com.twitter.android.client;

import cap;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.android.commerce.card.g;
import com.twitter.android.commerce.card.h;
import com.twitter.android.commerce.card.i;
import com.twitter.android.commerce.card.l;
import com.twitter.android.commerce.card.o;
import com.twitter.android.nativecards.ConsumerPollCard;
import com.twitter.android.nativecards.PollCard.Configuration;
import com.twitter.android.nativecards.aa;
import com.twitter.android.nativecards.ag;
import com.twitter.android.nativecards.an;
import com.twitter.android.nativecards.ao;
import com.twitter.android.nativecards.at;
import com.twitter.android.nativecards.av;
import com.twitter.android.nativecards.az;
import com.twitter.android.nativecards.n;
import com.twitter.android.nativecards.v;
import com.twitter.android.revenue.card.ah;
import com.twitter.android.revenue.card.ap;
import com.twitter.android.revenue.card.as;
import com.twitter.android.revenue.card.be;
import com.twitter.android.revenue.card.bl;
import com.twitter.android.revenue.card.d;
import com.twitter.android.revenue.card.q;
import com.twitter.android.revenue.card.y;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.cab;
import tz;
import uf;
import vk;

/* compiled from: Twttr */
public abstract class ax {
    public static void a() {
        b();
        c();
    }

    public static void b() {
        cap b = cap.b();
        b.a("summary", new at(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD, DisplayMode.COMPOSE});
        b.a("summary_large_image", new av(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("summary_large_image", new at(), new DisplayMode[]{DisplayMode.COMPOSE});
        b.a("appplayer", new be(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("promo_website", new bl(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("promo_image_app", new as(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD, DisplayMode.CAROUSEL});
        b.a("2485840682:flock", new y(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("2485840682:flock_v2", new y(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("promo_app", new d(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("2586390716:buy_now", new h(new g()), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("2586390716:buy_now_offers", new i(new l()), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("2586390716:product_ad", new o(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("2586390716:authenticated_web_view", new com.twitter.android.revenue.card.av(new com.twitter.android.commerce.card.d()), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("2586390716:message_me", new vk(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("promotion", new ah(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("app", new d(), new DisplayMode[]{DisplayMode.FULL});
        b.a("app", new ap(), new DisplayMode[]{DisplayMode.PROFILE_HEADER});
        b.a(MimeTypes.BASE_TYPE_AUDIO, new tz(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("amplify", new uf(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD, DisplayMode.CAROUSEL});
        b.a("player", new ag(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD, DisplayMode.CAROUSEL});
        b.a("direct_store_link_app", new d(), new DisplayMode[]{DisplayMode.FULL});
        b.a("3260518932:moment", new v(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD, DisplayMode.COMPOSE});
        Configuration configuration = Configuration.TWO_CHOICE_WITH_RESULTS;
        b.a(configuration.name, new ao(configuration), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        configuration = Configuration.TWO_CHOICE_WITH_MESSAGE;
        b.a(configuration.name, new ao(configuration), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        configuration = Configuration.FOUR_CHOICE_WITH_RESULTS;
        b.a(configuration.name, new ao(configuration), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        configuration = Configuration.FOUR_CHOICE_WITH_MESSAGE;
        b.a(configuration.name, new ao(configuration), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("2427656750:poll_choice4_rc", new an(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        for (ConsumerPollCard.Configuration configuration2 : new ConsumerPollCard.Configuration[]{ConsumerPollCard.Configuration.TWO_CHOICE_TEXT_ONLY, ConsumerPollCard.Configuration.THREE_CHOICE_TEXT_ONLY, ConsumerPollCard.Configuration.FOUR_CHOICE_TEXT_ONLY}) {
            b.a(configuration2.modelName, new n(configuration2), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD, DisplayMode.MOMENTS});
        }
        for (ConsumerPollCard.Configuration configuration22 : new ConsumerPollCard.Configuration[]{ConsumerPollCard.Configuration.TWO_CHOICE_IMAGE, ConsumerPollCard.Configuration.THREE_CHOICE_IMAGE, ConsumerPollCard.Configuration.FOUR_CHOICE_IMAGE}) {
            b.a(configuration22.modelName, new n(configuration22), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        }
        b.a("3691233323:periscope_broadcast", new at(), new DisplayMode[]{DisplayMode.COMPOSE});
        b.a("3691233323:periscope_broadcast", new aa(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
        b.a("promo_image_convo", new q(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD, DisplayMode.COMPOSE});
        b.a("promo_video_convo", new q(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD, DisplayMode.COMPOSE});
        b.a("4889131224:vine", new az(), new DisplayMode[]{DisplayMode.FULL, DisplayMode.FORWARD});
    }

    private static void c() {
        cab a = cab.a();
        a.a(MimeTypes.BASE_TYPE_AUDIO, DisplayMode.FORWARD, "card_registry_native_audio_card_android_2758", "native_audio");
        a.a(MimeTypes.BASE_TYPE_AUDIO, DisplayMode.FULL, "card_registry_native_audio_card_android_2758", "native_audio");
        a.a("amplify", DisplayMode.FULL, "card_registry_native_amplify_card_android_2798", "native_amplify_enabled");
        a.a("amplify", DisplayMode.FORWARD, "card_registry_native_amplify_card_android_2798", "native_amplify_enabled");
        a.a("2586390716:buy_now", DisplayMode.FORWARD, "card_registry_commerce_native_cards_android_2836", "native_buy_now");
        a.a("2586390716:buy_now", DisplayMode.FULL, "card_registry_commerce_native_cards_android_2836", "native_buy_now");
        a.a("2586390716:buy_now_offers", DisplayMode.FORWARD, "card_registry_commerce_native_cards_android_2836", "native_offer");
        a.a("2586390716:buy_now_offers", DisplayMode.FULL, "card_registry_commerce_native_cards_android_2836", "native_offer");
    }
}
