.class public Lcom/twitter/android/SearchResultsFragment;
.super Lcom/twitter/android/SearchFragment;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/twitter/android/tp;
.implements Lcom/twitter/android/xl;
.implements Lcom/twitter/app/common/base/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/SearchFragment",
        "<",
        "Lcom/twitter/android/pg;",
        "Lcom/twitter/android/ov;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/twitter/android/tp;",
        "Lcom/twitter/android/xl;",
        "Lcom/twitter/app/common/base/m;"
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ac:J

.field private ad:J

.field private ae:Z

.field private af:Z

.field private ag:Lcom/twitter/library/util/FriendshipCache;

.field private ah:Lcom/twitter/android/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Ljava/lang/String;

.field private aj:Z

.field private ak:Z

.field private al:Ljava/lang/String;

.field private am:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private an:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private ao:Lcom/twitter/android/vw;

.field private ap:Lcom/twitter/android/vw;

.field private aq:Lcom/twitter/android/vw;

.field private ar:Lcom/twitter/android/vw;

.field private as:Lcom/twitter/android/vw;

.field private at:Lcom/twitter/android/pf;

.field private final au:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private av:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private final aw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private ax:Lcom/twitter/android/ov;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/twitter/android/SearchResultsFragment;->a:Landroid/util/SparseArray;

    .line 108
    sget-object v0, Lcom/twitter/android/SearchResultsFragment;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string/jumbo v2, "universal_all"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/twitter/android/SearchResultsFragment;->a:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string/jumbo v2, "users"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/twitter/android/SearchResultsFragment;->a:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string/jumbo v2, "photo_tweets"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/twitter/android/SearchResultsFragment;->a:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string/jumbo v2, "videos_vines"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/twitter/android/SearchResultsFragment;->a:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string/jumbo v2, "videos_all"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/twitter/android/SearchResultsFragment;->a:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string/jumbo v2, "news"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/twitter/android/SearchResultsFragment;->a:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string/jumbo v2, "geo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/twitter/android/SearchResultsFragment;->a:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string/jumbo v2, "periscopes_recent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/twitter/android/SearchResultsFragment;->a:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string/jumbo v2, "periscopes_top"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/twitter/android/SearchFragment;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->ae:Z

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->af:Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->au:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->aw:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/SearchResultsFragment;)J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    return-wide v0
.end method

.method private a(Lcom/twitter/android/vw;Ljava/lang/String;ZLcom/twitter/library/scribe/ScribeLog$SearchDetails;)Lcom/twitter/android/vw;
    .locals 1

    .prologue
    .line 329
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/vw;->b()Z

    move-result v0

    if-eq v0, p3, :cond_1

    .line 330
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;ZLcom/twitter/library/scribe/ScribeLog$SearchDetails;)Lcom/twitter/android/vw;

    move-result-object p1

    .line 332
    :cond_1
    return-object p1
.end method

.method private a(Ljava/lang/String;ZLcom/twitter/library/scribe/ScribeLog$SearchDetails;)Lcom/twitter/android/vw;
    .locals 12

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v6

    .line 347
    const-string/jumbo v3, "avatar"

    const-string/jumbo v4, "profile_click"

    invoke-static {v6, p1, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v7, "link"

    aput-object v7, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v7, "open_link"

    aput-object v7, v4, v5

    invoke-static {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 351
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    const/4 v7, 0x1

    aput-object v2, v5, v7

    const/4 v7, 0x2

    aput-object p1, v5, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "platform_photo_card"

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "click"

    aput-object v8, v5, v7

    invoke-static {v0, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 353
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object p1, v7, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "platform_player_card"

    aput-object v2, v7, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "click"

    aput-object v2, v7, v1

    invoke-static {v0, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Lciy;

    invoke-direct {v1}, Lciy;-><init>()V

    .line 357
    invoke-virtual {v1, v3}, Lciy;->a(Ljava/lang/String;)Lciy;

    move-result-object v1

    .line 358
    invoke-virtual {v1, v4}, Lciy;->b(Ljava/lang/String;)Lciy;

    move-result-object v1

    .line 359
    invoke-virtual {v1, v5}, Lciy;->c(Ljava/lang/String;)Lciy;

    move-result-object v1

    .line 360
    invoke-virtual {v1, v0}, Lciy;->d(Ljava/lang/String;)Lciy;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lciy;->a()Lciw;

    move-result-object v8

    .line 363
    if-eqz p2, :cond_0

    .line 364
    new-instance v7, Lcom/twitter/android/vw;

    iget-object v9, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    new-instance v0, Lavh;

    sget-object v1, Lcom/twitter/library/provider/df;->a:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    .line 366
    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcha;->a:[Ljava/lang/String;

    const-string/jumbo v3, "statuses_flags&1537 !=0 AND search_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v10, p0, Lcom/twitter/android/SearchResultsFragment;->s:J

    .line 370
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const-string/jumbo v5, "type_id ASC, _id ASC"

    invoke-direct/range {v0 .. v5}, Lavh;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    move-object v2, p0

    move-object v3, v6

    move-object v4, v9

    move-object v5, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/vw;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lavh;)V

    move-object v0, v7

    .line 373
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/android/vw;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    new-instance v5, Lcom/twitter/android/pe;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->av:Ljava/util/List;

    invoke-direct {v5, p0, v6, p3, v1}, Lcom/twitter/android/pe;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/ScribeLog$SearchDetails;Ljava/util/List;)V

    move-object v1, p0

    move-object v2, v6

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/vw;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lcom/twitter/android/sn;)V

    goto :goto_0
.end method

.method private a(IJ)Z
    .locals 18

    .prologue
    .line 519
    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/SearchResultsFragment;->a_(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 520
    const/4 v2, 0x0

    .line 574
    :goto_0
    return v2

    .line 523
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/twitter/android/SearchResultsFragment;->l:I

    .line 528
    packed-switch p1, :pswitch_data_0

    .line 550
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid fetch type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 530
    :pswitch_0
    const/4 v12, 0x0

    .line 531
    const/4 v2, 0x1

    move/from16 v16, v2

    .line 554
    :goto_1
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p1

    invoke-static {v5, v6, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/android/SearchResultsFragment;->m:I

    .line 556
    invoke-static {v4}, Lcom/twitter/android/SearchResultsFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 559
    new-instance v3, Lcom/twitter/library/api/search/d;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchResultsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchResultsFragment;->Q()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/SearchResultsFragment;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/SearchResultsFragment;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/SearchResultsFragment;->A:Ljava/lang/String;

    const/4 v14, 0x0

    .line 561
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v15

    move-wide/from16 v6, p2

    invoke-direct/range {v3 .. v15}, Lcom/twitter/library/api/search/d;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/android/SearchResultsFragment;->m:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/twitter/android/SearchResultsFragment;->e:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/twitter/android/SearchResultsFragment;->f:Z

    .line 562
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/twitter/library/api/search/d;->a(IZZZ)Lcom/twitter/library/api/search/d;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/twitter/android/SearchResultsFragment;->ac:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/twitter/android/SearchResultsFragment;->ad:J

    .line 563
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/twitter/library/api/search/d;->a(JJ)Lcom/twitter/library/api/search/d;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    const/4 v5, 0x0

    .line 564
    invoke-virtual {v3, v4, v5}, Lcom/twitter/library/api/search/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/api/search/d;

    move-result-object v3

    .line 565
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/library/api/search/d;)V

    .line 566
    if-eqz v16, :cond_1

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/SearchResultsFragment;->an:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/twitter/library/api/search/d;->a(Ljava/util/List;)Lcom/twitter/library/api/search/d;

    .line 569
    :cond_1
    const-string/jumbo v4, "scribe_log"

    invoke-virtual {v3, v4, v2}, Lcom/twitter/library/api/search/d;->a(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/twitter/library/service/x;

    .line 570
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    if-eqz v2, :cond_2

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchResultsFragment;->G:Lccf;

    invoke-virtual {v2}, Lccf;->a()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twitter/library/api/search/d;->a(Landroid/location/Location;)Lcom/twitter/library/api/search/d;

    .line 573
    :cond_2
    const/4 v2, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v2, v1}, Lcom/twitter/android/SearchResultsFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 574
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 535
    :pswitch_1
    const/4 v12, 0x1

    .line 536
    const/4 v2, 0x0

    move/from16 v16, v2

    .line 537
    goto/16 :goto_1

    .line 540
    :pswitch_2
    const/4 v12, 0x1

    .line 541
    const/4 v2, 0x0

    move/from16 v16, v2

    .line 542
    goto/16 :goto_1

    .line 545
    :pswitch_3
    const/4 v12, 0x2

    .line 546
    const/4 v2, 0x0

    move/from16 v16, v2

    .line 547
    goto/16 :goto_1

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/twitter/android/SearchResultsFragment;Lcom/twitter/library/api/search/d;)Z
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/twitter/android/SearchResultsFragment;->b(Lcom/twitter/library/api/search/d;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/SearchResultsFragment;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/twitter/android/SearchResultsFragment;->ae:Z

    return p1
.end method

.method private ab()V
    .locals 4

    .prologue
    .line 448
    iget v0, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 449
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v1, 0x5

    .line 450
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-wide v2, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    .line 451
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    .line 452
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v1, "people"

    .line 453
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 449
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 460
    :goto_0
    return-void

    .line 455
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v1, 0x6

    .line 456
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    .line 457
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 458
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 455
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    goto :goto_0
.end method

.method private ac()Z
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Lcom/twitter/android/vw;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 298
    new-instance v0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    .line 299
    invoke-static {v2}, Lcom/twitter/android/SearchResultsFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v5, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 300
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    move-object v0, v8

    .line 322
    :goto_1
    return-object v0

    .line 300
    :sswitch_0
    const-string/jumbo v2, "tweet"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v7

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "news"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v6

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "highlight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "tweet_list_glance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v9

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "tweet_list_popular"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 302
    :pswitch_0
    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->ao:Lcom/twitter/android/vw;

    iget v0, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    if-ne v0, v9, :cond_1

    move v0, v6

    :goto_2
    invoke-direct {p0, v1, p1, v0, v8}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/android/vw;Ljava/lang/String;ZLcom/twitter/library/scribe/ScribeLog$SearchDetails;)Lcom/twitter/android/vw;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->ao:Lcom/twitter/android/vw;

    goto :goto_1

    :cond_1
    move v0, v7

    goto :goto_2

    .line 306
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->ap:Lcom/twitter/android/vw;

    invoke-direct {p0, v0, p1, v7, v8}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/android/vw;Ljava/lang/String;ZLcom/twitter/library/scribe/ScribeLog$SearchDetails;)Lcom/twitter/android/vw;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->ap:Lcom/twitter/android/vw;

    goto :goto_1

    .line 310
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->aq:Lcom/twitter/android/vw;

    invoke-direct {p0, v0, p1, v7, v8}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/android/vw;Ljava/lang/String;ZLcom/twitter/library/scribe/ScribeLog$SearchDetails;)Lcom/twitter/android/vw;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->aq:Lcom/twitter/android/vw;

    goto :goto_1

    .line 314
    :pswitch_3
    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->ar:Lcom/twitter/android/vw;

    invoke-direct {p0, v1, p1, v7, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/android/vw;Ljava/lang/String;ZLcom/twitter/library/scribe/ScribeLog$SearchDetails;)Lcom/twitter/android/vw;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->ar:Lcom/twitter/android/vw;

    goto :goto_1

    .line 318
    :pswitch_4
    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->as:Lcom/twitter/android/vw;

    invoke-direct {p0, v1, p1, v7, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/android/vw;Ljava/lang/String;ZLcom/twitter/library/scribe/ScribeLog$SearchDetails;)Lcom/twitter/android/vw;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->as:Lcom/twitter/android/vw;

    goto :goto_1

    .line 300
    :sswitch_data_0
    .sparse-switch
        -0x6fdf50ba -> :sswitch_4
        -0x289a734c -> :sswitch_2
        -0x1328aa59 -> :sswitch_3
        0x338ad3 -> :sswitch_1
        0x69a4671 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lcom/twitter/android/SearchResultsFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->aw:Ljava/util/Set;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->ak:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/android/ph;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ph;

    .line 385
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-interface {v0, p1, v1, p0}, Lcom/twitter/android/ph;->a(ZLandroid/widget/ListView;Lcom/twitter/android/SearchFragment;)V

    goto :goto_0
.end method

.method private b(Lcom/twitter/library/api/search/d;)Z
    .locals 24

    .prologue
    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/twitter/android/ph;

    if-nez v2, :cond_0

    .line 655
    const/4 v2, 0x0

    .line 684
    :goto_0
    return v2

    .line 658
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/twitter/android/SearchResultsFragment;->ae:Z

    .line 659
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/library/api/search/d;->y()Ljava/lang/String;

    move-result-object v4

    .line 660
    if-eqz v4, :cond_2

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 662
    if-eqz v2, :cond_2

    .line 663
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/library/api/search/d;->C()Lcom/twitter/model/topic/TwitterTopic;

    move-result-object v6

    .line 664
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/library/api/search/d;->z()Ljava/lang/String;

    move-result-object v23

    .line 665
    invoke-static {v4}, Lcom/twitter/android/events/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 666
    if-nez v6, :cond_1

    .line 667
    new-instance v3, Lcom/twitter/model/topic/TwitterTopic;

    new-instance v4, Lcom/twitter/model/topic/l;

    const/4 v5, 0x2

    .line 670
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/library/api/search/d;->x()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/twitter/model/topic/l;-><init>(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/SearchResultsFragment;->t:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v3 .. v22}, Lcom/twitter/model/topic/TwitterTopic;-><init>(Lcom/twitter/model/topic/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLcss;Ljava/util/List;Lcom/twitter/model/topic/d;Lcom/twitter/model/core/TwitterUser;Ljava/lang/String;)V

    move-object v6, v3

    .line 680
    :cond_1
    check-cast v2, Lcom/twitter/android/ph;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/twitter/android/SearchResultsFragment;->s:J

    move-object/from16 v7, v23

    invoke-interface/range {v2 .. v7}, Lcom/twitter/android/ph;->a(Ljava/lang/String;JLcom/twitter/model/topic/TwitterTopic;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/SearchResultsFragment;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/SearchResultsFragment;)Lcom/twitter/android/client/c;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/SearchResultsFragment;)J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    return-wide v0
.end method

.method static synthetic f(Lcom/twitter/android/SearchResultsFragment;)Lcom/twitter/android/client/c;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/android/SearchResultsFragment;)J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    return-wide v0
.end method

.method static synthetic h(Lcom/twitter/android/SearchResultsFragment;)J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    return-wide v0
.end method

.method static synthetic i(Lcom/twitter/android/SearchResultsFragment;)Z
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;->ac()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/twitter/android/SearchResultsFragment;)J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    return-wide v0
.end method

.method static synthetic k(Lcom/twitter/android/SearchResultsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->au:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/twitter/android/SearchResultsFragment;)Lcom/twitter/android/client/c;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected E()Z
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Lcom/twitter/android/revenue/z;->a()Z

    move-result v0

    return v0
.end method

.method protected U()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1255
    sget-object v0, Lcom/twitter/android/SearchResultsFragment;->a:Landroid/util/SparseArray;

    iget v1, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1256
    if-eqz v0, :cond_0

    .line 1259
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "universal_top"

    goto :goto_0
.end method

.method protected U_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1264
    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    .line 1267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method protected V_()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 1293
    iget v0, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    if-ne v0, v3, :cond_0

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":people:users::impression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;)V

    .line 1299
    :goto_0
    return-void

    .line 1296
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object v4, v0, v3

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "impression"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected W()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1304
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->au:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1306
    iget v0, p0, Lcom/twitter/android/SearchResultsFragment;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;->ac()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1307
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "stream"

    aput-object v1, v0, v2

    const/4 v1, 0x0

    aput-object v1, v0, v3

    const-string/jumbo v1, "results"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1314
    :goto_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v4

    .line 1315
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1316
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U_()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    invoke-static {v2}, Lcom/twitter/android/SearchResultsFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v4, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->au:Ljava/util/List;

    .line 1317
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1314
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1318
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->au:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1320
    :cond_1
    return-void

    .line 1310
    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "universal_top"

    aput-object v1, v0, v5

    iget v1, p0, Lcom/twitter/android/SearchResultsFragment;->q:I

    .line 1311
    invoke-static {v1}, Lcom/twitter/model/topic/TwitterTopic;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, "event"

    aput-object v1, v0, v3

    const-string/jumbo v1, "results"

    aput-object v1, v0, v6

    .line 1310
    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected X()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->C:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/android/SearchResultsFragment;->q:I

    invoke-static {v0, v1, v2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public Y()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1043
    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v1

    .line 1045
    const-string/jumbo v0, "user_rail"

    .line 1050
    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v1, v2, v5

    aput-object v0, v2, v6

    const/4 v0, 0x3

    const-string/jumbo v1, "more"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "search"

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;)V

    .line 1051
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/SearchTerminalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "query"

    iget-object v2, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    .line 1052
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "query_name"

    iget-object v2, p0, Lcom/twitter/android/SearchResultsFragment;->t:Ljava/lang/String;

    .line 1053
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "search_type"

    .line 1054
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "terminal"

    .line 1055
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1051
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    .line 1056
    return-void

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v1

    .line 1048
    const-string/jumbo v0, "user_gallery"

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/twitter/android/SearchFragment;->a()V

    .line 189
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "summary_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/PromptDialogFragment;

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    .line 193
    :cond_0
    return-void
.end method

.method public a(JLcss;ILcom/twitter/android/xn;)V
    .locals 13

    .prologue
    .line 946
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "user_id"

    .line 947
    invoke-virtual {v2, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "screen_name"

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/twitter/android/xn;->a:Ljava/lang/String;

    .line 948
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 949
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v11

    .line 950
    if-eqz v11, :cond_0

    .line 951
    const-string/jumbo v4, "association"

    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v2, v11}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    const/4 v5, 0x5

    .line 953
    invoke-virtual {v2, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-wide v6, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    .line 954
    invoke-virtual {v2, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v2

    .line 951
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 957
    :cond_0
    if-eqz p3, :cond_1

    .line 958
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v2

    sget-object v4, Lcom/twitter/library/api/PromotedEvent;->d:Lcom/twitter/library/api/PromotedEvent;

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 959
    const-string/jumbo v2, "pc"

    invoke-static/range {p3 .. p3}, Lcss;->a(Lcss;)[B

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 961
    :cond_1
    invoke-virtual {p0, v3}, Lcom/twitter/android/SearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    .line 965
    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;->ac()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 966
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v4

    .line 967
    const-string/jumbo v3, "user_rail"

    .line 968
    const-string/jumbo v2, "avatar"

    move-object v9, v3

    move-object v10, v4

    .line 974
    :goto_0
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v3, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v7, 0x0

    move-wide v4, p1

    move-object/from16 v6, p3

    move/from16 v8, p4

    .line 975
    invoke-virtual/range {v3 .. v8}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(JLcss;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v10, v6, v7

    const/4 v7, 0x2

    aput-object v9, v6, v7

    const/4 v7, 0x3

    aput-object v2, v6, v7

    const/4 v2, 0x4

    const-string/jumbo v7, "profile_click"

    aput-object v7, v6, v2

    .line 976
    invoke-static {v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 977
    invoke-virtual {v2, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    iget v4, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    .line 978
    invoke-static {v4}, Lcom/twitter/android/SearchResultsFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v6, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 974
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 979
    return-void

    .line 970
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v4

    .line 971
    const-string/jumbo v3, "user_gallery"

    .line 972
    const-string/jumbo v2, "user"

    move-object v9, v3

    move-object v10, v4

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 14

    .prologue
    const/4 v10, 0x1

    .line 433
    new-instance v1, Lcom/twitter/library/api/search/d;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/android/SearchResultsFragment;->s:J

    iget-object v6, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    .line 434
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->Q()I

    move-result v7

    iget-object v8, p0, Lcom/twitter/android/SearchResultsFragment;->v:Ljava/lang/String;

    iget-object v9, p0, Lcom/twitter/android/SearchResultsFragment;->t:Ljava/lang/String;

    iget-object v11, p0, Lcom/twitter/android/SearchResultsFragment;->A:Ljava/lang/String;

    const/4 v12, 0x0

    .line 435
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v13

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/twitter/library/api/search/d;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V

    iget v0, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    iget-boolean v2, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v3, p0, Lcom/twitter/android/SearchResultsFragment;->e:Z

    iget-boolean v4, p0, Lcom/twitter/android/SearchResultsFragment;->f:Z

    .line 436
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/twitter/library/api/search/d;->a(IZZZ)Lcom/twitter/library/api/search/d;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/SearchResultsFragment;->ac:J

    iget-wide v4, p0, Lcom/twitter/android/SearchResultsFragment;->ad:J

    .line 437
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/twitter/library/api/search/d;->a(JJ)Lcom/twitter/library/api/search/d;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    const/4 v2, 0x0

    .line 438
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/api/search/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/api/search/d;

    move-result-object v0

    .line 439
    const-string/jumbo v1, "Not triggered by a user action."

    invoke-virtual {v0, v1}, Lcom/twitter/library/api/search/d;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    .line 440
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/library/api/search/d;)V

    .line 441
    iget-boolean v1, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->G:Lccf;

    invoke-virtual {v1}, Lccf;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/api/search/d;->a(Landroid/location/Location;)Lcom/twitter/library/api/search/d;

    .line 444
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v10, v1}, Lcom/twitter/android/SearchResultsFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 445
    return-void
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1083
    if-ne p2, v5, :cond_1

    .line 1084
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v0

    .line 1085
    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    .line 1086
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->al:Ljava/lang/String;

    aput-object v0, v2, v6

    const-string/jumbo v0, "feedback"

    aput-object v0, v2, v7

    const-string/jumbo v0, "accept"

    aput-object v0, v2, v8

    .line 1087
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1086
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1092
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0754

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1093
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1095
    :cond_1
    return-void

    .line 1088
    :cond_2
    const/4 v1, -0x2

    if-ne p3, v1, :cond_0

    .line 1089
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->al:Ljava/lang/String;

    aput-object v0, v2, v6

    const-string/jumbo v0, "feedback"

    aput-object v0, v2, v7

    const-string/jumbo v0, "deny"

    aput-object v0, v2, v8

    .line 1090
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1089
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x7f0a0750

    const/4 v2, 0x0

    .line 638
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->a_:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 640
    invoke-direct {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->b(Z)V

    .line 641
    if-eqz p1, :cond_0

    .line 642
    const v0, 0x7f13002a

    .line 643
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 644
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 645
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 647
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 15

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    move/from16 v0, p3

    if-ge v0, v2, :cond_1

    .line 919
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 713
    :cond_1
    iget v2, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    invoke-static {v2}, Lcom/twitter/android/SearchResultsFragment;->c(I)Ljava/lang/String;

    move-result-object v10

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/ox;

    .line 716
    if-nez v2, :cond_2

    .line 720
    new-instance v3, Lbiv;

    invoke-direct {v3}, Lbiv;-><init>()V

    const-string/jumbo v4, "view"

    .line 721
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v3

    const-string/jumbo v4, "position"

    .line 722
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v4

    const-string/jumbo v5, "view type"

    .line 723
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aP()Lcvt;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/ov;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/twitter/android/ov;->getItemViewType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v3

    .line 720
    invoke-static {v3}, Lbix;->a(Lbiv;)V

    .line 725
    :cond_2
    iget-object v3, v2, Lcom/twitter/android/ox;->m:Lcom/twitter/android/pg;

    .line 726
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v11

    .line 728
    iget v4, v3, Lcom/twitter/android/pg;->b:I

    packed-switch v4, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 734
    :pswitch_2
    iget-object v4, v2, Lcom/twitter/android/ox;->a:Lcom/twitter/android/vy;

    iget-object v4, v4, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v4}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v4

    .line 735
    iget-object v5, v2, Lcom/twitter/android/ox;->a:Lcom/twitter/android/vy;

    iget-object v5, v5, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v5}, Lcom/twitter/library/widget/TweetView;->getReasonIconResId()I

    move-result v5

    .line 736
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 737
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-class v12, Lcom/twitter/android/TweetActivity;

    invoke-direct {v8, v9, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v9, "tw"

    .line 738
    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "reason"

    iget-object v2, v2, Lcom/twitter/android/ox;->a:Lcom/twitter/android/vy;

    iget-object v2, v2, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    .line 740
    invoke-virtual {v2}, Lcom/twitter/library/widget/TweetView;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 739
    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v8, "reason_icon_id"

    .line 741
    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "association"

    .line 742
    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 737
    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    .line 743
    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;->ac()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 744
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v8, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v2, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x0

    .line 745
    invoke-virtual {v2, v7, v4, v11, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    .line 747
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "tweet"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "tweet"

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "click"

    aput-object v8, v5, v7

    .line 746
    invoke-static {v6, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 748
    invoke-virtual {v2, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->av:Ljava/util/List;

    .line 749
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/Collection;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v5, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    .line 750
    invoke-virtual {v2, v3, v10, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 744
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 751
    :cond_3
    iget v2, v3, Lcom/twitter/android/pg;->b:I

    if-eqz v2, :cond_4

    iget v2, v3, Lcom/twitter/android/pg;->b:I

    const/16 v5, 0x15

    if-ne v2, v5, :cond_5

    .line 753
    :cond_4
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v8, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v2, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x0

    .line 754
    invoke-virtual {v2, v7, v4, v11, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "tweet"

    const-string/jumbo v6, "tweet"

    const-string/jumbo v7, "click"

    .line 755
    invoke-static {v11, v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 757
    invoke-virtual {v2, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->av:Ljava/util/List;

    .line 758
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/Collection;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v5, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    .line 759
    invoke-virtual {v2, v3, v10, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 753
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 760
    :cond_5
    iget v2, v3, Lcom/twitter/android/pg;->b:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_6

    .line 761
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v8, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v2, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x0

    .line 762
    invoke-virtual {v2, v7, v4, v11, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":cluster:tweet::click"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 763
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 764
    invoke-virtual {v2, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->av:Ljava/util/List;

    .line 765
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/Collection;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v5, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    .line 766
    invoke-virtual {v2, v3, v10, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 761
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 768
    :cond_6
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v8, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v2, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x0

    .line 769
    invoke-virtual {v2, v7, v4, v11, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    .line 771
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "news"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "tweet"

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "click"

    aput-object v8, v5, v7

    .line 770
    invoke-static {v6, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 772
    invoke-virtual {v2, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->av:Ljava/util/List;

    .line 773
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/Collection;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v5, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    .line 774
    invoke-virtual {v2, v3, v10, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 768
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 779
    :pswitch_3
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "highlight"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "more"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "search"

    aput-object v5, v2, v4

    invoke-static {v6, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;)V

    .line 781
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/twitter/android/SearchTerminalActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "query"

    iget-object v5, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    .line 782
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "query_name"

    iget-object v5, p0, Lcom/twitter/android/SearchResultsFragment;->t:Ljava/lang/String;

    .line 783
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "q_source"

    const-string/jumbo v5, "highlight_tweet_drill_down_click"

    .line 784
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "since"

    iget-object v5, v3, Lcom/twitter/android/pg;->i:Lcom/twitter/model/search/d;

    iget-wide v6, v5, Lcom/twitter/model/search/d;->c:J

    .line 786
    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "until"

    iget-object v3, v3, Lcom/twitter/android/pg;->i:Lcom/twitter/model/search/d;

    iget-wide v6, v3, Lcom/twitter/model/search/d;->d:J

    .line 787
    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "terminal"

    const/4 v4, 0x1

    .line 788
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 781
    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 792
    :pswitch_4
    check-cast p2, Lcom/twitter/internal/android/widget/GroupedRowView;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/GroupedRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/widget/UserView;

    .line 793
    invoke-virtual {v2}, Lcom/twitter/library/widget/UserView;->getUserId()J

    move-result-wide v4

    .line 794
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v7, "user_id"

    .line 795
    invoke-virtual {v3, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v7, "screen_name"

    .line 796
    invoke-virtual {v2}, Lcom/twitter/library/widget/UserView;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 797
    if-eqz v11, :cond_7

    .line 798
    const-string/jumbo v8, "association"

    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v3, v11}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    const/4 v9, 0x5

    .line 800
    invoke-virtual {v3, v9}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v3

    check-cast v3, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-wide v12, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    .line 801
    invoke-virtual {v3, v12, v13}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v3

    .line 798
    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 804
    :cond_7
    invoke-virtual {v2}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v3

    .line 805
    if-eqz v3, :cond_8

    .line 806
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v8

    sget-object v9, Lcom/twitter/library/api/PromotedEvent;->d:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {v8, v9, v3}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 807
    const-string/jumbo v8, "pc"

    invoke-static {v3}, Lcss;->a(Lcss;)[B

    move-result-object v3

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 809
    :cond_8
    invoke-virtual {p0, v7}, Lcom/twitter/android/SearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    .line 811
    iget v3, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_9

    .line 812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ":people:users:user:profile_click"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 817
    :goto_1
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v6, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v3, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 818
    invoke-virtual {v2}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(JLcss;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    .line 819
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->av:Ljava/util/List;

    .line 820
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/Collection;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 821
    invoke-virtual {v2, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v5, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    .line 822
    invoke-virtual {v2, v3, v10, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 817
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 814
    :cond_9
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v8, v3, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "user"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "profile_click"

    aput-object v8, v3, v7

    invoke-static {v6, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    .line 827
    :pswitch_5
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "user"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "more"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "search"

    aput-object v4, v2, v3

    invoke-static {v6, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;)V

    .line 829
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/twitter/android/SearchTerminalActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "query"

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    .line 830
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "query_name"

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->t:Ljava/lang/String;

    .line 831
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "search_type"

    const/4 v4, 0x2

    .line 832
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "terminal"

    const/4 v4, 0x1

    .line 833
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 829
    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 841
    :pswitch_6
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "media_gallery"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "more"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "search"

    aput-object v4, v2, v3

    invoke-static {v6, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;)V

    .line 843
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/twitter/android/SearchTerminalActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "query"

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    .line 844
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "query_name"

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->t:Ljava/lang/String;

    .line 845
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "search_type"

    const/4 v4, 0x3

    .line 846
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "terminal"

    const/4 v4, 0x1

    .line 847
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 843
    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 851
    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/twitter/android/SearchActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "query"

    iget-object v5, v3, Lcom/twitter/android/pg;->h:Ljava/lang/String;

    .line 852
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "query_name"

    iget-object v3, v3, Lcom/twitter/android/pg;->h:Ljava/lang/String;

    .line 853
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "q_source"

    const-string/jumbo v4, "related_query_click"

    .line 854
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 851
    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    .line 856
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "related_queries"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "search"

    aput-object v4, v2, v3

    invoke-static {v6, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 861
    :pswitch_8
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/twitter/android/SearchActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "query"

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    .line 862
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "query_name"

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->t:Ljava/lang/String;

    .line 863
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "q_source"

    const-string/jumbo v4, "auto_spell_correct_revert_click"

    .line 864
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 861
    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    .line 866
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "spelling_corrections"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "revert_click"

    aput-object v4, v2, v3

    invoke-static {v6, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 871
    :pswitch_9
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/twitter/android/SearchTerminalActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "query"

    iget-object v5, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    .line 872
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "terminal"

    const/4 v5, 0x1

    .line 873
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "q_type"

    const/4 v5, 0x1

    .line 874
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 875
    iget-object v4, v3, Lcom/twitter/android/pg;->j:Lcom/twitter/model/search/a;

    if-eqz v4, :cond_a

    .line 876
    const-string/jumbo v4, "query_name"

    iget-object v5, p0, Lcom/twitter/android/SearchResultsFragment;->t:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "follows"

    iget-object v7, v3, Lcom/twitter/android/pg;->j:Lcom/twitter/model/search/a;

    iget-boolean v7, v7, Lcom/twitter/model/search/a;->b:Z

    .line 877
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "near"

    iget-object v7, v3, Lcom/twitter/android/pg;->j:Lcom/twitter/model/search/a;

    iget-boolean v7, v7, Lcom/twitter/model/search/a;->c:Z

    .line 878
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 879
    iget-object v4, v3, Lcom/twitter/android/pg;->j:Lcom/twitter/model/search/a;

    iget-boolean v4, v4, Lcom/twitter/model/search/a;->b:Z

    if-eqz v4, :cond_b

    .line 880
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "follows_pivot"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "more"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "search"

    aput-object v5, v3, v4

    invoke-static {v6, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;)V

    .line 887
    :cond_a
    :goto_2
    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 882
    :cond_b
    iget-object v3, v3, Lcom/twitter/android/pg;->j:Lcom/twitter/model/search/a;

    iget-boolean v3, v3, Lcom/twitter/model/search/a;->c:Z

    if-eqz v3, :cond_a

    .line 883
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "nearby_pivot"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "more"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "search"

    aput-object v5, v3, v4

    invoke-static {v6, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 892
    :pswitch_a
    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    .line 893
    iget-object v8, v2, Lcom/twitter/android/ox;->j:Lcom/twitter/android/widget/TopicView;

    .line 894
    invoke-virtual {v8}, Lcom/twitter/android/widget/TopicView;->getTopicType()I

    move-result v4

    .line 895
    invoke-virtual {v8}, Lcom/twitter/android/widget/TopicView;->getTopicId()Ljava/lang/String;

    move-result-object v3

    .line 896
    invoke-virtual {v8}, Lcom/twitter/android/widget/TopicView;->getSeedHashtag()Ljava/lang/String;

    move-result-object v7

    .line 898
    invoke-static {v4}, Lcom/twitter/model/topic/TwitterTopic;->c(I)Ljava/lang/String;

    move-result-object v2

    .line 899
    new-instance v5, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v5}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 900
    iput-object v3, v5, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 901
    const/16 v6, 0x10

    iput v6, v5, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 902
    iput-object v2, v5, Lcom/twitter/library/scribe/TwitterScribeItem;->x:Ljava/lang/String;

    .line 903
    new-instance v6, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v12, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v6, v12, v13}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 904
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "universal_top"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v2, v12, v13

    const/4 v2, 0x3

    const-string/jumbo v13, "event"

    aput-object v13, v12, v2

    const/4 v2, 0x4

    const-string/jumbo v13, "click"

    aput-object v13, v12, v2

    invoke-static {v12}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v11

    invoke-virtual {v6, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 906
    iget-object v2, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v11, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    .line 907
    invoke-virtual {v6, v2, v10, v9, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 908
    invoke-virtual {v2, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 906
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 909
    new-instance v2, Lcom/twitter/android/sl;

    invoke-direct {v2, p0}, Lcom/twitter/android/sl;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 910
    iget-object v5, p0, Lcom/twitter/android/SearchResultsFragment;->t:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    .line 911
    invoke-virtual {v8}, Lcom/twitter/android/widget/TopicView;->getTopicData()Lcom/twitter/android/widget/TopicView$TopicData;

    move-result-object v8

    .line 910
    invoke-virtual/range {v2 .. v8}, Lcom/twitter/android/sl;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/android/widget/TopicView$TopicData;)V

    goto/16 :goto_0

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lcmf;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/pg;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 465
    iget v6, p0, Lcom/twitter/android/SearchResultsFragment;->l:I

    .line 466
    iget-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->aj:Z

    if-eqz v0, :cond_1

    .line 467
    if-ne v6, v7, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;->ab()V

    .line 469
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ov;

    const-string/jumbo v1, "tweet"

    .line 470
    invoke-direct {p0, v1}, Lcom/twitter/android/SearchResultsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/vw;

    move-result-object v1

    const-string/jumbo v2, "news"

    .line 471
    invoke-direct {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/vw;

    move-result-object v2

    const-string/jumbo v3, "highlight"

    .line 472
    invoke-direct {p0, v3}, Lcom/twitter/android/SearchResultsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/vw;

    move-result-object v3

    const-string/jumbo v4, "tweet_list_glance"

    .line 473
    invoke-direct {p0, v4}, Lcom/twitter/android/SearchResultsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/vw;

    move-result-object v4

    const-string/jumbo v5, "tweet_list_popular"

    .line 474
    invoke-direct {p0, v5}, Lcom/twitter/android/SearchResultsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/vw;

    move-result-object v5

    .line 469
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/ov;->a(Lcom/twitter/library/view/aa;Lcom/twitter/library/view/aa;Lcom/twitter/library/view/aa;Lcom/twitter/library/view/aa;Lcom/twitter/library/view/aa;)V

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->u()V

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->ax:Lcom/twitter/android/ov;

    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmc;

    invoke-virtual {v0}, Lcmc;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/ov;->a(Landroid/database/Cursor;)V

    .line 481
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->w()Lcom/twitter/refresh/widget/a;

    move-result-object v0

    .line 482
    invoke-virtual {p0, p1}, Lcom/twitter/android/SearchResultsFragment;->b(Lcmf;)V

    .line 483
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/refresh/widget/a;)V

    .line 485
    iget-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->aj:Z

    if-eqz v0, :cond_4

    .line 486
    const/4 v0, 0x2

    if-ne v6, v0, :cond_2

    .line 487
    iput v7, p0, Lcom/twitter/android/SearchResultsFragment;->l:I

    .line 493
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->ae:Z

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->b(Z)V

    .line 495
    iget-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->V:Z

    if-eqz v0, :cond_3

    .line 496
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aN()V

    .line 498
    :cond_3
    return-void

    .line 489
    :cond_4
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ov;

    invoke-virtual {v0}, Lcom/twitter/android/ov;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    invoke-virtual {p0, v7}, Lcom/twitter/android/SearchResultsFragment;->a(I)Z

    goto :goto_0
.end method

.method a(Lcom/twitter/library/api/search/d;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 620
    invoke-virtual {p1}, Lcom/twitter/library/api/search/d;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    .line 621
    invoke-virtual {p1}, Lcom/twitter/library/api/search/d;->B()Lcom/twitter/model/topic/TwitterTopic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/model/topic/TwitterTopic;)V

    .line 622
    invoke-virtual {p1}, Lcom/twitter/library/api/search/d;->h()I

    move-result v0

    if-nez v0, :cond_1

    .line 623
    if-eqz p2, :cond_0

    .line 624
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 626
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 627
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string/jumbo v2, "stream"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "no_results"

    aput-object v2, v0, v1

    .line 626
    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v4

    .line 629
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    .line 630
    invoke-static {v2}, Lcom/twitter/android/SearchResultsFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v4, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 628
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 632
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->j:Z

    if-eqz v0, :cond_2

    .line 633
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->v()V

    .line 635
    :cond_2
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 585
    iput-boolean v2, p0, Lcom/twitter/android/SearchResultsFragment;->aj:Z

    .line 586
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 587
    :goto_0
    if-eqz v1, :cond_0

    .line 588
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 591
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/SearchFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 593
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 594
    check-cast p1, Lcom/twitter/library/api/search/d;

    .line 595
    invoke-virtual {p1}, Lcom/twitter/library/api/search/d;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 596
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 597
    :cond_1
    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchResultsFragment;->a(Landroid/view/View;)V

    .line 614
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/twitter/library/api/search/d;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->k:Z

    .line 616
    :cond_3
    return-void

    .line 586
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 598
    :cond_5
    const/4 v0, 0x3

    if-ne p3, v0, :cond_6

    .line 599
    invoke-virtual {p0, p1, v1}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/library/api/search/d;Landroid/view/View;)V

    .line 601
    invoke-direct {p0, p1}, Lcom/twitter/android/SearchResultsFragment;->b(Lcom/twitter/library/api/search/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->ae:Z

    .line 602
    iget-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->ae:Z

    if-nez v0, :cond_3

    .line 607
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->b(Z)V

    goto :goto_1

    .line 608
    :cond_6
    invoke-virtual {p1}, Lcom/twitter/library/api/search/d;->h()I

    move-result v0

    if-nez v0, :cond_2

    .line 609
    if-ne p3, v2, :cond_2

    .line 610
    iput-boolean v2, p0, Lcom/twitter/android/SearchResultsFragment;->h:Z

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1282
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->ai:Ljava/lang/String;

    .line 1283
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->i(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1284
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->av:Ljava/util/List;

    .line 1285
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/Collection;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1286
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U_()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    invoke-static {v2}, Lcom/twitter/android/SearchResultsFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v4, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1287
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1282
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1288
    return-void
.end method

.method protected a(I)Z
    .locals 2

    .prologue
    .line 513
    iget-wide v0, p0, Lcom/twitter/android/SearchResultsFragment;->s:J

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/SearchResultsFragment;->a(IJ)Z

    move-result v0

    return v0
.end method

.method protected ag_()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lcom/twitter/android/SearchFragment;->ag_()V

    .line 239
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aD()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ov;

    invoke-virtual {v0}, Lcom/twitter/android/ov;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->a(I)Z

    .line 242
    :cond_1
    return-void
.end method

.method protected b(J)I
    .locals 1

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ov;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/ov;->a(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(JLcss;ILcom/twitter/android/xn;)I
    .locals 13

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 989
    iget-object v12, p0, Lcom/twitter/android/SearchResultsFragment;->ag:Lcom/twitter/library/util/FriendshipCache;

    .line 991
    move-object/from16 v0, p5

    iget v9, v0, Lcom/twitter/android/xn;->b:I

    .line 993
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 994
    invoke-virtual {v12, p1, p2}, Lcom/twitter/library/util/FriendshipCache;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 995
    invoke-virtual {v12, p1, p2}, Lcom/twitter/library/util/FriendshipCache;->k(J)Z

    move-result v2

    .line 1002
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;->ac()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1003
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v5

    .line 1004
    const-string/jumbo v3, "user_rail"

    move-object v10, v3

    move-object v11, v5

    .line 1010
    :goto_1
    if-eqz v2, :cond_2

    .line 1011
    const/4 v2, 0x1

    invoke-static {v9, v2}, Lcom/twitter/model/core/p;->b(II)I

    move-result v9

    .line 1012
    iget-object v2, p0, Lcom/twitter/android/SearchResultsFragment;->ab:Lcom/twitter/library/client/bd;

    new-instance v3, Lbuc;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v5

    move-wide v6, p1

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    invoke-virtual {v2, v3}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 1014
    invoke-virtual {v12, p1, p2}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 1015
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v10, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "user"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "unfollow"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    :goto_2
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v3, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v7, 0x0

    move-wide v4, p1

    move-object/from16 v6, p3

    move/from16 v8, p4

    .line 1026
    invoke-virtual/range {v3 .. v8}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(JLcss;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 1027
    invoke-virtual {v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1028
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    iget v4, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    .line 1029
    invoke-static {v4}, Lcom/twitter/android/SearchResultsFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/twitter/android/SearchResultsFragment;->d:Z

    iget-boolean v6, p0, Lcom/twitter/android/SearchResultsFragment;->c:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 1025
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 1034
    :goto_3
    return v9

    .line 997
    :cond_0
    invoke-static {v9}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v2

    goto/16 :goto_0

    .line 1006
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v5

    .line 1007
    const-string/jumbo v3, "user_gallery"

    move-object v10, v3

    move-object v11, v5

    goto/16 :goto_1

    .line 1018
    :cond_2
    const/4 v2, 0x1

    invoke-static {v9, v2}, Lcom/twitter/model/core/p;->a(II)I

    move-result v9

    .line 1019
    iget-object v2, p0, Lcom/twitter/android/SearchResultsFragment;->ab:Lcom/twitter/library/client/bd;

    new-instance v3, Lbtz;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v5

    move-wide v6, p1

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    invoke-virtual {v2, v3}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 1021
    invoke-virtual {v12, p1, p2}, Lcom/twitter/library/util/FriendshipCache;->b(J)V

    .line 1022
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v10, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "user"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "follow"

    aput-object v4, v2, v3

    .line 1023
    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 1031
    :cond_3
    const/4 v2, 0x4

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/twitter/android/xn;->a:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_3
.end method

.method public b(Landroid/view/View;)Lcom/twitter/android/vy;
    .locals 1

    .prologue
    .line 694
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/android/ox;

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ox;

    iget-object v0, v0, Lcom/twitter/android/ox;->a:Lcom/twitter/android/vy;

    .line 697
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/twitter/library/service/x;II)V
    .locals 1

    .prologue
    .line 579
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/SearchFragment;->b(Lcom/twitter/library/service/x;II)V

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->aj:Z

    .line 581
    return-void
.end method

.method protected f()Lavm;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lavm",
            "<",
            "Lcmf",
            "<",
            "Lcom/twitter/android/pg;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, v9}, Lcom/twitter/android/SearchResultsFragment;->b(Z)V

    .line 393
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v2

    .line 394
    iget-boolean v1, p0, Lcom/twitter/android/SearchResultsFragment;->ae:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    if-eqz v1, :cond_1

    instance-of v1, v2, Lcom/twitter/android/fj;

    if-eqz v1, :cond_1

    .line 396
    :cond_0
    :goto_0
    new-instance v1, Laqx;

    iget-object v3, p0, Lcom/twitter/android/SearchResultsFragment;->C:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    iget v5, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    const-wide/16 v6, -0x1

    iget-boolean v8, p0, Lcom/twitter/android/SearchResultsFragment;->ae:Z

    iget-boolean v10, p0, Lcom/twitter/android/SearchResultsFragment;->af:Z

    invoke-direct/range {v1 .. v10}, Laqx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZZZ)V

    .line 399
    new-instance v2, Lcom/twitter/android/pb;

    invoke-direct {v2, p0}, Lcom/twitter/android/pb;-><init>(Lcom/twitter/android/SearchResultsFragment;)V

    .line 409
    new-instance v3, Lavb;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    new-instance v5, Lcom/twitter/android/pc;

    invoke-direct {v5, p0, v1}, Lcom/twitter/android/pc;-><init>(Lcom/twitter/android/SearchResultsFragment;Laqx;)V

    invoke-direct {v3, v4, v0, v2, v5}, Lavb;-><init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;Lcmw;)V

    return-object v3

    :cond_1
    move v9, v0

    .line 394
    goto :goto_0
.end method

.method protected g()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 247
    iget v0, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    if-ne v0, v4, :cond_0

    iget-wide v0, p0, Lcom/twitter/android/SearchResultsFragment;->ac:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 251
    :cond_0
    iget v0, p0, Lcom/twitter/android/SearchResultsFragment;->n:I

    if-lez v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->l()V

    goto :goto_0

    .line 255
    :cond_1
    iget-wide v0, p0, Lcom/twitter/android/SearchResultsFragment;->s:J

    invoke-direct {p0, v4, v0, v1}, Lcom/twitter/android/SearchResultsFragment;->a(IJ)Z

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 1273
    iget v0, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/twitter/android/SearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->t()Lcom/twitter/android/or;

    move-result-object v0

    const-string/jumbo v1, "scribe_context"

    invoke-virtual {v0, v1}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->ai:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->ax:Lcom/twitter/android/ov;

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/android/client/v;)Lcom/twitter/app/common/list/TwitterListFragment;

    .line 264
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->J:Lcom/twitter/android/tj;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->J:Lcom/twitter/android/tj;

    invoke-virtual {v0, p0}, Lcom/twitter/android/tj;->a(Lcom/twitter/android/tp;)V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;->ab()V

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->X()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->av:Ljava/util/List;

    .line 272
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->ax:Lcom/twitter/android/ov;

    const-string/jumbo v1, "tweet"

    .line 273
    invoke-direct {p0, v1}, Lcom/twitter/android/SearchResultsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/vw;

    move-result-object v1

    const-string/jumbo v2, "news"

    .line 274
    invoke-direct {p0, v2}, Lcom/twitter/android/SearchResultsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/vw;

    move-result-object v2

    const-string/jumbo v3, "highlight"

    .line 275
    invoke-direct {p0, v3}, Lcom/twitter/android/SearchResultsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/vw;

    move-result-object v3

    const-string/jumbo v4, "tweet_list_glance"

    .line 276
    invoke-direct {p0, v4}, Lcom/twitter/android/SearchResultsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/vw;

    move-result-object v4

    const-string/jumbo v5, "tweet_list_popular"

    .line 277
    invoke-direct {p0, v5}, Lcom/twitter/android/SearchResultsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/vw;

    move-result-object v5

    .line 272
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/ov;->a(Lcom/twitter/library/view/aa;Lcom/twitter/library/view/aa;Lcom/twitter/library/view/aa;Lcom/twitter/library/view/aa;Lcom/twitter/library/view/aa;)V

    .line 278
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->ax:Lcom/twitter/android/ov;

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcvt;)V

    .line 280
    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    const v1, 0x7f0a0758

    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchResultsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1061
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f130731

    if-ne v0, v1, :cond_0

    .line 1062
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1063
    iput-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->al:Ljava/lang/String;

    .line 1064
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1065
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    const-string/jumbo v3, "feedback"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v3, "click"

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1064
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1066
    new-instance v0, Lcom/twitter/android/widget/ec;

    invoke-direct {v0, v5}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a0753

    .line 1067
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a09bb

    .line 1068
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05a7

    .line 1069
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0755

    .line 1070
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 1071
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1072
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1073
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "summary_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/base/BaseDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1075
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20

    .prologue
    .line 145
    invoke-super/range {p0 .. p1}, Lcom/twitter/android/SearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    if-eqz p1, :cond_1

    .line 147
    const-string/jumbo v2, "friendship_cache"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const-string/jumbo v2, "friendship_cache"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/util/FriendshipCache;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/SearchResultsFragment;->ag:Lcom/twitter/library/util/FriendshipCache;

    .line 153
    :goto_0
    const-string/jumbo v2, "viewed_item_ids"

    .line 154
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/SearchResultsFragment;->am:Ljava/util/HashSet;

    .line 155
    const-string/jumbo v2, "since"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/twitter/android/SearchResultsFragment;->ac:J

    .line 156
    const-string/jumbo v2, "until"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/twitter/android/SearchResultsFragment;->ad:J

    .line 157
    const-string/jumbo v2, "in_back_stack"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/android/SearchResultsFragment;->ak:Z

    .line 158
    const-string/jumbo v2, "search_takeover"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/android/SearchResultsFragment;->ae:Z

    .line 159
    const-string/jumbo v2, "event_header_available"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/android/SearchResultsFragment;->af:Z

    .line 172
    :goto_1
    new-instance v2, Lcom/twitter/android/pd;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/twitter/android/pd;-><init>(Lcom/twitter/android/SearchResultsFragment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/SearchResultsFragment;->ah:Lcom/twitter/android/kn;

    .line 173
    new-instance v2, Lcom/twitter/android/pf;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/twitter/android/pf;-><init>(Lcom/twitter/android/SearchResultsFragment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/SearchResultsFragment;->at:Lcom/twitter/android/pf;

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchResultsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v4

    .line 176
    new-instance v2, Lcom/twitter/android/km;

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchResultsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/SearchResultsFragment;->C:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/twitter/android/km;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v3, Lcom/twitter/android/ov;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchResultsFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/SearchResultsFragment;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/SearchResultsFragment;->ag:Lcom/twitter/library/util/FriendshipCache;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/SearchResultsFragment;->ah:Lcom/twitter/android/kn;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/twitter/android/SearchResultsFragment;->m:I

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/SearchResultsFragment;->ac()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/SearchResultsFragment;->am:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/android/SearchResultsFragment;->C:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/android/SearchResultsFragment;->ak:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/SearchResultsFragment;->q:I

    move/from16 v18, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    move-object v10, v2

    move-object/from16 v19, p0

    invoke-direct/range {v3 .. v19}, Lcom/twitter/android/ov;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;Ljava/lang/String;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/android/kn;Landroid/widget/AdapterView$OnItemClickListener;Lcom/twitter/android/xl;Lcom/twitter/android/km;IZLjava/lang/String;Ljava/util/Set;Ljava/lang/String;ZZILandroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/twitter/android/SearchResultsFragment;->ax:Lcom/twitter/android/ov;

    .line 183
    return-void

    .line 151
    :cond_0
    new-instance v2, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v2}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/SearchResultsFragment;->ag:Lcom/twitter/library/util/FriendshipCache;

    goto/16 :goto_0

    .line 161
    :cond_1
    new-instance v2, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v2}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/SearchResultsFragment;->ag:Lcom/twitter/library/util/FriendshipCache;

    .line 162
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/SearchResultsFragment;->am:Ljava/util/HashSet;

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchResultsFragment;->t()Lcom/twitter/android/or;

    move-result-object v2

    .line 164
    const-string/jumbo v3, "since"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/twitter/android/SearchResultsFragment;->ac:J

    .line 165
    const-string/jumbo v3, "until"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/twitter/android/SearchResultsFragment;->ad:J

    .line 166
    const-string/jumbo v3, "in_back_stack"

    invoke-virtual {v2, v3}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/twitter/android/SearchResultsFragment;->ak:Z

    .line 167
    const-string/jumbo v3, "search_takeover"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/twitter/android/SearchResultsFragment;->ae:Z

    .line 168
    const-string/jumbo v3, "event_header_available"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/twitter/android/SearchResultsFragment;->af:Z

    .line 169
    const-string/jumbo v3, "pinnedTweetIds"

    invoke-virtual {v2, v3}, Lcom/twitter/app/common/list/w;->i(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/SearchResultsFragment;->an:Ljava/util/List;

    goto/16 :goto_1

    .line 180
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 224
    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v4, v3, v6

    iget v4, p0, Lcom/twitter/android/SearchResultsFragment;->q:I

    .line 228
    invoke-static {v4}, Lcom/twitter/model/topic/TwitterTopic;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-string/jumbo v5, "time_nav"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "close"

    aput-object v5, v3, v4

    .line 227
    invoke-static {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    .line 229
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->ab:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->at:Lcom/twitter/android/pf;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->b(Lcom/twitter/library/service/z;)V

    .line 233
    invoke-super {p0}, Lcom/twitter/android/SearchFragment;->onDestroy()V

    .line 234
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 924
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/pg;

    .line 926
    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/twitter/android/GalleryActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/twitter/library/provider/df;->a:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/twitter/android/SearchResultsFragment;->aa:J

    .line 927
    invoke-static {v3, v4, v5}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "prj"

    sget-object v4, Lcha;->a:[Ljava/lang/String;

    .line 929
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sel"

    const-string/jumbo v4, "statuses_flags&1537 !=0 AND search_id=? AND type_id=?"

    .line 930
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "selArgs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/twitter/android/SearchResultsFragment;->s:J

    .line 933
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v0, v0, Lcom/twitter/android/pg;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 932
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "orderBy"

    const-string/jumbo v3, "type_id ASC, _id ASC"

    .line 934
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "id"

    .line 935
    invoke-virtual {v0, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "context"

    const/4 v3, 0x2

    .line 936
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 926
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 937
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "media_gallery"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "photo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "click"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->a(Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/twitter/android/SearchFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 198
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->ag:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/library/util/FriendshipCache;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string/jumbo v0, "friendship_cache"

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->ag:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 201
    :cond_0
    const-string/jumbo v0, "since"

    iget-wide v2, p0, Lcom/twitter/android/SearchResultsFragment;->ac:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 202
    const-string/jumbo v0, "until"

    iget-wide v2, p0, Lcom/twitter/android/SearchResultsFragment;->ad:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 203
    const-string/jumbo v0, "viewed_item_ids"

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->am:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 204
    const-string/jumbo v0, "in_back_stack"

    iget-boolean v1, p0, Lcom/twitter/android/SearchResultsFragment;->ak:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    const-string/jumbo v0, "search_takeover"

    iget-boolean v1, p0, Lcom/twitter/android/SearchResultsFragment;->ae:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    const-string/jumbo v0, "event_header_available"

    iget-boolean v1, p0, Lcom/twitter/android/SearchResultsFragment;->af:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    iget-boolean v0, p0, Lcom/twitter/android/SearchResultsFragment;->aj:Z

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/twitter/android/SearchResultsFragment;->ab:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/SearchResultsFragment;->at:Lcom/twitter/android/pf;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/z;)V

    .line 218
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 502
    invoke-super {p0, p1, p2}, Lcom/twitter/android/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 503
    if-eqz p2, :cond_0

    .line 507
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->b(Z)V

    .line 509
    :cond_0
    return-void
.end method

.method public r()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Lcom/twitter/android/SearchFragment;->r()V

    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchResultsFragment;->b(Z)V

    .line 424
    return-void
.end method

.method protected x()Z
    .locals 4

    .prologue
    .line 428
    iget v0, p0, Lcom/twitter/android/SearchResultsFragment;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/twitter/android/SearchResultsFragment;->ac:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
