package defpackage;

import bip;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.d;
import com.twitter.model.dms.a;
import com.twitter.model.dms.am;
import com.twitter.model.dms.an;
import com.twitter.model.dms.ap;
import com.twitter.model.dms.au;
import com.twitter.model.dms.ax;
import com.twitter.model.dms.bi;
import com.twitter.model.dms.bl;
import com.twitter.model.json.common.g;
import com.twitter.model.json.dms.JsonCSFeedbackDismissedEntry;
import com.twitter.model.json.dms.JsonCSFeedbackSubmittedEntry;
import com.twitter.model.json.dms.JsonConversationCreateEntry;
import com.twitter.model.json.dms.JsonDeleteConversationEvent;
import com.twitter.model.json.dms.JsonDeleteMessageEvent;
import com.twitter.model.json.dms.JsonParticipantsEntry;
import com.twitter.model.json.dms.JsonReadStateEvent;
import com.twitter.model.json.dms.JsonUpdateConversationAvatarEntry;
import com.twitter.model.json.dms.JsonUpdateConversationMuteStateEvent;
import com.twitter.model.json.dms.JsonUpdateConversationNameEntry;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import cto;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: biz */
public class biz {
    public static a a(JsonParser jsonParser) throws IOException {
        String str = null;
        boolean a = d.a("b2c_feedback_submitted_dm_event_enabled");
        boolean a2 = d.a("b2c_feedback_dismissed_dm_event_enabled");
        JsonToken a3 = jsonParser.a();
        a aVar = null;
        while (a3 != null && a3 != JsonToken.END_OBJECT) {
            String str2;
            switch (bjb.a[a3.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"message".equals(str)) {
                        if (!"conversation_create".equals(str)) {
                            if (!"remove_conversation".equals(str)) {
                                JsonParticipantsEntry jsonParticipantsEntry;
                                if (!"join_conversation".equals(str)) {
                                    if (!"message_delete".equals(str)) {
                                        a aVar2;
                                        if (!"conversation_name_update".equals(str)) {
                                            if (!"conversation_avatar_update".equals(str)) {
                                                if (!"participants_join".equals(str)) {
                                                    if (!"participants_leave".equals(str)) {
                                                        JsonReadStateEvent jsonReadStateEvent;
                                                        if (!"conversation_read".equals(str)) {
                                                            if (!"mark_all_as_read".equals(str)) {
                                                                JsonUpdateConversationMuteStateEvent jsonUpdateConversationMuteStateEvent;
                                                                if (!"disable_notifications".equals(str)) {
                                                                    if (!"enable_notifications".equals(str)) {
                                                                        JsonDeleteMessageEvent jsonDeleteMessageEvent;
                                                                        if (!"message_mark_as_spam".equals(str)) {
                                                                            if (!"message_unmark_as_spam".equals(str)) {
                                                                                if (!"cs_feedback_submitted".equals(str) || !a) {
                                                                                    if (!"cs_feedback_dismissed".equals(str) || !a2) {
                                                                                        jsonParser.c();
                                                                                        str2 = str;
                                                                                        break;
                                                                                    }
                                                                                    JsonCSFeedbackDismissedEntry jsonCSFeedbackDismissedEntry = (JsonCSFeedbackDismissedEntry) g.c(jsonParser, JsonCSFeedbackDismissedEntry.class);
                                                                                    if (jsonCSFeedbackDismissedEntry != null) {
                                                                                        aVar2 = (a) ((bhj) ((bhj) ((bhj) ((bhj) ((bhj) ((bhj) new bhj().a(new bhm().a(jsonCSFeedbackDismissedEntry.a).q())).a(jsonCSFeedbackDismissedEntry.d)).b(jsonCSFeedbackDismissedEntry.e)).b(jsonCSFeedbackDismissedEntry.f)).c(jsonCSFeedbackDismissedEntry.g)).a(jsonCSFeedbackDismissedEntry.h)).q();
                                                                                    } else {
                                                                                        aVar2 = aVar;
                                                                                    }
                                                                                    aVar = aVar2;
                                                                                    str2 = str;
                                                                                    break;
                                                                                }
                                                                                JsonCSFeedbackSubmittedEntry jsonCSFeedbackSubmittedEntry = (JsonCSFeedbackSubmittedEntry) g.c(jsonParser, JsonCSFeedbackSubmittedEntry.class);
                                                                                if (jsonCSFeedbackSubmittedEntry != null) {
                                                                                    aVar2 = (a) ((bhq) ((bhq) ((bhq) ((bhq) ((bhq) ((bhq) new bhq().a(new bht().a(jsonCSFeedbackSubmittedEntry.a).a(jsonCSFeedbackSubmittedEntry.b).q())).a(jsonCSFeedbackSubmittedEntry.c).a(jsonCSFeedbackSubmittedEntry.d)).b(jsonCSFeedbackSubmittedEntry.e)).b(jsonCSFeedbackSubmittedEntry.f)).c(jsonCSFeedbackSubmittedEntry.g)).a(jsonCSFeedbackSubmittedEntry.h)).q();
                                                                                } else {
                                                                                    aVar2 = aVar;
                                                                                }
                                                                                aVar = aVar2;
                                                                                str2 = str;
                                                                                break;
                                                                            }
                                                                            jsonDeleteMessageEvent = (JsonDeleteMessageEvent) e.a(g.c(jsonParser, JsonDeleteMessageEvent.class));
                                                                            aVar = (a) ((ap) ((ap) ((ap) ((bl) new bl().a(false).a(an.a(jsonDeleteMessageEvent.f))).b(jsonDeleteMessageEvent.a)).b(jsonDeleteMessageEvent.c)).c(jsonDeleteMessageEvent.b)).q();
                                                                            str2 = str;
                                                                            break;
                                                                        }
                                                                        jsonDeleteMessageEvent = (JsonDeleteMessageEvent) e.a(g.c(jsonParser, JsonDeleteMessageEvent.class));
                                                                        aVar = (a) ((ap) ((ap) ((ap) ((bl) new bl().a(true).a(an.a(jsonDeleteMessageEvent.f))).b(jsonDeleteMessageEvent.a)).b(jsonDeleteMessageEvent.c)).c(jsonDeleteMessageEvent.b)).q();
                                                                        str2 = str;
                                                                        break;
                                                                    }
                                                                    jsonUpdateConversationMuteStateEvent = (JsonUpdateConversationMuteStateEvent) e.a(g.c(jsonParser, JsonUpdateConversationMuteStateEvent.class));
                                                                    aVar = (a) ((bi) ((bi) ((bi) new bi().a(false).b(jsonUpdateConversationMuteStateEvent.a)).b(jsonUpdateConversationMuteStateEvent.c)).c(jsonUpdateConversationMuteStateEvent.b)).q();
                                                                    str2 = str;
                                                                    break;
                                                                }
                                                                jsonUpdateConversationMuteStateEvent = (JsonUpdateConversationMuteStateEvent) e.a(g.c(jsonParser, JsonUpdateConversationMuteStateEvent.class));
                                                                aVar = (a) ((bi) ((bi) ((bi) new bi().a(true).b(jsonUpdateConversationMuteStateEvent.a)).b(jsonUpdateConversationMuteStateEvent.c)).c(jsonUpdateConversationMuteStateEvent.b)).q();
                                                                str2 = str;
                                                                break;
                                                            }
                                                            jsonReadStateEvent = (JsonReadStateEvent) e.a(g.c(jsonParser, JsonReadStateEvent.class));
                                                            aVar = (a) ((au) ((au) ((au) ((au) new au().a(jsonReadStateEvent.e)).b(jsonReadStateEvent.a)).b(jsonReadStateEvent.c)).c(jsonReadStateEvent.b)).q();
                                                            str2 = str;
                                                            break;
                                                        }
                                                        jsonReadStateEvent = (JsonReadStateEvent) e.a(g.c(jsonParser, JsonReadStateEvent.class));
                                                        aVar = (a) ((ax) ((ax) ((ax) ((ax) new ax().a(jsonReadStateEvent.e)).b(jsonReadStateEvent.a)).b(jsonReadStateEvent.c)).c(jsonReadStateEvent.b)).q();
                                                        str2 = str;
                                                        break;
                                                    }
                                                    jsonParticipantsEntry = (JsonParticipantsEntry) e.a(g.c(jsonParser, JsonParticipantsEntry.class));
                                                    aVar = (a) ((bjt) ((bjt) ((bjt) ((bjt) ((bjt) ((bjt) new bjt().a((Object) jsonParticipantsEntry.a)).a(jsonParticipantsEntry.i)).b(jsonParticipantsEntry.e)).b(jsonParticipantsEntry.f)).c(jsonParticipantsEntry.g)).a(jsonParticipantsEntry.h)).q();
                                                    str2 = str;
                                                    break;
                                                }
                                                jsonParticipantsEntry = (JsonParticipantsEntry) e.a(g.c(jsonParser, JsonParticipantsEntry.class));
                                                aVar = (a) ((bjm) ((bjm) ((bjm) ((bjm) ((bjm) ((bjm) new bjm().a(new bjo().a(jsonParticipantsEntry.a).q())).a(jsonParticipantsEntry.i)).b(jsonParticipantsEntry.e)).b(jsonParticipantsEntry.f)).c(jsonParticipantsEntry.g)).a(jsonParticipantsEntry.h)).q();
                                                str2 = str;
                                                break;
                                            }
                                            JsonUpdateConversationAvatarEntry jsonUpdateConversationAvatarEntry = (JsonUpdateConversationAvatarEntry) g.c(jsonParser, JsonUpdateConversationAvatarEntry.class);
                                            if (jsonUpdateConversationAvatarEntry != null) {
                                                aVar2 = (a) ((bke) ((bke) ((bke) ((bke) ((bke) ((bke) new bke().a((Object) jsonUpdateConversationAvatarEntry.a)).a(jsonUpdateConversationAvatarEntry.b)).a(jsonUpdateConversationAvatarEntry.d)).b(jsonUpdateConversationAvatarEntry.e)).b(jsonUpdateConversationAvatarEntry.f)).c(jsonUpdateConversationAvatarEntry.g)).q();
                                            } else {
                                                aVar2 = aVar;
                                            }
                                            aVar = aVar2;
                                            str2 = str;
                                            break;
                                        }
                                        JsonUpdateConversationNameEntry jsonUpdateConversationNameEntry = (JsonUpdateConversationNameEntry) g.c(jsonParser, JsonUpdateConversationNameEntry.class);
                                        if (jsonUpdateConversationNameEntry != null) {
                                            aVar2 = (a) ((bki) ((bki) ((bki) ((bki) ((bki) ((bki) new bki().a((Object) jsonUpdateConversationNameEntry.a)).a(jsonUpdateConversationNameEntry.b)).a(jsonUpdateConversationNameEntry.d)).b(jsonUpdateConversationNameEntry.e)).b(jsonUpdateConversationNameEntry.f)).c(jsonUpdateConversationNameEntry.g)).q();
                                        } else {
                                            aVar2 = aVar;
                                        }
                                        aVar = aVar2;
                                        str2 = str;
                                        break;
                                    }
                                    aVar = (a) e.a(g.c(jsonParser, an.class));
                                    str2 = str;
                                    break;
                                }
                                Object a4;
                                jsonParticipantsEntry = (JsonParticipantsEntry) e.a(g.c(jsonParser, JsonParticipantsEntry.class));
                                if (jsonParticipantsEntry.a != null) {
                                    a4 = n.a(cto.a(jsonParticipantsEntry.a, new bja()));
                                } else {
                                    a4 = n.g();
                                }
                                aVar = (a) ((bjg) ((bjg) ((bjg) ((bjg) ((bjg) ((bjg) new bjg().a(a4)).a(jsonParticipantsEntry.i)).b(jsonParticipantsEntry.e)).b(jsonParticipantsEntry.f)).c(jsonParticipantsEntry.g)).a(jsonParticipantsEntry.h)).q();
                                str2 = str;
                                break;
                            }
                            JsonDeleteConversationEvent jsonDeleteConversationEvent = (JsonDeleteConversationEvent) e.a(g.c(jsonParser, JsonDeleteConversationEvent.class));
                            aVar = (a) ((am) ((am) ((am) new am().b(jsonDeleteConversationEvent.a)).b(jsonDeleteConversationEvent.c)).c(jsonDeleteConversationEvent.b)).q();
                            str2 = str;
                            break;
                        }
                        JsonConversationCreateEntry jsonConversationCreateEntry = (JsonConversationCreateEntry) e.a(g.c(jsonParser, JsonConversationCreateEntry.class));
                        aVar = (a) ((bhx) ((bhx) ((bhx) ((bhx) new bhx().a(jsonConversationCreateEntry.d)).b(jsonConversationCreateEntry.a)).b(jsonConversationCreateEntry.c)).c(jsonConversationCreateEntry.b)).q();
                        str2 = str;
                        break;
                    }
                    aVar = bip.a(jsonParser, false);
                    str2 = str;
                    break;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str2 = jsonParser.g();
                    break;
                case Util.TYPE_OTHER /*3*/:
                    jsonParser.c();
                    str2 = str;
                    break;
                default:
                    str2 = str;
                    break;
            }
            String str3 = str2;
            a3 = jsonParser.a();
            str = str3;
        }
        return aVar;
    }
}
