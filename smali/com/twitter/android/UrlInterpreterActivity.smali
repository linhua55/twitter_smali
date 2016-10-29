.class public Lcom/twitter/android/UrlInterpreterActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field private static final d:Landroid/content/UriMatcher;

.field private static final e:Landroid/content/UriMatcher;

.field private static final f:Landroid/content/UriMatcher;


# instance fields
.field private g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, -0x1

    const/16 v7, 0x9f

    const/16 v6, 0x9e

    const/16 v5, 0x55

    const/4 v4, 0x0

    .line 109
    const-string/jumbo v0, "(www\\.)?twitter.com"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/UrlInterpreterActivity;->a:Ljava/util/regex/Pattern;

    .line 110
    const-string/jumbo v0, "https?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/UrlInterpreterActivity;->b:Ljava/util/regex/Pattern;

    .line 111
    const-string/jumbo v0, "twitter"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/UrlInterpreterActivity;->c:Ljava/util/regex/Pattern;

    .line 265
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    .line 267
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    .line 270
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/twitter/android/UrlInterpreterActivity;->f:Landroid/content/UriMatcher;

    .line 287
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "account"

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "bouncer"

    const/16 v2, 0x8b

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "custom_timeline"

    const/16 v2, 0x77

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "dm_conversation"

    const/16 v2, 0x83

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 291
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "explore"

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 292
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "flow"

    const-string/jumbo v2, "ad_hoc"

    const/16 v3, 0x73

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "flow"

    const-string/jumbo v2, "add_phone"

    const/16 v3, 0x88

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "flow"

    const-string/jumbo v2, "setup_profile"

    const/16 v3, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "follow"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 296
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "followers"

    const-string/jumbo v2, "verified"

    const/16 v3, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 297
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "front"

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hashtag"

    const-string/jumbo v2, "*"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "intent"

    const-string/jumbo v2, "favorite"

    const/16 v3, 0x7d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 300
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "intent"

    const-string/jumbo v2, "follow"

    const/16 v3, 0x82

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "intent"

    const-string/jumbo v2, "like"

    const/16 v3, 0x7d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 302
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "intent"

    const-string/jumbo v2, "retweet"

    const/16 v3, 0x7d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 303
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "interest_picker"

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 304
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "internal"

    const-string/jumbo v2, "special_events/world_cup_2014/choose_team_full"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 306
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "internal"

    const-string/jumbo v2, "special_events/world_cup_2014/choose_team_lite"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "internal"

    const-string/jumbo v2, "special_events/world_cup_2014/find_friends"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "internal"

    const-string/jumbo v2, "special_events/world_cup_2014/opt_in"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 310
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "internal"

    const-string/jumbo v2, "who_to_follow"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "internal"

    const-string/jumbo v2, "worldcup"

    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "list"

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 313
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "login"

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 314
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "login-token"

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 315
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mentions"

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 316
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "moment"

    const/16 v2, 0x8a

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 317
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "moments"

    const/16 v2, 0x8e

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "moments"

    const-string/jumbo v2, "guide"

    const/16 v3, 0x8e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 319
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "news"

    const/16 v2, 0x89

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "news"

    const-string/jumbo v2, "*"

    const/16 v3, 0x92

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 321
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "photo"

    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 322
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "post"

    const/16 v2, 0x7e

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "profiles"

    const-string/jumbo v2, "edit"

    const/16 v3, 0x90

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "profiles"

    const-string/jumbo v2, "edit/birthday"

    const/16 v3, 0x91

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 325
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "quote"

    const/16 v2, 0x7e

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 326
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "search"

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 327
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "session"

    const-string/jumbo v2, "new"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "settings"

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 329
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "settings"

    const-string/jumbo v2, "notifications_tab"

    const/16 v3, 0x84

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "share_via_dm"

    const/16 v2, 0x8c

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "signup"

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 332
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "status"

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "storystream"

    const/16 v2, 0x81

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "timeline"

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 335
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "tweet"

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 336
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "unfollow"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 337
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "user"

    const/16 v2, 0x76

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "user"

    const-string/jumbo v2, "media"

    const/16 v3, 0x93

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "user"

    const-string/jumbo v2, "tweets"

    const/16 v3, 0x9d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "who_to_follow"

    const-string/jumbo v2, "interests/*"

    const/16 v3, 0x85

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 341
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "settings"

    const-string/jumbo v2, "timeline"

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "settings"

    const-string/jumbo v2, "accessibility"

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 343
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "people_discovery_modules"

    const/16 v2, 0xa2

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 344
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "connect_people"

    const/16 v2, 0x9b

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 345
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "settings"

    const-string/jumbo v2, "backup_code"

    const/16 v3, 0x9c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 346
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "stickers"

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "stickers"

    const-string/jumbo v2, "*/top"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 348
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "stickers"

    const-string/jumbo v2, "*/all"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 349
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "stickers"

    const-string/jumbo v2, "*/live"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 350
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "alerts"

    const-string/jumbo v2, "landing_page/#"

    const/16 v3, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const-string/jumbo v1, "messages"

    const-string/jumbo v2, "compose"

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    const/16 v1, 0xa1

    invoke-static {v0, v1}, Laaw;->a(Landroid/content/UriMatcher;I)V

    .line 356
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "analytics.twitter.com"

    const-string/jumbo v2, "user/*/tweet/*"

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "ads.twitter.com"

    const-string/jumbo v2, "mobile/*/accounts"

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "ads.twitter.com"

    const-string/jumbo v2, "mobile/*/accounts/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 359
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "ads.twitter.com"

    const-string/jumbo v2, "mobile/*/accounts/*/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "ads.twitter.com"

    const-string/jumbo v2, "mobile/*/accounts/*/*/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "ads.twitter.com"

    const-string/jumbo v2, "mobile/*/accounts/*/*/*/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "ads.twitter.com"

    const-string/jumbo v2, "mobile/*/accounts/*/*/*/*/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/app_link"

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 364
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/redirect"

    const/16 v3, 0x35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/cricket"

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/cricket/*"

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/highlights"

    const/16 v3, 0x81

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/t/special_events/world_cup_2014/opt_in"

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 369
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/t/special_events/world_cup_2014/choose_team_full"

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 371
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/t/special_events/world_cup_2014/choose_team_lite"

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 373
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/t/special_events/world_cup_2014/find_friends"

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 374
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/t/worldcup"

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 375
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/notifications"

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/connect"

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/verified_followers"

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 378
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/soccer/*"

    const/16 v3, 0x86

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 379
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/soccer/*/*"

    const/16 v3, 0x87

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/moments"

    const/16 v3, 0x94

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 381
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/moments/*"

    const/16 v3, 0x8d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 382
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "hashtag/*"

    const/16 v3, 0x3a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 383
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "search"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 384
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "search/users/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 385
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "search/realtime/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 386
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "search/links/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "search/*/grid/*"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 388
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "search/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 389
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "compose/tweet"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 390
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "compose/dm"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 391
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "compose/dm/*"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 392
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "compose/gifs"

    const/16 v3, 0x99

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 393
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "direct_messages/create/*"

    const/16 v3, 0x39

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 394
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "open_play_store"

    const/16 v3, 0x2e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 395
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "enable_device_follow"

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 396
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "follow_user/#"

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 397
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "mentions"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 398
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "messages"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 399
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "messages/media/*"

    const/16 v3, 0x9a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 400
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "direct_messages"

    const/16 v3, 0x38

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 401
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "messages/compose"

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 402
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "messages/*/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 403
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "messages/*"

    const/16 v3, 0x33

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 404
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "who_to_follow"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 405
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "who_to_follow/suggestions"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 406
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "who_to_follow/interests"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 407
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "who_to_follow/interests/*"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 408
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "who_to_follow/import"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 409
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "who_to_follow/search/*"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 410
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "lists"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 411
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "favorites"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "likes"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 413
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "find_friends"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 414
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "turn_on_push"

    const/16 v3, 0x2c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 415
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "settings/profile"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 416
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "settings/accessibility"

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 417
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "similar_to/*"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 418
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "share"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 419
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "intent/tweet"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 420
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "intent/user"

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 421
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "intent/retweet"

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 422
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "intent/favorite"

    const/16 v3, 0x3f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 423
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "intent/like"

    const/16 v3, 0x3f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 424
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "intent/follow"

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 425
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "intent/session"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 426
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "session/new"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 427
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "login"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 428
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "signup"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 429
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "people_timeline"

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 430
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "settings/devices/create"

    const/16 v3, 0x31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 431
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "start_phone_ownership_verification"

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 432
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "account/confirm_email_reset"

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 433
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "download"

    const/16 v3, 0x37

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 434
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "home"

    const/16 v3, 0x44

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 435
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/stickers/*"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 436
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/stickers/*/top"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 437
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/stickers/*/live"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 438
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "i/stickers/*/all"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 439
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    invoke-static {v1}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-static {v0, v1, v2}, Laaw;->a(Landroid/content/UriMatcher;Ljava/util/Set;I)V

    .line 442
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/status/#/photo/#/large"

    const/16 v3, 0x3b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 443
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/status/#/photo/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 444
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/status/#/video/#"

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 445
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/status/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 446
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/statuses/#"

    const/16 v3, 0x36

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 447
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/lists"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 448
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/lists/*"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 449
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/following"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 450
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/following/*"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 451
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/followers"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/followers_you_follow"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 453
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/favorites"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 454
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/likes"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 455
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/activity"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 456
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/alerts"

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 457
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/with_replies"

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 458
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/media"

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 459
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/tweets"

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 460
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/timelines/*"

    const/16 v3, 0x34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 461
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/moments/*"

    const/16 v3, 0x8d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 462
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/*/members"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 463
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*/*/subscribers"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 464
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 465
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    const-string/jumbo v1, "*"

    const/16 v2, 0x58

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 467
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->f:Landroid/content/UriMatcher;

    const-string/jumbo v1, "profiles"

    const-string/jumbo v2, "vine/enable_display"

    const/16 v3, 0x95

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 468
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->f:Landroid/content/UriMatcher;

    const-string/jumbo v1, "settings"

    const-string/jumbo v2, "auto_mute"

    const/16 v3, 0x98

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 469
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    .prologue
    .line 535
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    if-eqz p3, :cond_0

    .line 537
    sget-object v1, Lcom/twitter/android/UrlInterpreterActivity;->a:Ljava/util/regex/Pattern;

    invoke-static {p2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 545
    :goto_0
    return v0

    .line 542
    :cond_0
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    goto :goto_0

    .line 545
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;Ljava/lang/String;Z)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 549
    .line 550
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 552
    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 553
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->f:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 556
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;ZZ)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 502
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 503
    :goto_0
    if-nez v2, :cond_2

    move v0, v1

    .line 517
    :cond_0
    :goto_1
    return v0

    :cond_1
    move-object v2, v0

    .line 502
    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 513
    :goto_2
    invoke-static {p0, v2, v0, p1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 514
    if-ne v0, v1, :cond_0

    .line 515
    invoke-static {p0, v2, p2}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_1

    .line 511
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1772
    const/4 v0, 0x0

    .line 1773
    invoke-static {p2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1774
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/moments/ui/guide/ModernGuideActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "guide_category_id"

    .line 1775
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1779
    :goto_0
    return-object v0

    .line 1777
    :cond_0
    invoke-static {p0}, Lcom/twitter/android/moments/ui/guide/av;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1975
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 1976
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    .line 1977
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 1978
    invoke-static {p0}, Lcom/twitter/android/DispatchActivity;->a(Landroid/app/Activity;)V

    .line 1979
    const/4 p1, 0x0

    .line 1982
    :goto_0
    return-object p1

    .line 1981
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1731
    const-string/jumbo v0, "tweet_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1732
    if-nez v1, :cond_0

    .line 1733
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1734
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1764
    :goto_0
    return-object v0

    .line 1737
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1747
    const/4 v0, 0x0

    .line 1751
    :goto_1
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v3, "twitter"

    .line 1752
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "tweet"

    .line 1753
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "status_id"

    .line 1754
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1755
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1764
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/TweetActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x1

    .line 1765
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1766
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 1739
    :pswitch_0
    const-string/jumbo v0, "email_redirect_retweet"

    goto :goto_1

    .line 1743
    :pswitch_1
    const-string/jumbo v0, "email_redirect_favorite"

    goto :goto_1

    .line 1737
    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 1889
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 1890
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "post"

    .line 1891
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1892
    const-string/jumbo v0, "text"

    invoke-static {v2, v0, p2}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const-string/jumbo v0, "url"

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    const-string/jumbo v0, "hashtags"

    const-string/jumbo v1, "hashtags"

    .line 1895
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "UTF8"

    invoke-static {v1, v3}, Lcom/twitter/util/ap;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1894
    invoke-static {v2, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const-string/jumbo v0, "via"

    const-string/jumbo v1, "via"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    const-string/jumbo v0, "in_reply_to"

    .line 1899
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1904
    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 1905
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 1928
    :goto_0
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Landroid/net/Uri;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 1929
    invoke-virtual {v0, p0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1927
    return-object v0

    .line 1908
    :cond_0
    const-string/jumbo v0, "in_reply_to_usernames"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1909
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, ","

    .line 1910
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1913
    :goto_1
    const-string/jumbo v1, "in_reply_to_status_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v1

    .line 1919
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 1922
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/twitter/android/UrlInterpreterActivity;->a(Ljava/lang/Long;[Ljava/lang/String;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 1923
    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/composer/ax;

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 1910
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1697
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 1698
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "user"

    .line 1699
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1700
    const-string/jumbo v1, "user_id"

    invoke-static {v0, v1, p1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    const-string/jumbo v1, "screen_name"

    invoke-static {v0, v1, p2}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    invoke-direct {p0}, Lcom/twitter/android/UrlInterpreterActivity;->h()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Long;[Ljava/lang/String;)Lcom/twitter/model/core/Tweet;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1811
    new-instance v1, Lcom/twitter/model/core/bl;

    invoke-direct {v1}, Lcom/twitter/model/core/bl;-><init>()V

    .line 1812
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/model/core/bl;->e(J)Lcom/twitter/model/core/bl;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    .line 1813
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/model/core/bl;->h(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v2

    .line 1814
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 1815
    new-instance v3, Lcom/twitter/model/core/m;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v3, v1}, Lcom/twitter/model/core/m;-><init>(I)V

    move v1, v0

    .line 1817
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 1818
    new-instance v0, Lcom/twitter/model/core/aw;

    invoke-direct {v0}, Lcom/twitter/model/core/aw;-><init>()V

    aget-object v4, p1, v1

    .line 1819
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/aw;->a(Ljava/lang/String;)Lcom/twitter/model/core/aw;

    move-result-object v0

    .line 1820
    invoke-virtual {v0}, Lcom/twitter/model/core/aw;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/e;

    .line 1818
    invoke-virtual {v3, v0}, Lcom/twitter/model/core/m;->a(Lcom/twitter/model/core/e;)Lcom/twitter/model/core/l;

    .line 1817
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1823
    :cond_0
    new-instance v1, Lcom/twitter/model/core/bo;

    invoke-direct {v1}, Lcom/twitter/model/core/bo;-><init>()V

    .line 1824
    invoke-virtual {v3}, Lcom/twitter/model/core/m;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/j;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/bo;->b(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;

    move-result-object v0

    .line 1825
    invoke-virtual {v0}, Lcom/twitter/model/core/bo;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    .line 1823
    invoke-virtual {v2, v0}, Lcom/twitter/model/core/bl;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/bl;

    .line 1828
    :cond_1
    invoke-virtual {v2}, Lcom/twitter/model/core/bl;->a()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Intent;Lcom/twitter/android/client/notifications/StatusBarNotif;)V
    .locals 2

    .prologue
    .line 2031
    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->Q()Z

    move-result v0

    .line 2032
    const-string/jumbo v1, "tw_is_magic_rec"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2033
    const-string/jumbo v1, "tw_magic_rec_type"

    if-eqz v0, :cond_0

    .line 2034
    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->R()Ljava/lang/String;

    move-result-object v0

    .line 2033
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2035
    const-string/jumbo v0, "tw_magic_rec_impression_id"

    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2036
    return-void

    .line 2034
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1836
    invoke-static {p2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1837
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1839
    :cond_0
    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 1846
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 1847
    new-instance v1, Lcom/twitter/android/mw;

    .line 1848
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/twitter/android/mw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lorg/apache/http/client/HttpClient;Landroid/net/Uri;)V

    .line 1850
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 1852
    invoke-virtual {p0, p2}, Lcom/twitter/android/UrlInterpreterActivity;->c_(Landroid/net/Uri;)V

    .line 1853
    return-void
.end method

.method public static a(Landroid/net/Uri;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 492
    invoke-static {p0, v0, p1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri;ZZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/twitter/android/UrlInterpreterActivity;->d(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2001
    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2004
    const-string/jumbo v2, "smart_follow"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2006
    const-string/jumbo v0, "interest_persistence_source_location_rux_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2008
    sget-object v0, Lcom/twitter/model/stratostore/SourceLocation;->c:Lcom/twitter/model/stratostore/SourceLocation;

    .line 2012
    :goto_0
    new-instance v2, Lcom/twitter/android/smartfollow/j;

    invoke-direct {v2}, Lcom/twitter/android/smartfollow/j;-><init>()V

    const-string/jumbo v3, "url_interpreter"

    .line 2013
    invoke-virtual {v2, v3}, Lcom/twitter/android/smartfollow/j;->a(Ljava/lang/String;)Lcom/twitter/android/smartfollow/j;

    move-result-object v2

    .line 2014
    invoke-virtual {v2, v1}, Lcom/twitter/android/smartfollow/j;->a(I)Lcom/twitter/android/smartfollow/j;

    move-result-object v2

    .line 2015
    invoke-virtual {v2, v1}, Lcom/twitter/android/smartfollow/j;->a(Z)Lcom/twitter/android/smartfollow/j;

    move-result-object v2

    .line 2016
    invoke-virtual {v2, v0}, Lcom/twitter/android/smartfollow/j;->a(Lcom/twitter/model/stratostore/SourceLocation;)Lcom/twitter/android/smartfollow/j;

    move-result-object v0

    const-string/jumbo v2, "resurrection"

    .line 2017
    invoke-virtual {v0, v2}, Lcom/twitter/android/smartfollow/j;->b(Ljava/lang/String;)Lcom/twitter/android/smartfollow/j;

    move-result-object v0

    .line 2018
    invoke-virtual {v0, p0}, Lcom/twitter/android/smartfollow/j;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 2012
    invoke-virtual {p0, v0}, Lcom/twitter/android/UrlInterpreterActivity;->startActivity(Landroid/content/Intent;)V

    .line 2027
    :goto_1
    return v1

    .line 2010
    :cond_0
    sget-object v0, Lcom/twitter/model/stratostore/SourceLocation;->a:Lcom/twitter/model/stratostore/SourceLocation;

    goto :goto_0

    .line 2020
    :cond_1
    new-instance v2, Lcom/twitter/android/FollowFlowController;

    const-string/jumbo v3, "url_interpreter"

    invoke-direct {v2, v3}, Lcom/twitter/android/FollowFlowController;-><init>(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {v2, v0}, Lcom/twitter/android/FollowFlowController;->a(Z)Lcom/twitter/android/FollowFlowController;

    move-result-object v2

    .line 2022
    invoke-static {p0}, Lcom/twitter/android/util/ap;->a(Landroid/content/Context;)Lcom/twitter/android/util/al;

    move-result-object v3

    invoke-interface {v3}, Lcom/twitter/android/util/al;->m()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, p1, v0}, Lcom/twitter/android/FollowFlowController;->a(Ljava/lang/String;Z)Lcom/twitter/android/FollowFlowController;

    move-result-object v0

    .line 2023
    invoke-virtual {v0, p0}, Lcom/twitter/android/FollowFlowController;->c(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    move v1, v0

    .line 2027
    goto :goto_1
.end method

.method private b(Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1992
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1993
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1996
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1675
    invoke-static {}, Lcgb;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1676
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/people/PeopleDiscoveryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1677
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1676
    invoke-direct {p0, v0, v2}, Lcom/twitter/android/UrlInterpreterActivity;->b(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1678
    if-eqz v0, :cond_0

    .line 1679
    const-string/jumbo v1, "is_internal"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1683
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/RootTabbedFindPeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1684
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1683
    invoke-direct {p0, v0, v2}, Lcom/twitter/android/UrlInterpreterActivity;->b(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1709
    new-instance v0, Lcom/twitter/app/users/q;

    invoke-direct {v0}, Lcom/twitter/app/users/q;-><init>()V

    .line 1710
    invoke-virtual {v0, p1}, Lcom/twitter/app/users/q;->a(Ljava/lang/String;)Lcom/twitter/app/users/q;

    move-result-object v0

    const/4 v1, 0x6

    .line 1711
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/q;->a(I)Lcom/twitter/app/users/q;

    move-result-object v0

    const-string/jumbo v1, "url_interpreter"

    .line 1712
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/q;->f(Ljava/lang/String;)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 1713
    invoke-virtual {v0, v2}, Lcom/twitter/app/users/q;->a(Z)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 1714
    invoke-virtual {v0, v2}, Lcom/twitter/app/users/q;->b(Z)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 1715
    invoke-virtual {v0, v2}, Lcom/twitter/app/users/q;->e(Z)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 1716
    invoke-virtual {v0, p0}, Lcom/twitter/app/users/q;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1709
    return-object v0
.end method

.method private c(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1721
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 1722
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "user"

    .line 1723
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "screen_name"

    .line 1724
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1725
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1726
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    iget-object v2, p0, Lcom/twitter/android/UrlInterpreterActivity;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 1725
    return-object v0
.end method

.method private static d(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 496
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "compose"

    const-string/jumbo v1, "action"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    .line 498
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1665
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/UrlInterpreterActivity;->b(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1670
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/UrlInterpreterActivity;->b(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private h()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1690
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "start_page"

    sget-object v2, Lcom/twitter/android/ProfileActivity;->j:Landroid/net/Uri;

    .line 1691
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    iget-object v2, p0, Lcom/twitter/android/UrlInterpreterActivity;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1692
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 1690
    return-object v0
.end method


# virtual methods
.method a(Landroid/net/Uri;J)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 1871
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1873
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1875
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/twitter/android/avatars/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/twitter/android/EditProfileWithAvatarDrawerActivity;

    :goto_0
    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/twitter/library/provider/dl;->b:Landroid/net/Uri;

    .line 1877
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1878
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "ownerId"

    .line 1879
    invoke-virtual {v0, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1880
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1877
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1881
    const-string/jumbo v2, "change_avatar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/twitter/android/avatars/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1882
    const-string/jumbo v1, "extra_show_avatar_picker"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1884
    :cond_0
    return-object v0

    .line 1875
    :cond_1
    const-class v0, Lcom/twitter/android/EditProfileActivity;

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 578
    const/16 v0, 0x1a

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->b(I)V

    .line 580
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 581
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 582
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 583
    return-object p2
.end method

.method public a(J)Lcom/twitter/library/client/Session;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1966
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/client/bk;->a(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/net/Uri;)Lcom/twitter/util/concurrent/j;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/twitter/util/concurrent/j",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 627
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v5

    .line 628
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v6

    .line 629
    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 630
    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v4

    .line 631
    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v7

    .line 632
    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->d()Z

    move-result v8

    .line 634
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    .line 635
    const/4 v1, 0x0

    iget-boolean v10, p0, Lcom/twitter/android/UrlInterpreterActivity;->h:Z

    invoke-static {p1, v1, v10}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri;ZZ)I

    move-result v10

    .line 636
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 637
    if-eqz v1, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v1}, Lcom/twitter/util/ap;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/twitter/android/util/AppEventTrack;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 641
    :cond_0
    const/4 v1, 0x0

    .line 642
    packed-switch v10, :pswitch_data_0

    .line 1634
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "twitter.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1635
    if-eqz v0, :cond_34

    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1636
    :cond_1
    if-eqz v8, :cond_33

    .line 1638
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1639
    const-string/jumbo v1, "mode"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1640
    const-string/jumbo v2, "compose"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string/jumbo v0, "poll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1641
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v0

    const/4 v1, 0x5

    .line 1642
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 1643
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->d(I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 1644
    invoke-virtual {v0, p0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 1660
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/twitter/util/concurrent/ObservablePromise;->a(Ljava/lang/Object;)Lcom/twitter/util/concurrent/ObservablePromise;

    move-result-object v0

    return-object v0

    .line 644
    :pswitch_1
    new-instance v0, Lcom/twitter/android/FollowFlowController;

    const-string/jumbo v2, "add_phone_prompt"

    invoke-direct {v0, v2}, Lcom/twitter/android/FollowFlowController;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 647
    invoke-virtual {v0, v2}, Lcom/twitter/android/FollowFlowController;->a(Z)Lcom/twitter/android/FollowFlowController;

    move-result-object v0

    const/4 v2, 0x1

    .line 648
    invoke-virtual {v0, v2}, Lcom/twitter/android/FollowFlowController;->e(Z)Lcom/twitter/android/FollowFlowController;

    move-result-object v0

    .line 649
    invoke-virtual {v0, p0}, Lcom/twitter/android/FollowFlowController;->c(Landroid/app/Activity;)V

    goto :goto_1

    .line 653
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/PhoneOwnershipActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 657
    :pswitch_3
    if-eqz v9, :cond_2

    .line 658
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/GalleryActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "statusId"

    const/4 v0, 0x2

    .line 659
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 667
    :pswitch_4
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 668
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tweet"

    .line 669
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "status_id"

    const/4 v0, 0x2

    .line 670
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 672
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 676
    :pswitch_5
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/trends/TrendsPlusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "focus_search_bar"

    const/4 v2, 0x1

    .line 678
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 682
    :cond_3
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 683
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/SearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "query"

    .line 684
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 685
    const-string/jumbo v0, "event_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    if-eqz v0, :cond_2

    .line 687
    const-string/jumbo v2, "event_id"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "terminal"

    const/4 v3, 0x1

    .line 688
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    .line 694
    :pswitch_6
    const-string/jumbo v0, "q"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 695
    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 699
    const-string/jumbo v0, "api_call"

    .line 703
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/SearchActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "query"

    .line 704
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "q_source"

    .line 705
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 706
    const-string/jumbo v0, "event_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 708
    const-string/jumbo v2, "event_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from_push"

    const/4 v3, 0x1

    .line 709
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "terminal"

    const/4 v3, 0x1

    .line 710
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    .line 718
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/SearchActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "query"

    const/4 v0, 0x1

    .line 719
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "q_source"

    const-string/jumbo v2, "api_call"

    .line 720
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 725
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/SearchActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "query"

    const/4 v0, 0x2

    .line 726
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "realtime"

    const/4 v2, 0x1

    .line 727
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "q_source"

    const-string/jumbo v2, "api_call"

    .line 728
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 733
    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/SearchActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "query"

    const/4 v0, 0x2

    .line 734
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "q_source"

    const-string/jumbo v2, "api_call"

    .line 735
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 740
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    const-string/jumbo v1, "src"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 742
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/SearchActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "query"

    .line 743
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "q_source"

    .line 744
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 749
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    const-string/jumbo v1, "src"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 751
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/SearchActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "query"

    .line 752
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "q_source"

    .line 753
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 757
    :pswitch_c
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/twitter/android/ProfileActivity;->b(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/model/timeline/al;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 762
    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_account_id"

    .line 763
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 767
    :pswitch_e
    if-eqz v8, :cond_5

    .line 768
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/settings/NotificationsTimelineSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "NotificationSettingsActivity_account_name"

    .line 769
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 771
    :cond_5
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 777
    :pswitch_f
    sget-object v0, Lcom/twitter/android/TabbedVitFollowersActivity;->d:Landroid/net/Uri;

    invoke-static {p0, v2, v3, v7, v0}, Lcom/twitter/android/util/u;->a(Landroid/content/Context;JLcom/twitter/model/core/TwitterUser;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 782
    :pswitch_10
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 783
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "favorites"

    .line 784
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "screen_name"

    const/4 v0, 0x0

    .line 785
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 786
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "start_page"

    sget-object v3, Lcom/twitter/android/ProfileActivity;->d:Landroid/net/Uri;

    .line 787
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "association"

    iget-object v3, p0, Lcom/twitter/android/UrlInterpreterActivity;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 788
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 789
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 793
    :pswitch_11
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/app/lists/ListTabActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "screen_name"

    const/4 v0, 0x0

    .line 794
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "slug"

    const/4 v0, 0x2

    .line 795
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 799
    :pswitch_12
    const-string/jumbo v0, "screen_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    const-string/jumbo v1, "slug"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 801
    const-string/jumbo v2, "members"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    .line 802
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/app/lists/ListTabActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "screen_name"

    .line 803
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "slug"

    .line 804
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 805
    if-eqz v2, :cond_2

    .line 806
    const-string/jumbo v0, "tab"

    const-string/jumbo v2, "list_members"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 811
    :pswitch_13
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 812
    invoke-static {p0}, Lcom/twitter/android/client/by;->a(Landroid/content/Context;)Lcom/twitter/android/client/by;

    move-result-object v1

    .line 813
    invoke-virtual {v1}, Lcom/twitter/android/client/by;->a()Ljava/util/List;

    move-result-object v1

    .line 814
    if-eqz v1, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 815
    :cond_6
    invoke-direct {p0, v0}, Lcom/twitter/android/UrlInterpreterActivity;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 817
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 833
    :pswitch_14
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 834
    invoke-direct {p0, v0}, Lcom/twitter/android/UrlInterpreterActivity;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 836
    sparse-switch v10, :sswitch_data_0

    .line 854
    const/4 v0, 0x0

    .line 858
    :goto_2
    if-eqz v0, :cond_2

    .line 859
    const-string/jumbo v2, "start_page"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 838
    :sswitch_0
    sget-object v0, Lcom/twitter/android/ProfileActivity;->b:Landroid/net/Uri;

    goto :goto_2

    .line 842
    :sswitch_1
    sget-object v0, Lcom/twitter/android/ProfileActivity;->c:Landroid/net/Uri;

    goto :goto_2

    .line 846
    :sswitch_2
    sget-object v0, Lcom/twitter/android/ProfileActivity;->h:Landroid/net/Uri;

    goto :goto_2

    .line 850
    :sswitch_3
    sget-object v0, Lcom/twitter/android/ProfileActivity;->i:Landroid/net/Uri;

    goto :goto_2

    .line 865
    :pswitch_15
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/app/lists/ListTabActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "screen_name"

    const/4 v0, 0x0

    .line 866
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "slug"

    const/4 v0, 0x1

    .line 867
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 872
    :pswitch_16
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/app/lists/ListTabActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "screen_name"

    const/4 v0, 0x0

    .line 873
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "slug"

    const/4 v0, 0x1

    .line 874
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "tab"

    const-string/jumbo v2, "list_members"

    .line 875
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 880
    :pswitch_17
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 881
    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 882
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 883
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;[I)Lcom/twitter/android/composer/ax;

    .line 885
    :cond_8
    const-string/jumbo v1, "cursor"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 886
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 887
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 888
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/twitter/android/composer/ax;->a([I)Lcom/twitter/android/composer/ax;

    .line 890
    :cond_9
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->d(I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 891
    invoke-virtual {v0, p0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 896
    :pswitch_18
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 897
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->d(I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    const/4 v1, 0x1

    .line 898
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->b(I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 899
    invoke-virtual {v0, p0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 903
    :pswitch_19
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->L()Lcom/twitter/android/client/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/c;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 907
    :pswitch_1a
    const-string/jumbo v0, "screen_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF8"

    invoke-static {v0, v2}, Lcom/twitter/util/ap;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 909
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 912
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "start_page"

    sget-object v3, Lcom/twitter/android/ProfileActivity;->k:Landroid/net/Uri;

    .line 913
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "association"

    iget-object v3, p0, Lcom/twitter/android/UrlInterpreterActivity;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 914
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "screen_name"

    .line 915
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 919
    :pswitch_1b
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/UrlInterpreterActivity;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 923
    :pswitch_1c
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/UrlInterpreterActivity;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 929
    :pswitch_1d
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/SearchActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "query"

    const/4 v0, 0x2

    .line 930
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "search_type"

    const/4 v2, 0x2

    .line 931
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "q_source"

    const-string/jumbo v2, "api_call"

    .line 932
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 937
    :pswitch_1e
    invoke-static {}, Lcom/twitter/app/lists/c;->a()Lcom/twitter/app/lists/c;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 938
    invoke-virtual {v0, v2, v3}, Lcom/twitter/app/lists/c;->b(J)Lcom/twitter/app/lists/c;

    move-result-object v1

    const/4 v0, 0x0

    .line 939
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/app/lists/c;->a(Ljava/lang/String;)Lcom/twitter/app/lists/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 940
    invoke-virtual {v0, v1}, Lcom/twitter/app/lists/c;->a(Z)Lcom/twitter/app/lists/c;

    move-result-object v0

    .line 941
    invoke-virtual {v0, p0}, Lcom/twitter/app/lists/c;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 945
    :pswitch_1f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 949
    :pswitch_20
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 951
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 952
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 953
    invoke-virtual {v5, v0}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/Session;)V

    .line 954
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 955
    const-string/jumbo v0, "recipient_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 956
    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 957
    const-string/jumbo v0, "recipient_screen_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 960
    new-instance v2, Lcom/twitter/android/dm/o;

    invoke-direct {v2}, Lcom/twitter/android/dm/o;-><init>()V

    .line 961
    invoke-virtual {v2, v0}, Lcom/twitter/android/dm/o;->b(Ljava/lang/String;)Lcom/twitter/android/dm/o;

    move-result-object v0

    const/4 v2, 0x1

    .line 962
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/o;->b(Z)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/o;

    .line 963
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/o;->a(Ljava/lang/String;)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/o;

    .line 964
    invoke-virtual {v0}, Lcom/twitter/android/dm/o;->d()Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 960
    invoke-static {p0, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/n;)Landroid/content/Intent;

    move-result-object v0

    :goto_3
    move-object v1, v0

    .line 977
    goto/16 :goto_1

    .line 965
    :cond_a
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    .line 966
    new-instance v0, Lcom/twitter/android/dm/o;

    invoke-direct {v0}, Lcom/twitter/android/dm/o;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    .line 967
    invoke-virtual {v0, v4}, Lcom/twitter/android/dm/o;->a([J)Lcom/twitter/android/dm/o;

    move-result-object v0

    const/4 v2, 0x1

    .line 968
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/o;->b(Z)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/o;

    .line 969
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/o;->a(Ljava/lang/String;)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/o;

    .line 970
    invoke-virtual {v0}, Lcom/twitter/android/dm/o;->d()Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 966
    invoke-static {p0, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/n;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    .line 972
    :cond_b
    new-instance v0, Lcom/twitter/android/dm/m;

    invoke-direct {v0}, Lcom/twitter/android/dm/m;-><init>()V

    const/4 v2, 0x1

    .line 973
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/m;->b(Z)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/m;

    .line 974
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/m;->a(Ljava/lang/String;)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/m;

    .line 975
    invoke-virtual {v0}, Lcom/twitter/android/dm/m;->d()Lcom/twitter/android/dm/l;

    move-result-object v0

    .line 972
    invoke-static {p0, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/l;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    .line 977
    :cond_c
    if-eqz v8, :cond_d

    .line 978
    new-instance v0, Lcom/twitter/android/dm/d;

    invoke-direct {v0}, Lcom/twitter/android/dm/d;-><init>()V

    const/4 v1, 0x1

    .line 979
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/d;->b(Z)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/d;

    invoke-virtual {v0}, Lcom/twitter/android/dm/d;->a()Lcom/twitter/android/dm/b;

    move-result-object v0

    .line 978
    invoke-static {p0, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/b;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 981
    :cond_d
    invoke-static {p0}, Lcom/twitter/android/ip;->d(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 987
    :pswitch_21
    invoke-static {p0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 993
    :pswitch_22
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 997
    const/16 v0, 0x39

    if-ne v10, v0, :cond_e

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_e

    .line 998
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1000
    :cond_e
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 1001
    :goto_4
    new-instance v1, Lcom/twitter/android/dm/o;

    invoke-direct {v1}, Lcom/twitter/android/dm/o;-><init>()V

    .line 1002
    invoke-virtual {v1, v0}, Lcom/twitter/android/dm/o;->a([J)Lcom/twitter/android/dm/o;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Lcom/twitter/android/dm/o;->d()Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 1001
    invoke-static {p0, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/n;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1000
    :cond_f
    const/4 v0, 0x0

    goto :goto_4

    .line 1009
    :pswitch_23
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1010
    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_10

    .line 1011
    invoke-virtual {v5, v2, v3}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1013
    invoke-virtual {v5, v0}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/Session;)V

    .line 1014
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1015
    new-instance v1, Lcom/twitter/android/dm/o;

    invoke-direct {v1}, Lcom/twitter/android/dm/o;-><init>()V

    .line 1016
    invoke-virtual {v1, v0}, Lcom/twitter/android/dm/o;->c(Ljava/lang/String;)Lcom/twitter/android/dm/o;

    move-result-object v0

    const/4 v1, 0x1

    .line 1017
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/o;->b(Z)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/o;

    .line 1018
    invoke-virtual {v0}, Lcom/twitter/android/dm/o;->d()Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 1015
    invoke-static {p0, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/n;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1026
    :cond_10
    if-eqz v8, :cond_11

    .line 1027
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1029
    new-instance v1, Lcom/twitter/android/dm/o;

    invoke-direct {v1}, Lcom/twitter/android/dm/o;-><init>()V

    .line 1030
    invoke-virtual {v1, v0}, Lcom/twitter/android/dm/o;->c(Ljava/lang/String;)Lcom/twitter/android/dm/o;

    move-result-object v0

    const/4 v1, 0x1

    .line 1031
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/o;->b(Z)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/o;

    .line 1032
    invoke-virtual {v0}, Lcom/twitter/android/dm/o;->d()Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 1029
    invoke-static {p0, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/n;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1034
    :cond_11
    invoke-static {p0}, Lcom/twitter/android/ip;->c(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1040
    :pswitch_24
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1041
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 1042
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    .line 1043
    new-instance v0, Lcom/twitter/android/dm/o;

    invoke-direct {v0}, Lcom/twitter/android/dm/o;-><init>()V

    .line 1044
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/o;->a([J)Lcom/twitter/android/dm/o;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Lcom/twitter/android/dm/o;->d()Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 1043
    invoke-static {p0, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/n;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1047
    :cond_12
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1054
    :pswitch_25
    invoke-static {p0}, Lcom/twitter/android/util/aj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1060
    :pswitch_26
    invoke-static {p0}, Lcom/twitter/android/util/aj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1066
    :pswitch_27
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 1067
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "messages"

    .line 1068
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1069
    invoke-static {p0}, Lcom/twitter/android/dm/r;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1075
    :pswitch_28
    invoke-direct {p0, p1}, Lcom/twitter/android/UrlInterpreterActivity;->f(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1080
    :pswitch_29
    new-instance v0, Lcom/twitter/app/users/q;

    invoke-direct {v0}, Lcom/twitter/app/users/q;-><init>()V

    const/4 v1, 0x7

    .line 1081
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/q;->a(I)Lcom/twitter/app/users/q;

    move-result-object v0

    const-string/jumbo v1, "url_interpreter"

    .line 1082
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/q;->f(Ljava/lang/String;)Lcom/twitter/app/users/q;

    move-result-object v0

    const/4 v1, 0x1

    .line 1083
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/q;->a(Z)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 1084
    invoke-virtual {v0, p0}, Lcom/twitter/app/users/q;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1088
    :pswitch_2a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/AddressbookHelperActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "find_friends"

    .line 1089
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_scribe_page"

    const-string/jumbo v2, "app"

    .line 1090
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    .line 1091
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1095
    :pswitch_2b
    if-eqz v8, :cond_2

    invoke-static {p0}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    invoke-static {v4}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/library/platform/notifications/PushRegistration;->a(Ljava/lang/String;)V

    .line 1097
    invoke-static {p0}, Lcom/twitter/library/platform/notifications/PushRegistration;->d(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1103
    :pswitch_2c
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/CategoriesActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 1108
    :pswitch_2d
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 1109
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "list"

    .line 1110
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1111
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1112
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1113
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1118
    :pswitch_2e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "user_id"

    .line 1119
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "start_page"

    sget-object v2, Lcom/twitter/android/ProfileActivity;->d:Landroid/net/Uri;

    .line 1120
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    iget-object v2, p0, Lcom/twitter/android/UrlInterpreterActivity;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1121
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1126
    :pswitch_2f
    invoke-virtual {p0, p1, v2, v3}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri;J)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1130
    :pswitch_30
    if-eqz v8, :cond_2

    .line 1131
    invoke-static {v4}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/UrlInterpreterActivity;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "start_page"

    sget-object v2, Lcom/twitter/android/ProfileActivity;->l:Landroid/net/Uri;

    .line 1133
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1132
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1138
    :pswitch_31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/settings/PrivacyAndContentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "scroll_to_row"

    const-string/jumbo v4, "smart_mute"

    .line 1139
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_account_id"

    .line 1141
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1146
    :pswitch_32
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 1147
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "user"

    .line 1148
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "screen_name"

    const/4 v0, 0x1

    .line 1149
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1150
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1151
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    iget-object v2, p0, Lcom/twitter/android/UrlInterpreterActivity;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1152
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1156
    :pswitch_33
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1157
    if-eqz v0, :cond_13

    .line 1158
    invoke-direct {p0, p1, v0}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1160
    :cond_13
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1166
    :pswitch_34
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-direct {p0, p1, v0}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1172
    :pswitch_35
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "id"

    .line 1173
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1174
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1175
    const-string/jumbo v0, "screen_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1176
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "df"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v4, :cond_14

    const/4 v0, 0x1

    .line 1178
    :goto_5
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/twitter/android/UrlInterpreterActivity;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/api/PromotedEvent;Lcom/twitter/model/timeline/al;)Landroid/content/Intent;

    move-result-object v1

    .line 1180
    if-eqz v0, :cond_2

    .line 1181
    const-string/jumbo v0, "start_page"

    sget-object v2, Lcom/twitter/android/ProfileActivity;->k:Landroid/net/Uri;

    .line 1182
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1181
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1176
    :cond_14
    const/4 v0, 0x0

    goto :goto_5

    .line 1188
    :pswitch_36
    if-eqz v8, :cond_15

    .line 1189
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1191
    :cond_15
    invoke-static {p0}, Lcom/twitter/android/util/bf;->a(Landroid/content/Context;)Lcom/twitter/android/util/be;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1192
    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/android/util/be;->a(ZZZ)Lcom/twitter/android/FlowData;

    move-result-object v0

    .line 1193
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/FlowActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "flow_data"

    .line 1194
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1200
    :pswitch_37
    invoke-static {v0, p1}, Lcom/twitter/android/util/ak;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1201
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1202
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_16

    .line 1203
    invoke-virtual {v5, v0, v1}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 1205
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    cmp-long v0, v6, v0

    if-nez v0, :cond_16

    .line 1208
    invoke-virtual {v5, v2}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/Session;)V

    .line 1209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 1210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1215
    :cond_16
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/LoginActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1216
    const-string/jumbo v0, "screen_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1219
    const-string/jumbo v2, "screen_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    :cond_17
    if-eqz v8, :cond_18

    .line 1224
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/UrlInterpreterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1225
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1227
    :cond_18
    const-string/jumbo v0, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1232
    :pswitch_38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1236
    :pswitch_39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    .line 1237
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "sb_notification"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/notifications/StatusBarNotif;

    .line 1238
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1239
    invoke-static {v1, v0}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/content/Intent;Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    goto/16 :goto_1

    .line 1244
    :pswitch_3a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1248
    :pswitch_3b
    invoke-direct {p0}, Lcom/twitter/android/UrlInterpreterActivity;->h()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1252
    :pswitch_3c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1256
    :pswitch_3d
    new-instance v0, Lcom/twitter/android/dm/d;

    invoke-direct {v0}, Lcom/twitter/android/dm/d;-><init>()V

    .line 1257
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/d;->a(Ljava/lang/String;)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/d;

    .line 1258
    invoke-virtual {v0}, Lcom/twitter/android/dm/d;->a()Lcom/twitter/android/dm/b;

    move-result-object v0

    .line 1256
    invoke-static {p0, v0}, Lcom/twitter/android/dm/r;->b(Landroid/content/Context;Lcom/twitter/android/dm/b;)Landroid/content/Intent;

    move-result-object v0

    .line 1259
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->b(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1263
    :pswitch_3e
    invoke-static {p0}, Lcom/twitter/android/dm/r;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->b(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1267
    :pswitch_3f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->b(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1271
    :pswitch_40
    invoke-direct {p0}, Lcom/twitter/android/UrlInterpreterActivity;->h()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1275
    :pswitch_41
    if-nez v8, :cond_19

    .line 1276
    invoke-static {p0}, Lcom/twitter/android/DispatchActivity;->a(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1278
    :cond_19
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1279
    if-eqz v0, :cond_1a

    const-class v2, Lcom/twitter/app/main/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "source"

    .line 1280
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1279
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1282
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1283
    invoke-virtual {v0, v2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/highlights/HighlightsStoriesActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1285
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 1284
    invoke-virtual {v0, v2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    move-object v0, v1

    :goto_6
    move-object v1, v0

    .line 1292
    goto/16 :goto_1

    .line 1288
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/highlights/HighlightsStoriesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1289
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_6

    .line 1296
    :pswitch_42
    invoke-direct {p0, p1}, Lcom/twitter/android/UrlInterpreterActivity;->f(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1301
    :pswitch_43
    const-string/jumbo v0, "timeline_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1302
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1303
    :goto_7
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1304
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/CollectionPermalinkActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "type"

    const/16 v3, 0x1b

    .line 1305
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "timeline_tag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "custom-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1302
    :cond_1b
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1322
    :pswitch_44
    new-instance v0, Lcom/twitter/android/FollowFlowController;

    const-string/jumbo v2, "referral_campaign"

    invoke-direct {v0, v2}, Lcom/twitter/android/FollowFlowController;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1323
    invoke-virtual {v0, v2}, Lcom/twitter/android/FollowFlowController;->e(Z)Lcom/twitter/android/FollowFlowController;

    move-result-object v0

    .line 1324
    invoke-virtual {v0, p0}, Lcom/twitter/android/FollowFlowController;->c(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1328
    :pswitch_45
    const-string/jumbo v0, "cricket_experience_tournament_hashtag_takeover"

    invoke-static {v0}, Lcom/twitter/config/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1330
    const-string/jumbo v1, "src"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1331
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/SearchActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "query"

    .line 1332
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "q_source"

    .line 1333
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1337
    :pswitch_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1338
    const-string/jumbo v1, "src"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1339
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/SearchActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "query"

    .line 1340
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "q_source"

    .line 1341
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1345
    :pswitch_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1346
    const-string/jumbo v1, "src"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1347
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/SearchActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "query"

    .line 1348
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "q_source"

    .line 1349
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1353
    :pswitch_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1354
    const-string/jumbo v1, "src"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1355
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/SearchActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "query"

    .line 1356
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "q_source"

    .line 1357
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1361
    :pswitch_49
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1362
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1363
    invoke-virtual {v5, v0}, Lcom/twitter/library/client/bk;->d(Ljava/lang/String;)V

    .line 1365
    :cond_1c
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1366
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 1367
    invoke-static {p0, v2, v3}, Lcom/twitter/android/analytics/TweetAnalyticsWebViewActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1372
    :pswitch_4a
    invoke-static {p0}, Lcom/twitter/android/ads/AdsCompanionWebViewActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1376
    :pswitch_4b
    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1377
    if-eqz v2, :cond_2

    .line 1378
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1379
    invoke-virtual {v5, v2}, Lcom/twitter/library/client/bk;->d(Ljava/lang/String;)V

    .line 1381
    :cond_1d
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ads/AdsCompanionWebViewActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1388
    :pswitch_4c
    invoke-static {p0}, Lcom/twitter/util/w;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1389
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/util/w;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1391
    :goto_8
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 1390
    :cond_1e
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/util/w;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1395
    :pswitch_4d
    const/16 v0, 0x3f

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1399
    :pswitch_4e
    const/16 v0, 0x3e

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1403
    :pswitch_4f
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1407
    :pswitch_50
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screen_name"

    .line 1408
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1407
    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1413
    :pswitch_51
    const-string/jumbo v0, "android_email_explore_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1414
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1415
    const-string/jumbo v1, "country"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1417
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/EmailExploreFetchCategoryUsersActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "explore_email_category"

    .line 1418
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "explore_email_country"

    .line 1419
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 1420
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1422
    :cond_1f
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1428
    :pswitch_52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1432
    :pswitch_53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/settings/TimelineSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_account_id"

    .line 1433
    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "source"

    const-string/jumbo v2, "source"

    .line 1434
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1438
    :pswitch_54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/settings/AccessibilityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_account_id"

    .line 1439
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1443
    :pswitch_55
    new-instance v0, Lcom/twitter/android/FollowFlowController;

    const-string/jumbo v2, "url_interpreter"

    invoke-direct {v0, v2}, Lcom/twitter/android/FollowFlowController;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "allow_continue"

    const/4 v3, 0x0

    .line 1445
    invoke-virtual {p1, v2, v3}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    .line 1444
    invoke-virtual {v0, v2}, Lcom/twitter/android/FollowFlowController;->b(Z)Lcom/twitter/android/FollowFlowController;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "interest_picker"

    aput-object v4, v2, v3

    .line 1446
    invoke-virtual {v0, v2}, Lcom/twitter/android/FollowFlowController;->a([Ljava/lang/String;)Lcom/twitter/android/FollowFlowController;

    move-result-object v0

    .line 1447
    invoke-virtual {v0, p0}, Lcom/twitter/android/FollowFlowController;->c(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1451
    :pswitch_56
    const-string/jumbo v0, "steps"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/twitter/android/UrlInterpreterActivity;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1452
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1457
    :pswitch_57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PasswordResetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "init_url"

    .line 1458
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1462
    :pswitch_58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PhoneEntrySettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "account_name"

    .line 1463
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "umf_flow"

    const/4 v2, 0x1

    .line 1464
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1468
    :pswitch_59
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcfl;->g(J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1469
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/news/NewsActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 1471
    :cond_20
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1476
    :pswitch_5a
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcfl;->g(J)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1477
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/news/NewsDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "news_id"

    .line 1478
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1480
    :cond_21
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1486
    :pswitch_5b
    if-eqz v8, :cond_24

    invoke-static {}, Lcey;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1487
    const/16 v0, 0x8d

    if-ne v10, v0, :cond_22

    .line 1488
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1489
    :goto_9
    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1490
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_23

    .line 1491
    invoke-static {p0, v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->c(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    :goto_a
    move-object v1, v0

    .line 1496
    goto/16 :goto_1

    .line 1488
    :cond_22
    const-string/jumbo v0, "moment_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 1494
    :cond_23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/moments/ui/guide/ModernGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a

    .line 1497
    :cond_24
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1502
    :pswitch_5c
    if-eqz v8, :cond_25

    invoke-static {}, Lcey;->c()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1503
    const-string/jumbo v1, "categoryId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1504
    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1506
    :cond_25
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1511
    :pswitch_5d
    if-eqz v8, :cond_26

    invoke-static {}, Lcey;->c()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1512
    const-string/jumbo v1, "category_id"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1513
    invoke-direct {p0, v0, v1}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1515
    :cond_26
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1520
    :pswitch_5e
    const-string/jumbo v0, "bounce_location"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1521
    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/twitter/android/BouncerWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1525
    :pswitch_5f
    const-string/jumbo v0, "profile_birthday_collection_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1526
    invoke-virtual {p0, p1, v2, v3}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "edit_birthdate"

    const/4 v2, 0x1

    .line 1527
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1529
    :cond_27
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1535
    :pswitch_60
    const-string/jumbo v0, "screen_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1536
    invoke-direct {p0, v0}, Lcom/twitter/android/UrlInterpreterActivity;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1538
    sparse-switch v10, :sswitch_data_1

    .line 1548
    const/4 v0, 0x0

    .line 1552
    :goto_b
    if-eqz v0, :cond_2

    .line 1553
    const-string/jumbo v2, "start_page"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1540
    :sswitch_4
    sget-object v0, Lcom/twitter/android/ProfileActivity;->b:Landroid/net/Uri;

    goto :goto_b

    .line 1544
    :sswitch_5
    sget-object v0, Lcom/twitter/android/ProfileActivity;->c:Landroid/net/Uri;

    goto :goto_b

    .line 1558
    :pswitch_61
    if-eqz v8, :cond_28

    .line 1559
    const-string/jumbo v0, "deep_link"

    invoke-static {p0, v0}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionFlowActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1561
    :cond_28
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1566
    :pswitch_62
    invoke-direct {p0, p1}, Lcom/twitter/android/UrlInterpreterActivity;->f(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1570
    :pswitch_63
    invoke-direct {p0, p1}, Lcom/twitter/android/UrlInterpreterActivity;->e(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1574
    :pswitch_64
    const-string/jumbo v0, "native_mobile_sms_2fa_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1575
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/BackupCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "bc_account_id"

    .line 1576
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1578
    :cond_29
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1583
    :pswitch_65
    invoke-static {}, Lcbd;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1584
    const/4 v0, 0x0

    .line 1585
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1586
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1584
    :goto_c
    invoke-static {p0, v2, v3, v0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1586
    :cond_2a
    const/4 v0, 0x0

    goto :goto_c

    .line 1588
    :cond_2b
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1593
    :pswitch_66
    invoke-static {}, Lcbd;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1594
    const/4 v0, 0x2

    .line 1595
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1596
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2c

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1594
    :goto_d
    invoke-static {p0, v2, v3, v0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1596
    :cond_2c
    const-string/jumbo v0, "top"

    goto :goto_d

    .line 1598
    :cond_2d
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1603
    :pswitch_67
    const-string/jumbo v0, "alerts_v2_experience_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1604
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1605
    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1606
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2e

    invoke-static {p0, v0, v1}, Lcom/twitter/android/alerts/landing/AlertLandingActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    :goto_e
    move-object v1, v0

    .line 1607
    goto/16 :goto_1

    .line 1606
    :cond_2e
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v0

    goto :goto_e

    .line 1608
    :cond_2f
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1613
    :pswitch_68
    const-string/jumbo v0, "live_video_timeline_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1614
    invoke-static {p1}, Laaw;->a(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1615
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_30

    .line 1616
    new-instance v0, Lcom/twitter/android/livevideo/landing/a;

    invoke-direct {v0, v2, v3}, Lcom/twitter/android/livevideo/landing/a;-><init>(J)V

    .line 1617
    invoke-static {p0, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->a(Landroid/content/Context;Lcom/twitter/android/livevideo/landing/a;)Landroid/content/Intent;

    move-result-object v1

    .line 1620
    :cond_30
    if-nez v1, :cond_2

    .line 1621
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1626
    :pswitch_69
    if-eqz v8, :cond_31

    .line 1627
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1629
    :cond_31
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/LoginActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 1646
    :cond_32
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_0

    .line 1649
    :cond_33
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/LoginActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 1651
    :cond_34
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1652
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->c()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 1654
    :cond_35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1655
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_1

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1d
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_17
        :pswitch_21
        :pswitch_22
        :pswitch_25
        :pswitch_27
        :pswitch_24
        :pswitch_28
        :pswitch_28
        :pswitch_2c
        :pswitch_1c
        :pswitch_29
        :pswitch_1d
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_32
        :pswitch_4
        :pswitch_1e
        :pswitch_11
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_10
        :pswitch_14
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_34
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_2a
        :pswitch_0
        :pswitch_42
        :pswitch_2b
        :pswitch_53
        :pswitch_19
        :pswitch_1a
        :pswitch_4f
        :pswitch_1
        :pswitch_14
        :pswitch_23
        :pswitch_43
        :pswitch_0
        :pswitch_4
        :pswitch_4c
        :pswitch_27
        :pswitch_22
        :pswitch_a
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4e
        :pswitch_4d
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_33
        :pswitch_44
        :pswitch_4
        :pswitch_2
        :pswitch_14
        :pswitch_14
        :pswitch_54
        :pswitch_51
        :pswitch_50
        :pswitch_f
        :pswitch_57
        :pswitch_45
        :pswitch_46
        :pswitch_49
        :pswitch_26
        :pswitch_26
        :pswitch_4a
        :pswitch_4b
        :pswitch_20
        :pswitch_14
        :pswitch_69
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_37
        :pswitch_b
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_0
        :pswitch_44
        :pswitch_f
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_36
        :pswitch_52
        :pswitch_55
        :pswitch_56
        :pswitch_25
        :pswitch_12
        :pswitch_35
        :pswitch_43
        :pswitch_51
        :pswitch_5
        :pswitch_38
        :pswitch_52
        :pswitch_39
        :pswitch_3a
        :pswitch_3c
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_3b
        :pswitch_3d
        :pswitch_e
        :pswitch_1b
        :pswitch_47
        :pswitch_48
        :pswitch_58
        :pswitch_59
        :pswitch_5b
        :pswitch_5e
        :pswitch_3e
        :pswitch_5b
        :pswitch_5d
        :pswitch_0
        :pswitch_2f
        :pswitch_5f
        :pswitch_5a
        :pswitch_60
        :pswitch_5c
        :pswitch_30
        :pswitch_61
        :pswitch_0
        :pswitch_31
        :pswitch_18
        :pswitch_1f
        :pswitch_62
        :pswitch_64
        :pswitch_60
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_63
    .end packed-switch

    .line 836
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x1c -> :sswitch_2
        0x49 -> :sswitch_1
        0x57 -> :sswitch_0
    .end sparse-switch

    .line 1538
    :sswitch_data_1
    .sparse-switch
        0x93 -> :sswitch_5
        0x9d -> :sswitch_4
    .end sparse-switch
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 4

    .prologue
    .line 562
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const-string/jumbo v1, "permalink"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/UrlInterpreterActivity;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 563
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 565
    const-string/jumbo v2, "is_from_umf_prompt"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/UrlInterpreterActivity;->h:Z

    .line 567
    if-eqz v1, :cond_0

    .line 568
    invoke-static {v1}, Lcom/twitter/util/ap;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UrlInterpreterActivity;->c_(Landroid/net/Uri;)V

    .line 570
    :cond_0
    return-void
.end method

.method c()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1857
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method c(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    .prologue
    .line 1944
    sget-object v0, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x35

    if-ne v0, v1, :cond_0

    .line 1945
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 1946
    const-string/jumbo v0, "impression"

    invoke-static {v2, v3, v0, p1}, Lcom/twitter/android/mw;->a(JLjava/lang/String;Landroid/net/Uri;)V

    .line 1947
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1948
    if-eqz v0, :cond_0

    .line 1949
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1952
    sget-object v1, Lcom/twitter/android/UrlInterpreterActivity;->d:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 1953
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 1954
    const-string/jumbo v1, "resolvable"

    invoke-static {v2, v3, v1, v0}, Lcom/twitter/android/mw;->a(JLjava/lang/String;Landroid/net/Uri;)V

    .line 1960
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c_(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Lcom/twitter/android/UrlInterpreterActivity;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0, p1, v0}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 622
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twitter/android/UrlInterpreterActivity;->b(Landroid/net/Uri;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/xd;

    invoke-direct {v1, p0}, Lcom/twitter/android/xd;-><init>(Lcom/twitter/android/UrlInterpreterActivity;)V

    .line 595
    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/xc;

    invoke-direct {v1, p0}, Lcom/twitter/android/xc;-><init>(Lcom/twitter/android/UrlInterpreterActivity;)V

    .line 606
    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->d(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/xb;

    invoke-direct {v1, p0}, Lcom/twitter/android/xb;-><init>(Lcom/twitter/android/UrlInterpreterActivity;)V

    .line 612
    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->c(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1784
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1786
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1787
    const-string/jumbo v0, "AbsFragmentActivity_account_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1788
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1789
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "AbsFragmentActivity_account_name"

    .line 1790
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1789
    invoke-virtual {p0, v0}, Lcom/twitter/android/UrlInterpreterActivity;->startActivity(Landroid/content/Intent;)V

    .line 1794
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/UrlInterpreterActivity;->finish()V

    .line 1795
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1865
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/twitter/android/ip;->a(ZLandroid/content/Intent;)V

    .line 1866
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 1867
    return-void
.end method
