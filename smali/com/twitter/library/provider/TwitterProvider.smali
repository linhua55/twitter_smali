.class public Lcom/twitter/library/provider/TwitterProvider;
.super Landroid/content/ContentProvider;
.source "Twttr"


# static fields
.field private static final a:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x352

    const/16 v4, 0x88

    .line 325
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    .line 328
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "users"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 329
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "users/id/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups"

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/#"

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 335
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/following/#"

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 337
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/followers/#"

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/verified_followers/#"

    const/16 v3, 0x63

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 341
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/blocked/#"

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 343
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/members/#"

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 345
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/subscribers/#"

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/people/#"

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 349
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/search"

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/category_users/#"

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/contacts/#"

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/activity_sources/#"

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/favorited/#"

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 359
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/retweeted/#"

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/media_tagged/#"

    const/16 v3, 0x60

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/activity_targets/#"

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/dm_contacts/#"

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/device_following/#"

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 369
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/device_and_live_following/#"

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 371
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/incoming_friendships/#"

    const/16 v3, 0x58

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 373
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/welcome_wtf/#"

    const/16 v3, 0x59

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 375
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/find_people/#"

    const/16 v3, 0x62

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/similar_to/#"

    const/16 v3, 0x5a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 379
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/streamified_wtf/#"

    const/16 v3, 0x5c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 381
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/follow_recommendations/#"

    const/16 v3, 0x5b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 383
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/mutual_follows/#"

    const/16 v3, 0x5e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 385
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/geo_wtf/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/blocked_imported/#"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 389
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/muted/#"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 391
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/muted_automated/#"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 393
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/contact_forward_recommendation/#"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 395
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "user_groups_view/reply_context/#"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 398
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "statuses"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 399
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "statuses/id/#"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 401
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "drafts"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 402
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "drafts/id/#"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 404
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 405
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups/#"

    const/16 v3, 0x6f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 407
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view"

    const/16 v3, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 408
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/#"

    const/16 v3, 0x79

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 410
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/ref_id/#"

    const/16 v3, 0x7a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/id/#"

    const/16 v3, 0x8e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 414
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/timeline/#"

    const/16 v3, 0x7b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 416
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/home/#"

    const/16 v3, 0x7d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 418
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/mentions/#"

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 420
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/mentions_filtered/#"

    const/16 v3, 0x81

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 422
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/mentions_following/#"

    const/16 v3, 0x83

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 424
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/list/#"

    const/16 v3, 0x84

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 426
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/conversation/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 428
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/conversation_older/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 430
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/conversation_newer/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 432
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/activity_targets/#"

    const/16 v3, 0x8a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 434
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/activity_target_objects/#"

    const/16 v3, 0x8b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 436
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/activity/#"

    const/16 v3, 0x89

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 438
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/custom_timeline_users"

    const/16 v3, 0x61

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 440
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_retweets_view/rt_timeline/#"

    const/16 v3, 0x87

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 442
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_retweets_view/rt_timeline_unlimited/#"

    const/16 v3, 0x92

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 444
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/media/#"

    const/16 v3, 0x8c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 446
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_retweets_view/rt_media/#"

    const/16 v3, 0x8d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 448
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_retweets_view/activity/#"

    const/16 v3, 0x8f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 450
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_retweets_view/#"

    const/16 v3, 0x90

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_retweets_view/ref_id/#"

    const/16 v3, 0x91

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 454
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "status_groups_view/moments/#"

    const/16 v3, 0x93

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 457
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "conversation/*"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 459
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "dm_inbox"

    const/16 v3, 0xcb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 461
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "dm_inbox/*"

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 463
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "conversation_participants"

    const/16 v3, 0xce

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 465
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "conversation_participants/*"

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 467
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "dm_unread_count"

    const/16 v3, 0xd0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 470
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "lists_view"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 471
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "lists_view/#"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 472
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "lists_view/id/#"

    const/16 v3, 0x12e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 474
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 475
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/home/#"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 476
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/urt_home/#"

    const/16 v3, 0x1a1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 477
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/user/#"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 479
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/featured/#"

    const/16 v3, 0x1a2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 481
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/trendsplus/#"

    const/16 v3, 0x195

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 483
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/conversation/#"

    const/16 v3, 0x19e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 485
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/custom/#"

    const/16 v3, 0x194

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 487
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/place/#"

    const/16 v3, 0x193

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 489
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/alert/#"

    const/16 v3, 0x196

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 490
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/live_video_event/#"

    const/16 v3, 0x19d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 492
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/list/#"

    const/16 v3, 0x19f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 493
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/urt_favorites/#"

    const/16 v3, 0x1a0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 494
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/media/#"

    const/16 v3, 0x198

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 495
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/mentions/#"

    const/16 v3, 0x199

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 496
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/mentions_filtered/#"

    const/16 v3, 0x19a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 498
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "timeline_view/mentions_following/#"

    const/16 v3, 0x19c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 501
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "dismiss_info_view/timeline_id/#"

    const/16 v3, 0x1a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 504
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "search_queries"

    const/16 v3, 0x208

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 505
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "search_queries/#"

    const/16 v3, 0x209

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 507
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "search_results_view"

    const/16 v3, 0x20a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 509
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "notifications_tab_view"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 511
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "activities"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 513
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "stories_view"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 514
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "stories_view"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 515
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "stories/tweets/*"

    const/16 v3, 0x353

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 517
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "categories_view"

    const/16 v3, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 519
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "notifications"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 521
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "order_history"

    const/16 v3, 0x578

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 522
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "news"

    const/16 v3, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 523
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "news/#"

    const/16 v3, 0x5dd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 524
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "news/tweets/#"

    const/16 v3, 0x5de

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 525
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "news/users/#"

    const/16 v3, 0x5df

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 528
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "moments_guide_categories"

    const/16 v3, 0x647

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 530
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "moments_sectioned_guide/#/#"

    const/16 v3, 0x648

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 532
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "moments_pages_view/#"

    const/16 v3, 0x641

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 533
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "moments/#"

    const/16 v3, 0x642

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 534
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "moments_pivot_guide/#"

    const/16 v3, 0x645

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 538
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "ads_account_permissions"

    const/16 v3, 0x6a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 541
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "business_profiles"

    const/16 v3, 0x708

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 542
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "business_profiles/id/#"

    const/16 v3, 0x709

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 543
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "business_profiles/user_id/#"

    const/16 v3, 0x70a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 546
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "dm_card_state"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 549
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    const-string/jumbo v2, "ads_view"

    const/16 v3, 0x834

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 550
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;
    .locals 17

    .prologue
    .line 1488
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1489
    if-eqz p3, :cond_0

    .line 1490
    const-string/jumbo v1, "("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    :cond_0
    const-string/jumbo v1, "timeline_owner_id"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    invoke-static/range {p4 .. p4}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1494
    const-string/jumbo v1, " AND "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    :cond_1
    const-string/jumbo v1, "newer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1497
    if-eqz v1, :cond_2

    .line 1498
    const-string/jumbo v2, " AND "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "timeline_updated_at"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    :cond_2
    invoke-static/range {p6 .. p6}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v6, p6

    .line 1508
    :goto_0
    :try_start_0
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1514
    :goto_1
    if-gtz v1, :cond_5

    .line 1515
    const/16 v1, 0x190

    move/from16 v16, v1

    .line 1518
    :goto_2
    invoke-static {}, Lcjw;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1519
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1520
    const-string/jumbo v2, "timeline_view"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1521
    const-string/jumbo v8, "TwitterProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QUERY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v2, Lchj;->a:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", POST-GROUPING LIMIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    :cond_3
    const-string/jumbo v8, "timeline_view"

    sget-object v9, Lchj;->a:[Ljava/lang/String;

    .line 1527
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, p1

    move-object/from16 v11, p5

    move-object v14, v6

    .line 1526
    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1529
    new-instance v2, Lcom/twitter/library/provider/cj;

    invoke-direct {v2, v1}, Lcom/twitter/library/provider/cj;-><init>(Landroid/database/Cursor;)V

    .line 1530
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/twitter/library/provider/cj;->a(I)V

    .line 1531
    invoke-virtual {v2}, Lcom/twitter/library/provider/cj;->b()V

    .line 1532
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Lcom/twitter/library/provider/cj;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1533
    return-object v2

    .line 1504
    :cond_4
    const-string/jumbo v6, "status_groups_preview_draft_id DESC, timeline_updated_at DESC, _id ASC"

    goto/16 :goto_0

    .line 1509
    :catch_0
    move-exception v1

    .line 1510
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_5
    move/from16 v16, v1

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1548
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Delete not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1553
    sget-object v0, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1701
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1555
    :sswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.users"

    .line 1698
    :goto_0
    return-object v0

    .line 1558
    :sswitch_1
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.users"

    goto :goto_0

    .line 1588
    :sswitch_2
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.users.groups"

    goto :goto_0

    .line 1591
    :sswitch_3
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.statuses"

    goto :goto_0

    .line 1594
    :sswitch_4
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.statuses"

    goto :goto_0

    .line 1597
    :sswitch_5
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.drafts"

    goto :goto_0

    .line 1600
    :sswitch_6
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.drafts"

    goto :goto_0

    .line 1607
    :sswitch_7
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.statuses"

    goto :goto_0

    .line 1623
    :sswitch_8
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.statuses"

    goto :goto_0

    .line 1626
    :sswitch_9
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.statuses.groups"

    goto :goto_0

    .line 1629
    :sswitch_a
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.statuses.groups"

    goto :goto_0

    .line 1632
    :sswitch_b
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.lists"

    goto :goto_0

    .line 1636
    :sswitch_c
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.lists"

    goto :goto_0

    .line 1648
    :sswitch_d
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.timeline"

    goto :goto_0

    .line 1651
    :sswitch_e
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.search.queries"

    goto :goto_0

    .line 1654
    :sswitch_f
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.search.queries"

    goto :goto_0

    .line 1657
    :sswitch_10
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.search.results"

    goto :goto_0

    .line 1660
    :sswitch_11
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.notificationstab"

    goto :goto_0

    .line 1663
    :sswitch_12
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.activities"

    goto :goto_0

    .line 1666
    :sswitch_13
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.stories"

    goto :goto_0

    .line 1669
    :sswitch_14
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.statuses"

    goto :goto_0

    .line 1672
    :sswitch_15
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.search.queries"

    goto :goto_0

    .line 1675
    :sswitch_16
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.notifications"

    goto :goto_0

    .line 1678
    :sswitch_17
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.orderhistory"

    goto :goto_0

    .line 1682
    :sswitch_18
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.news.news"

    goto :goto_0

    .line 1685
    :sswitch_19
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.statuses"

    goto :goto_0

    .line 1688
    :sswitch_1a
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.adsaccountpermissions"

    goto :goto_0

    .line 1691
    :sswitch_1b
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.businessprofiles"

    goto :goto_0

    .line 1695
    :sswitch_1c
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.businessprofiles"

    goto :goto_0

    .line 1698
    :sswitch_1d
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.twitter.android.ads"

    goto :goto_0

    .line 1553
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x28 -> :sswitch_5
        0x29 -> :sswitch_6
        0x3c -> :sswitch_2
        0x46 -> :sswitch_2
        0x48 -> :sswitch_2
        0x49 -> :sswitch_2
        0x4a -> :sswitch_2
        0x4b -> :sswitch_2
        0x4c -> :sswitch_2
        0x4d -> :sswitch_2
        0x4e -> :sswitch_2
        0x51 -> :sswitch_2
        0x52 -> :sswitch_2
        0x53 -> :sswitch_2
        0x54 -> :sswitch_2
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x60 -> :sswitch_2
        0x61 -> :sswitch_2
        0x62 -> :sswitch_2
        0x63 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x69 -> :sswitch_2
        0x6a -> :sswitch_2
        0x6e -> :sswitch_9
        0x6f -> :sswitch_a
        0x78 -> :sswitch_8
        0x79 -> :sswitch_7
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
        0x80 -> :sswitch_8
        0x81 -> :sswitch_8
        0x83 -> :sswitch_8
        0x84 -> :sswitch_8
        0x87 -> :sswitch_8
        0x88 -> :sswitch_8
        0x8a -> :sswitch_8
        0x8b -> :sswitch_8
        0x8c -> :sswitch_8
        0x8e -> :sswitch_7
        0x90 -> :sswitch_7
        0x91 -> :sswitch_7
        0x92 -> :sswitch_8
        0x93 -> :sswitch_8
        0x12c -> :sswitch_b
        0x12d -> :sswitch_c
        0x12e -> :sswitch_c
        0x190 -> :sswitch_d
        0x191 -> :sswitch_d
        0x192 -> :sswitch_d
        0x193 -> :sswitch_d
        0x194 -> :sswitch_d
        0x196 -> :sswitch_d
        0x19d -> :sswitch_d
        0x19e -> :sswitch_d
        0x1a1 -> :sswitch_d
        0x1a2 -> :sswitch_d
        0x208 -> :sswitch_e
        0x209 -> :sswitch_f
        0x20a -> :sswitch_10
        0x258 -> :sswitch_11
        0x2bc -> :sswitch_12
        0x352 -> :sswitch_13
        0x353 -> :sswitch_14
        0x384 -> :sswitch_15
        0x3e8 -> :sswitch_16
        0x578 -> :sswitch_17
        0x5dc -> :sswitch_18
        0x5dd -> :sswitch_18
        0x5de -> :sswitch_19
        0x6a4 -> :sswitch_1a
        0x708 -> :sswitch_1b
        0x709 -> :sswitch_1c
        0x70a -> :sswitch_1c
        0x834 -> :sswitch_1d
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 1538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Insert not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    .prologue
    .line 560
    const/4 v2, 0x0

    .line 561
    const/4 v5, 0x0

    .line 562
    const-string/jumbo v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 563
    const-string/jumbo v0, "ownerId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 566
    const-string/jumbo v3, "TwitterProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QUERY uri: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    sget-object v3, Lcom/twitter/library/provider/TwitterProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 570
    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v8, 0x0

    .line 571
    :goto_0
    const/16 v1, 0x29

    if-eq v3, v1, :cond_0

    const/16 v1, 0x28

    if-ne v3, v1, :cond_2

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8, v9}, Lcom/twitter/library/provider/s;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/s;

    move-result-object v1

    .line 573
    invoke-virtual {v1}, Lcom/twitter/library/provider/s;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 579
    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 1470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_0

    .line 575
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/library/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8, v9}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 576
    invoke-virtual {v1}, Lcom/twitter/library/provider/dm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto :goto_1

    .line 582
    :sswitch_0
    const-string/jumbo v2, "users"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 583
    const/4 v2, 0x2

    if-ne v3, v2, :cond_3

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 586
    :cond_3
    const-string/jumbo v2, "profile_created DESC"

    move-object v8, v7

    move-object v9, v5

    .line 1475
    :goto_2
    invoke-static/range {p5 .. p5}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v10, p5

    .line 1479
    :goto_3
    const-string/jumbo v11, "TwitterProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QUERY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v9

    move-object v7, v10

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1481
    const-string/jumbo v1, "TwitterProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QUERY results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    invoke-virtual {p0}, Lcom/twitter/library/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1483
    :goto_4
    return-object v0

    .line 590
    :sswitch_1
    const-string/jumbo v2, "user_groups"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 591
    const-string/jumbo v2, "rank ASC"

    .line 592
    if-nez v7, :cond_12

    .line 593
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto :goto_2

    .line 598
    :sswitch_2
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 600
    const-string/jumbo v2, "_id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 601
    goto/16 :goto_2

    .line 604
    :sswitch_3
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 607
    const-string/jumbo v2, "_id ASC"

    .line 608
    if-nez v7, :cond_12

    .line 609
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 614
    :sswitch_4
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 617
    const-string/jumbo v2, "_id ASC"

    .line 618
    if-nez v7, :cond_12

    .line 619
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 624
    :sswitch_5
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 627
    const-string/jumbo v2, "_id ASC"

    .line 628
    if-nez v7, :cond_12

    .line 629
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 634
    :sswitch_6
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 636
    const-string/jumbo v2, "user_groups_type=2"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 637
    const-string/jumbo v2, "_id ASC"

    .line 638
    if-nez v7, :cond_12

    .line 639
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 644
    :sswitch_7
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 646
    const-string/jumbo v2, "user_groups_type=4"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 647
    const-string/jumbo v2, "_id ASC"

    .line 648
    if-nez v7, :cond_12

    .line 649
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 654
    :sswitch_8
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 656
    const-string/jumbo v2, "user_groups_type=5"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 657
    const-string/jumbo v2, "_id ASC"

    .line 658
    if-nez v7, :cond_12

    .line 659
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 664
    :sswitch_9
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 666
    const-string/jumbo v2, "user_groups_type=3"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 667
    const-string/jumbo v2, "_id ASC"

    .line 668
    if-nez v7, :cond_12

    .line 669
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 674
    :sswitch_a
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 682
    const-string/jumbo v5, "users_user_id"

    .line 683
    const-string/jumbo v2, "_id ASC"

    .line 684
    if-nez v7, :cond_13

    .line 685
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 690
    :sswitch_b
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 692
    const-string/jumbo v5, "users_user_id"

    .line 693
    const-string/jumbo v2, "_id ASC"

    .line 694
    if-nez v7, :cond_13

    .line 695
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 700
    :sswitch_c
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 703
    const-string/jumbo v5, "users_user_id"

    .line 704
    const-string/jumbo v2, "_id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 705
    goto/16 :goto_2

    .line 708
    :sswitch_d
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 709
    const-string/jumbo v5, "username"

    .line 710
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    .line 711
    if-nez v7, :cond_13

    .line 712
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 717
    :sswitch_e
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 720
    const-string/jumbo v5, "users_user_id"

    .line 721
    const-string/jumbo v2, "_id ASC"

    .line 722
    if-nez v7, :cond_13

    .line 723
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 728
    :sswitch_f
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 731
    const-string/jumbo v5, "users_user_id"

    .line 732
    const-string/jumbo v2, "_id ASC"

    .line 733
    if-nez v7, :cond_13

    .line 734
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 739
    :sswitch_10
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "users_friendship"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 743
    const-string/jumbo v5, "users_user_id"

    .line 744
    const-string/jumbo v2, "users_friendship DESC, LOWER(users_name) ASC"

    .line 745
    if-nez v7, :cond_13

    .line 746
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 751
    :sswitch_11
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 754
    const-string/jumbo v2, "_id ASC"

    .line 755
    if-nez v7, :cond_12

    .line 756
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 761
    :sswitch_12
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 765
    const-string/jumbo v2, "_id ASC"

    .line 766
    if-nez v7, :cond_12

    .line 767
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 772
    :sswitch_13
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 775
    const-string/jumbo v5, "users_user_id"

    .line 776
    const-string/jumbo v2, "_id ASC"

    .line 777
    if-nez v7, :cond_13

    .line 778
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 783
    :sswitch_14
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 786
    const-string/jumbo v5, "users_user_id"

    .line 787
    const-string/jumbo v2, "_id ASC"

    .line 788
    if-nez v7, :cond_13

    .line 789
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 794
    :sswitch_15
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 797
    const-string/jumbo v5, "users_user_id"

    .line 798
    const-string/jumbo v2, "_id ASC"

    .line 799
    if-nez v7, :cond_13

    .line 800
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 805
    :sswitch_16
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 808
    const-string/jumbo v5, "users_user_id"

    .line 809
    const-string/jumbo v2, "_id ASC"

    .line 810
    if-nez v7, :cond_13

    .line 811
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 816
    :sswitch_17
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 817
    const-string/jumbo v2, "user_groups_type=19"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 818
    const-string/jumbo v2, "_id ASC"

    .line 819
    if-nez v7, :cond_12

    .line 820
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 825
    :sswitch_18
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 826
    invoke-static {}, Lcgb;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND NOT ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "users_friendship"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 836
    :goto_5
    const-string/jumbo v5, "users_user_id"

    .line 837
    const-string/jumbo v2, "_id ASC"

    .line 838
    if-nez v7, :cond_13

    .line 839
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 831
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_type=19 OR (user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 833
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 831
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 844
    :sswitch_19
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 845
    const-string/jumbo v2, "user_groups_type=21"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 846
    const-string/jumbo v2, "_id ASC"

    .line 847
    if-nez v7, :cond_12

    .line 848
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 853
    :sswitch_1a
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 856
    const-string/jumbo v2, "_id ASC"

    .line 857
    if-nez v7, :cond_12

    .line 858
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 863
    :sswitch_1b
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 866
    const-string/jumbo v2, "_id ASC"

    .line 867
    if-nez v7, :cond_12

    .line 868
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 873
    :sswitch_1c
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "users_friendship"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 878
    const-string/jumbo v5, "users_user_id"

    .line 879
    const-string/jumbo v2, "LOWER(users_name) ASC"

    .line 880
    if-nez v7, :cond_13

    .line 881
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 886
    :sswitch_1d
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 887
    const-string/jumbo v2, "user_groups_type=33"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 888
    const-string/jumbo v2, "_id ASC"

    .line 889
    if-nez v7, :cond_12

    .line 890
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 895
    :sswitch_1e
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 897
    const-string/jumbo v2, "user_groups_type=37"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 898
    const-string/jumbo v2, "_id ASC"

    .line 899
    if-nez v7, :cond_12

    .line 900
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 905
    :sswitch_1f
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 907
    const-string/jumbo v2, "user_groups_type=26"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 908
    const-string/jumbo v2, "_id ASC"

    .line 909
    if-nez v7, :cond_12

    .line 910
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 915
    :sswitch_20
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 917
    const-string/jumbo v2, "user_groups_type=38"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 918
    const-string/jumbo v2, "_id ASC"

    .line 919
    if-nez v7, :cond_12

    .line 920
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 925
    :sswitch_21
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 926
    const-string/jumbo v2, "user_groups_type=41 AND NOT (users_friendship&4=4)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 929
    const-string/jumbo v2, "_id ASC"

    .line 930
    if-nez v7, :cond_12

    .line 931
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 936
    :sswitch_22
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND NOT ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "users_friendship"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 941
    const-string/jumbo v5, "users_user_id"

    .line 942
    const-string/jumbo v2, "_id ASC"

    .line 943
    if-nez v7, :cond_13

    .line 944
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 950
    :sswitch_23
    const-string/jumbo v2, "statuses"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 951
    const/16 v2, 0x15

    if-ne v3, v2, :cond_5

    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 954
    :cond_5
    const-string/jumbo v2, "created DESC"

    .line 955
    if-nez v7, :cond_12

    .line 956
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 962
    :sswitch_24
    const-string/jumbo v2, "drafts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 963
    const/16 v2, 0x29

    if-ne v3, v2, :cond_6

    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 966
    :cond_6
    const-string/jumbo v2, "updated_at DESC"

    .line 967
    if-nez v7, :cond_12

    .line 968
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 974
    :sswitch_25
    const-string/jumbo v2, "status_groups"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 975
    const/16 v2, 0x6f

    if-ne v3, v2, :cond_7

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 978
    :cond_7
    const-string/jumbo v2, "type DESC"

    .line 979
    if-nez v7, :cond_12

    .line 980
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 985
    :sswitch_26
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 986
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    .line 987
    if-nez v7, :cond_12

    .line 988
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 993
    :sswitch_27
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 995
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    .line 996
    if-nez v7, :cond_12

    .line 997
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 1002
    :sswitch_28
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_ref_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1005
    const-string/jumbo v7, "1"

    .line 1006
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1007
    goto/16 :goto_2

    .line 1010
    :sswitch_29
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_g_status_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1013
    const-string/jumbo v7, "1"

    .line 1014
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1015
    goto/16 :goto_2

    .line 1018
    :sswitch_2a
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1019
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1021
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    .line 1022
    if-nez v7, :cond_12

    .line 1023
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 1029
    :sswitch_2b
    const-string/jumbo v2, "status_groups_retweets_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1030
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status_groups_owner_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "status_groups_type"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1032
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    .line 1033
    const/16 v4, 0x87

    if-ne v4, v3, :cond_12

    if-nez v7, :cond_12

    .line 1034
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 1039
    :sswitch_2c
    const-string/jumbo v2, "status_groups_retweets_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_g_status_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1042
    const-string/jumbo v7, "1"

    .line 1043
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1044
    goto/16 :goto_2

    .line 1047
    :sswitch_2d
    const-string/jumbo v2, "status_groups_retweets_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_ref_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1050
    const-string/jumbo v7, "1"

    .line 1051
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1052
    goto/16 :goto_2

    .line 1055
    :sswitch_2e
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1058
    const-string/jumbo v2, "newer"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1059
    if-eqz v2, :cond_8

    .line 1060
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " AND status_groups_updated_at>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1062
    :cond_8
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    .line 1063
    if-nez v7, :cond_12

    .line 1064
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 1069
    :sswitch_2f
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1070
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1072
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1073
    goto/16 :goto_2

    .line 1076
    :sswitch_30
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1079
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1080
    goto/16 :goto_2

    .line 1083
    :sswitch_31
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1086
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1087
    goto/16 :goto_2

    .line 1090
    :sswitch_32
    const-string/jumbo v3, "status_groups_retweets_view"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1091
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status_groups_owner_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "status_groups_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1093
    if-nez v7, :cond_12

    .line 1094
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 1099
    :sswitch_33
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_type=21 AND status_groups_tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1101
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1100
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1102
    const-string/jumbo v2, "status_groups_updated_at ASC, status_groups_g_status_id ASC, status_groups_preview_draft_id ASC, _id DESC"

    .line 1103
    if-nez v7, :cond_12

    .line 1104
    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 1109
    :sswitch_34
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1112
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1113
    goto/16 :goto_2

    .line 1116
    :sswitch_35
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1119
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1120
    goto/16 :goto_2

    .line 1123
    :sswitch_36
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1125
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1126
    goto/16 :goto_2

    .line 1129
    :sswitch_37
    const-string/jumbo v2, "status_groups_retweets_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1131
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1132
    goto/16 :goto_2

    .line 1135
    :sswitch_38
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1138
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1139
    goto/16 :goto_2

    .line 1142
    :sswitch_39
    const-string/jumbo v2, "status_groups_retweets_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_owner_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1145
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1146
    goto/16 :goto_2

    .line 1149
    :sswitch_3a
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_type=33 AND status_groups_tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1151
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1150
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1152
    const-string/jumbo v2, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1153
    goto/16 :goto_2

    .line 1156
    :sswitch_3b
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1159
    :sswitch_3c
    const/4 v0, 0x0

    invoke-static {v0}, Lcbf;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1160
    const-string/jumbo v4, "timeline_type=0 AND (timeline_data_type_group=0 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1164
    :sswitch_3d
    const/16 v0, 0x11

    invoke-static {v0}, Lcbf;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1165
    const-string/jumbo v4, "timeline_type=17 AND (timeline_data_type_group=0 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1169
    :sswitch_3e
    const-string/jumbo v4, "timeline_type=1 AND (timeline_data_type_group=1 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1173
    :sswitch_3f
    const-string/jumbo v4, "timeline_type=18 AND (timeline_data_type_group=1 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1177
    :sswitch_40
    const-string/jumbo v4, "timeline_type=6 AND (timeline_data_type_group=28 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1181
    :sswitch_41
    const-string/jumbo v4, "timeline_type=5 AND (timeline_data_type_group=27 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1185
    :sswitch_42
    const-string/jumbo v4, "timeline_type=14 AND (timeline_data_type_group=37 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1189
    :sswitch_43
    const-string/jumbo v4, "timeline_type=3 AND (timeline_data_type_group=30 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1193
    :sswitch_44
    const-string/jumbo v4, "timeline_type=4 AND (timeline_data_type_group=8 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1197
    :sswitch_45
    const-string/jumbo v4, "timeline_type=13 AND (timeline_data_type_group=3 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1201
    :sswitch_46
    const-string/jumbo v4, "timeline_type=15 AND (timeline_data_type_group=9 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1205
    :sswitch_47
    const-string/jumbo v4, "timeline_type=16 AND (timeline_data_type_group=2 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1209
    :sswitch_48
    const-string/jumbo v4, "timeline_type=2 AND (timeline_data_type_group=17 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1213
    :sswitch_49
    const-string/jumbo v4, "timeline_type=9 AND (timeline_data_type_group=5 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1217
    :sswitch_4a
    const-string/jumbo v4, "timeline_type=10 AND (timeline_data_type_group=23 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1221
    :sswitch_4b
    const-string/jumbo v4, "timeline_type=12 AND (timeline_data_type_group=24 OR timeline_data_type_group IS NULL)"

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/provider/TwitterProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/provider/cj;

    move-result-object v0

    goto/16 :goto_4

    .line 1225
    :sswitch_4c
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 1226
    const-string/jumbo v4, "dismiss_info_view"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dismiss_info_timeline_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, v7

    move-object v9, v5

    .line 1228
    goto/16 :goto_2

    .line 1231
    :sswitch_4d
    const-string/jumbo v2, "lists_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1232
    const-string/jumbo v2, "topics_ev_query ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1233
    goto/16 :goto_2

    .line 1236
    :sswitch_4e
    const-string/jumbo v2, "lists_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1238
    const-string/jumbo v2, "topics_ev_query ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1239
    goto/16 :goto_2

    .line 1242
    :sswitch_4f
    const-string/jumbo v2, "lists_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "topics_ev_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1244
    const-string/jumbo v2, "topics_ev_query ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1245
    goto/16 :goto_2

    .line 1248
    :sswitch_50
    const-string/jumbo v2, "conversation"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "conversation_entries_conversation_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "conversation_entries_entry_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcnb;->c:Ljava/util/Set;

    .line 1251
    invoke-static {v3}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1249
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1252
    const-string/jumbo v2, "conversation_entries_sort_entry_id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1253
    goto/16 :goto_2

    .line 1256
    :sswitch_51
    const-string/jumbo v2, "dm_inbox"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1257
    const-string/jumbo v2, "conversations_sort_event_id DESC"

    move-object v8, v7

    move-object v9, v5

    .line 1258
    goto/16 :goto_2

    .line 1261
    :sswitch_52
    const-string/jumbo v2, "dm_inbox"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "conversations_conversation_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1263
    const-string/jumbo v2, "conversations_sort_event_id DESC"

    move-object v8, v7

    move-object v9, v5

    .line 1264
    goto/16 :goto_2

    .line 1267
    :sswitch_53
    const-string/jumbo v2, "conversation_participants"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1268
    const-string/jumbo v2, "participant_type,join_time ASC,CAST(user_id AS INT)"

    move-object v8, v7

    move-object v9, v5

    .line 1269
    goto/16 :goto_2

    .line 1272
    :sswitch_54
    const-string/jumbo v2, "conversation_participants"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "conversation_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1274
    const-string/jumbo v2, "participant_type,join_time ASC,CAST(user_id AS INT)"

    move-object v8, v7

    move-object v9, v5

    .line 1275
    goto/16 :goto_2

    .line 1278
    :sswitch_55
    const-string/jumbo v0, "SELECT COUNT(*) FROM conversations WHERE last_readable_event_id > last_read_event_id AND last_readable_event_id > (SELECT COALESCE((SELECT CAST(next as int) AS last_seen_event_id FROM cursors WHERE kind=14 AND type=0 ORDER BY last_seen_event_id DESC LIMIT 1), 0));"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1279
    invoke-virtual {p0}, Lcom/twitter/library/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 1283
    :sswitch_56
    const-string/jumbo v2, "search_queries"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1284
    const-string/jumbo v2, "like"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1285
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1286
    const-string/jumbo v3, "name LIKE "

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1289
    :cond_9
    const-string/jumbo v2, "name ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1290
    goto/16 :goto_2

    .line 1293
    :sswitch_57
    const-string/jumbo v2, "search_queries"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1295
    const-string/jumbo v2, "name ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1296
    goto/16 :goto_2

    .line 1299
    :sswitch_58
    const-string/jumbo v2, "search_results_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1300
    const-string/jumbo v2, "polled=0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1301
    const-string/jumbo v2, "type_id ASC, _id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1302
    goto/16 :goto_2

    .line 1305
    :sswitch_59
    const-string/jumbo v2, "notifications_tab_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1306
    const-string/jumbo v2, "notifications_tab_sort_id DESC"

    move-object v8, v7

    move-object v9, v5

    .line 1307
    goto/16 :goto_2

    .line 1310
    :sswitch_5a
    const-string/jumbo v2, "activities"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1311
    const-string/jumbo v2, "max_position DESC"

    move-object v8, v7

    move-object v9, v5

    .line 1312
    goto/16 :goto_2

    .line 1315
    :sswitch_5b
    const-string/jumbo v2, "stories_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1316
    invoke-static/range {p5 .. p5}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v2, p5

    :goto_6
    move-object v8, v7

    move-object v9, v5

    .line 1317
    goto/16 :goto_2

    .line 1316
    :cond_a
    const-string/jumbo v2, "story_order DESC, _id ASC"

    goto :goto_6

    .line 1320
    :sswitch_5c
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1321
    const-string/jumbo v2, "search_id"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1325
    const-string/jumbo v2, "stories_view"

    sget-object v3, Lchh;->a:[Ljava/lang/String;

    const-string/jumbo v4, "story_id=? AND data_type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    const/4 v6, 0x4

    .line 1327
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1328
    invoke-static/range {p5 .. p5}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v8, "story_order DESC, _id ASC"

    .line 1325
    :goto_7
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1330
    invoke-virtual {p0}, Lcom/twitter/library/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v10, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1334
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1335
    const-string/jumbo v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status_groups_g_status_id"

    .line 1336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " NOT IN ("

    .line 1337
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1339
    :goto_8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1340
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 1341
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_b
    move-object/from16 v8, p5

    .line 1328
    goto :goto_7

    .line 1343
    :cond_c
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1348
    :cond_d
    const-string/jumbo v2, "search_results_view"

    sget-object v3, Lcha;->a:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "search_id=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1350
    invoke-static/range {p5 .. p5}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v8, "type_id ASC, _id ASC"

    .line 1348
    :goto_9
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1351
    invoke-virtual {p0}, Lcom/twitter/library/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1354
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_4

    :cond_e
    move-object/from16 v8, p5

    .line 1350
    goto :goto_9

    .line 1357
    :sswitch_5d
    const-string/jumbo v2, "categories_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1358
    new-instance v9, Lcom/twitter/library/provider/a;

    const/4 v6, 0x0

    .line 1360
    invoke-static/range {p5 .. p5}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v7, "user_groups_view_user_groups_rank ASC "

    :goto_a
    const/4 v8, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1359
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/twitter/library/provider/a;-><init>(Landroid/database/Cursor;)V

    .line 1363
    invoke-virtual {v9}, Lcom/twitter/library/provider/a;->b()V

    .line 1364
    invoke-virtual {p0}, Lcom/twitter/library/provider/TwitterProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v9, v0, p1}, Lcom/twitter/library/provider/a;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v0, v9

    .line 1365
    goto/16 :goto_4

    :cond_f
    move-object/from16 v7, p5

    .line 1360
    goto :goto_a

    .line 1368
    :sswitch_5e
    const-string/jumbo v2, "notifications"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1369
    const-string/jumbo v2, "notif_id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1370
    goto/16 :goto_2

    .line 1373
    :sswitch_5f
    const-string/jumbo v2, "order_history"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1374
    const-string/jumbo v2, "ordered_at DESC"

    move-object v8, v7

    move-object v9, v5

    .line 1375
    goto/16 :goto_2

    .line 1378
    :sswitch_60
    const-string/jumbo v2, "news"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1379
    const-string/jumbo v2, "_id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1380
    goto/16 :goto_2

    .line 1383
    :sswitch_61
    const-string/jumbo v2, "news"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1384
    const-string/jumbo v2, "topic_id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1385
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1386
    const-string/jumbo v2, "_id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1387
    goto/16 :goto_2

    .line 1390
    :sswitch_62
    const-string/jumbo v2, "status_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_groups_tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1393
    const-string/jumbo v2, "_id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1394
    goto/16 :goto_2

    .line 1397
    :sswitch_63
    const-string/jumbo v2, "user_groups_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_groups_tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1399
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_groups_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1398
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1402
    const-string/jumbo v2, "_id ASC"

    .line 1404
    const-string/jumbo v7, "1"

    move-object v8, v7

    move-object v9, v5

    .line 1405
    goto/16 :goto_2

    .line 1408
    :sswitch_64
    const-string/jumbo v2, "moments_guide_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 1411
    if-eqz v3, :cond_10

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_10

    .line 1412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moments_sections_section_group_type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x1

    .line 1413
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "moments_sections_section_group_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x2

    .line 1414
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1412
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1415
    const-string/jumbo v2, "moments_guide_section_id ASC, _id"

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 1417
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Modern guide query without group type or group id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :sswitch_65
    const-string/jumbo v2, "moments_pages_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moments_pages_moment_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1424
    const-string/jumbo v2, "_id ASC"

    move-object v8, v7

    move-object v9, v5

    .line 1425
    goto/16 :goto_2

    .line 1428
    :sswitch_66
    const-string/jumbo v3, "moments"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, v7

    move-object v9, v5

    .line 1430
    goto/16 :goto_2

    .line 1433
    :sswitch_67
    const-string/jumbo v3, "moments_guide_view"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moments_sections_section_group_type=1 AND moments_sections_section_group_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1436
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1434
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, v7

    move-object v9, v5

    .line 1437
    goto/16 :goto_2

    .line 1440
    :sswitch_68
    const-string/jumbo v3, "moments_guide_categories"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v8, v7

    move-object v9, v5

    .line 1441
    goto/16 :goto_2

    .line 1444
    :sswitch_69
    const-string/jumbo v3, "ads_account_permissions"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v8, v7

    move-object v9, v5

    .line 1445
    goto/16 :goto_2

    .line 1448
    :sswitch_6a
    const-string/jumbo v3, "business_profiles"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v8, v7

    move-object v9, v5

    .line 1449
    goto/16 :goto_2

    .line 1452
    :sswitch_6b
    const-string/jumbo v3, "business_profiles"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, v7

    move-object v9, v5

    .line 1454
    goto/16 :goto_2

    .line 1457
    :sswitch_6c
    const-string/jumbo v3, "business_profiles"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, v7

    move-object v9, v5

    .line 1459
    goto/16 :goto_2

    .line 1462
    :sswitch_6d
    const-string/jumbo v3, "dm_card_state"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v8, v7

    move-object v9, v5

    .line 1463
    goto/16 :goto_2

    .line 1466
    :sswitch_6e
    const-string/jumbo v3, "ads_view"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v8, v7

    move-object v9, v5

    .line 1467
    goto/16 :goto_2

    :cond_11
    move-object v10, v2

    goto/16 :goto_3

    :cond_12
    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    :cond_13
    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_2

    .line 579
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x14 -> :sswitch_23
        0x15 -> :sswitch_23
        0x28 -> :sswitch_24
        0x29 -> :sswitch_24
        0x3c -> :sswitch_1
        0x46 -> :sswitch_2
        0x48 -> :sswitch_3
        0x49 -> :sswitch_4
        0x4a -> :sswitch_6
        0x4b -> :sswitch_7
        0x4c -> :sswitch_8
        0x4d -> :sswitch_a
        0x4e -> :sswitch_9
        0x4f -> :sswitch_b
        0x50 -> :sswitch_c
        0x51 -> :sswitch_e
        0x52 -> :sswitch_13
        0x53 -> :sswitch_14
        0x54 -> :sswitch_f
        0x55 -> :sswitch_10
        0x56 -> :sswitch_11
        0x57 -> :sswitch_12
        0x58 -> :sswitch_16
        0x59 -> :sswitch_17
        0x5a -> :sswitch_1a
        0x5b -> :sswitch_1b
        0x5c -> :sswitch_19
        0x5e -> :sswitch_1c
        0x60 -> :sswitch_15
        0x61 -> :sswitch_d
        0x62 -> :sswitch_18
        0x63 -> :sswitch_5
        0x65 -> :sswitch_1d
        0x66 -> :sswitch_1e
        0x67 -> :sswitch_1f
        0x68 -> :sswitch_20
        0x69 -> :sswitch_21
        0x6a -> :sswitch_22
        0x6e -> :sswitch_25
        0x6f -> :sswitch_25
        0x78 -> :sswitch_26
        0x79 -> :sswitch_27
        0x7a -> :sswitch_28
        0x7b -> :sswitch_2a
        0x7d -> :sswitch_2e
        0x80 -> :sswitch_2f
        0x81 -> :sswitch_30
        0x83 -> :sswitch_31
        0x84 -> :sswitch_32
        0x87 -> :sswitch_2b
        0x88 -> :sswitch_33
        0x89 -> :sswitch_36
        0x8a -> :sswitch_34
        0x8b -> :sswitch_35
        0x8c -> :sswitch_38
        0x8d -> :sswitch_39
        0x8e -> :sswitch_29
        0x8f -> :sswitch_37
        0x90 -> :sswitch_2c
        0x91 -> :sswitch_2d
        0x92 -> :sswitch_2b
        0x93 -> :sswitch_3a
        0xca -> :sswitch_50
        0xcb -> :sswitch_51
        0xcc -> :sswitch_52
        0xce -> :sswitch_53
        0xcf -> :sswitch_54
        0xd0 -> :sswitch_55
        0x12c -> :sswitch_4d
        0x12d -> :sswitch_4e
        0x12e -> :sswitch_4f
        0x190 -> :sswitch_3b
        0x191 -> :sswitch_3c
        0x192 -> :sswitch_3e
        0x193 -> :sswitch_43
        0x194 -> :sswitch_41
        0x195 -> :sswitch_40
        0x196 -> :sswitch_44
        0x198 -> :sswitch_48
        0x199 -> :sswitch_49
        0x19a -> :sswitch_4a
        0x19c -> :sswitch_4b
        0x19d -> :sswitch_45
        0x19e -> :sswitch_42
        0x19f -> :sswitch_46
        0x1a0 -> :sswitch_47
        0x1a1 -> :sswitch_3d
        0x1a2 -> :sswitch_3f
        0x1a4 -> :sswitch_4c
        0x208 -> :sswitch_56
        0x209 -> :sswitch_57
        0x20a -> :sswitch_58
        0x258 -> :sswitch_59
        0x2bc -> :sswitch_5a
        0x352 -> :sswitch_5b
        0x353 -> :sswitch_5c
        0x384 -> :sswitch_5d
        0x3e8 -> :sswitch_5e
        0x578 -> :sswitch_5f
        0x5dc -> :sswitch_60
        0x5dd -> :sswitch_61
        0x5de -> :sswitch_62
        0x5df -> :sswitch_63
        0x641 -> :sswitch_65
        0x642 -> :sswitch_66
        0x645 -> :sswitch_67
        0x647 -> :sswitch_68
        0x648 -> :sswitch_64
        0x6a4 -> :sswitch_69
        0x708 -> :sswitch_6a
        0x709 -> :sswitch_6b
        0x70a -> :sswitch_6c
        0x7d0 -> :sswitch_6d
        0x834 -> :sswitch_6e
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1543
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
