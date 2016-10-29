.class public Lcom/twitter/android/vz;
.super Lcvt;
.source "Twttr"

# interfaces
.implements Lcmw;
.implements Lcom/twitter/android/client/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcvt",
        "<",
        "Lcom/twitter/android/timeline/bp;",
        ">;",
        "Lcmw",
        "<",
        "Lcom/twitter/android/timeline/bp;",
        ">;",
        "Lcom/twitter/android/client/v;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

.field protected final b:Lcom/twitter/android/client/c;

.field protected final c:Lcom/twitter/library/client/bk;

.field protected final d:Lcom/twitter/library/view/aa;

.field protected final e:Lcom/twitter/util/collection/ReferenceList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/ReferenceList",
            "<",
            "Lcom/twitter/android/vy;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Lcmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmv",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lcom/twitter/android/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field protected final h:Lcom/twitter/ui/view/s;

.field private final i:Lcom/twitter/ui/view/s;

.field private final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/twitter/library/card/q;

.field private final l:I

.field private m:Z

.field private n:Z

.field private final o:I

.field private final p:Z

.field private final q:Lcom/twitter/library/util/FriendshipCache;

.field private r:Z

.field private final s:Lcom/twitter/library/scribe/TwitterScribeAssociation;


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;ZLcom/twitter/library/view/aa;Lcom/twitter/library/util/FriendshipCache;IIILcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 10

    .prologue
    .line 149
    sget-object v9, Lcom/twitter/library/widget/TweetView;->c:Lcom/twitter/ui/view/s;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/vz;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;ZLcom/twitter/library/view/aa;Lcom/twitter/library/util/FriendshipCache;IIILcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/ui/view/s;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;ZLcom/twitter/library/view/aa;Lcom/twitter/library/util/FriendshipCache;IIILcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/ui/view/s;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, p1}, Lcvt;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/twitter/util/collection/ReferenceList;->a()Lcom/twitter/util/collection/ReferenceList;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/vz;->e:Lcom/twitter/util/collection/ReferenceList;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/twitter/android/vz;->j:Ljava/util/ArrayList;

    .line 113
    iput-boolean v0, p0, Lcom/twitter/android/vz;->r:Z

    .line 171
    iput-object p8, p0, Lcom/twitter/android/vz;->s:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 172
    iput-object p1, p0, Lcom/twitter/android/vz;->a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    .line 173
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/vz;->c:Lcom/twitter/library/client/bk;

    .line 174
    invoke-static {p1}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/vz;->b:Lcom/twitter/android/client/c;

    .line 175
    iput-object p3, p0, Lcom/twitter/android/vz;->d:Lcom/twitter/library/view/aa;

    .line 176
    iput-boolean p2, p0, Lcom/twitter/android/vz;->m:Z

    .line 177
    iget-object v2, p0, Lcom/twitter/android/vz;->c:Lcom/twitter/library/client/bk;

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lcom/twitter/model/account/UserSettings;->k:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/vz;->p:Z

    .line 179
    iput p5, p0, Lcom/twitter/android/vz;->l:I

    .line 180
    iput p6, p0, Lcom/twitter/android/vz;->o:I

    .line 181
    iput-object p4, p0, Lcom/twitter/android/vz;->q:Lcom/twitter/library/util/FriendshipCache;

    .line 182
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iput-boolean v1, p0, Lcom/twitter/android/vz;->r:Z

    .line 186
    :cond_0
    iput-object p9, p0, Lcom/twitter/android/vz;->h:Lcom/twitter/ui/view/s;

    .line 187
    iget-object v0, p0, Lcom/twitter/android/vz;->h:Lcom/twitter/ui/view/s;

    .line 188
    invoke-static {v0}, Lcom/twitter/android/revenue/z;->a(Lcom/twitter/ui/view/s;)Lcom/twitter/ui/view/s;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/vz;->i:Lcom/twitter/ui/view/s;

    .line 190
    invoke-virtual {p0}, Lcom/twitter/android/vz;->b()Lcmv;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/vz;->f:Lcmv;

    .line 191
    invoke-static {}, Lcom/twitter/library/card/q;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/twitter/library/card/q;

    invoke-direct {v0}, Lcom/twitter/library/card/q;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/twitter/android/vz;->k:Lcom/twitter/library/card/q;

    .line 192
    return-void

    :cond_1
    move v0, v1

    .line 178
    goto :goto_0

    .line 191
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;ZLcom/twitter/library/view/aa;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 9

    .prologue
    .line 123
    const v5, 0x7f0403ac

    const v6, 0x7f0403d4

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/vz;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;ZLcom/twitter/library/view/aa;Lcom/twitter/library/util/FriendshipCache;IIILcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;ZLcom/twitter/library/view/aa;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/ui/view/s;)V
    .locals 10

    .prologue
    .line 136
    const v5, 0x7f0403ac

    const v6, 0x7f0403d4

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/vz;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;ZLcom/twitter/library/view/aa;Lcom/twitter/library/util/FriendshipCache;IIILcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/ui/view/s;)V

    .line 139
    return-void
.end method

.method protected static a(Lcom/twitter/android/timeline/cn;I)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 361
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 362
    instance-of v0, p0, Lcom/twitter/android/timeline/r;

    if-eqz v0, :cond_0

    .line 363
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/r;

    .line 364
    invoke-interface {v0}, Lcom/twitter/android/timeline/r;->a()Ljava/lang/String;

    move-result-object v0

    .line 365
    const-string/jumbo v2, "ad_slot_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    const-string/jumbo v0, "position"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    return-object v1
.end method

.method private a(Lcom/twitter/library/widget/TweetView;)V
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/twitter/android/vz;->p:Z

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setDisplaySensitiveMedia(Z)V

    .line 286
    iget-object v0, p0, Lcom/twitter/android/vz;->d:Lcom/twitter/library/view/aa;

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setOnTweetViewClickListener(Lcom/twitter/library/view/aa;)V

    .line 287
    iget-boolean v0, p0, Lcom/twitter/android/vz;->r:Z

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setShouldSimulateInlineActions(Z)V

    .line 288
    return-void
.end method

.method public static a(Landroid/database/Cursor;J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 495
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/widget/ListView;JLcom/twitter/model/core/Tweet;Ljava/lang/Runnable;)Z
    .locals 7

    .prologue
    .line 390
    new-instance v0, Lcom/twitter/android/wa;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/wa;-><init>(Landroid/widget/ListView;JLcom/twitter/model/core/Tweet;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method private static b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 261
    instance-of v0, p0, Lcom/twitter/android/widget/GapView;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    const v0, 0x7f13013a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 269
    new-instance v0, Lcom/twitter/android/mb;

    invoke-direct {v0, p1}, Lcom/twitter/android/mb;-><init>(Landroid/view/View;)V

    .line 270
    iget-object v1, v0, Lcom/twitter/android/mb;->d:Lcom/twitter/library/widget/TweetView;

    invoke-direct {p0, v1}, Lcom/twitter/android/vz;->a(Lcom/twitter/library/widget/TweetView;)V

    .line 271
    iget-object v1, v0, Lcom/twitter/android/mb;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v1, v2}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    .line 272
    iget-object v1, v0, Lcom/twitter/android/mb;->a:Lcom/twitter/library/widget/TweetView;

    invoke-direct {p0, v1}, Lcom/twitter/android/vz;->a(Lcom/twitter/library/widget/TweetView;)V

    .line 273
    iget-object v1, v0, Lcom/twitter/android/mb;->a:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v1, v2}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    .line 274
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public static d(Landroid/database/Cursor;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 484
    if-nez p0, :cond_0

    .line 491
    :goto_0
    return v1

    .line 488
    :cond_0
    const/16 v2, 0x1d

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 489
    and-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_1

    move v3, v0

    .line 490
    :goto_1
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    move v2, v0

    .line 491
    :goto_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    :goto_3
    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v1

    .line 489
    goto :goto_1

    :cond_2
    move v2, v1

    .line 490
    goto :goto_2

    :cond_3
    move v0, v1

    .line 491
    goto :goto_3
.end method


# virtual methods
.method protected a(Lcom/twitter/android/timeline/bp;)I
    .locals 1

    .prologue
    .line 220
    instance-of v0, p1, Lcom/twitter/android/timeline/aq;

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 78
    check-cast p1, Lcom/twitter/android/timeline/bp;

    invoke-virtual {p0, p1}, Lcom/twitter/android/vz;->a(Lcom/twitter/android/timeline/bp;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/android/timeline/bp;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    instance-of v0, p2, Lcom/twitter/android/timeline/aq;

    if-eqz v0, :cond_0

    .line 248
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/vz;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/twitter/android/vz;->b(Landroid/view/View;)V

    .line 257
    :goto_0
    return-object v0

    .line 250
    :cond_0
    instance-of v0, p2, Lcom/twitter/android/timeline/al;

    if-eqz v0, :cond_1

    .line 251
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402a3

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 252
    invoke-direct {p0, v0}, Lcom/twitter/android/vz;->c(Landroid/view/View;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/vz;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 255
    invoke-virtual {p0, v0}, Lcom/twitter/android/vz;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    check-cast p2, Lcom/twitter/android/timeline/bp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/vz;->a(Landroid/content/Context;Lcom/twitter/android/timeline/bp;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Lcmf;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/twitter/android/vz;->h()Lcom/twitter/android/timeline/br;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Landroid/database/Cursor;)Lcmf;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/twitter/android/vz;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/br;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/View;Lcom/twitter/android/timeline/cn;I)Lcom/twitter/model/core/Tweet;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 307
    iget-object v4, p2, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    .line 308
    invoke-virtual {p0}, Lcom/twitter/android/vz;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v5

    .line 309
    invoke-virtual {v5, v4}, Lbki;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    .line 310
    if-nez v3, :cond_0

    .line 311
    iget v0, v4, Lcom/twitter/model/core/Tweet;->d:I

    and-int/lit8 v0, v0, -0x9

    iput v0, v4, Lcom/twitter/model/core/Tweet;->d:I

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vy;

    .line 314
    iget-object v8, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    .line 315
    iget-object v0, p0, Lcom/twitter/android/vz;->q:Lcom/twitter/library/util/FriendshipCache;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/twitter/android/vz;->q:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v4}, Lcom/twitter/library/util/FriendshipCache;->a(Lcom/twitter/model/core/Tweet;)V

    .line 319
    :cond_1
    const v0, 0x7f13006f

    invoke-virtual {v8, v0, p2}, Lcom/twitter/library/widget/TweetView;->setTag(ILjava/lang/Object;)V

    .line 320
    const v0, 0x7f13006e

    invoke-virtual {p2}, Lcom/twitter/android/timeline/cn;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v0, v6}, Lcom/twitter/library/widget/TweetView;->setTag(ILjava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/twitter/android/vz;->q:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v8, v0}, Lcom/twitter/library/widget/TweetView;->setFriendshipCache(Lcom/twitter/library/util/FriendshipCache;)V

    .line 322
    iget-boolean v0, p0, Lcom/twitter/android/vz;->r:Z

    invoke-virtual {v8, v0}, Lcom/twitter/library/widget/TweetView;->setShouldSimulateInlineActions(Z)V

    .line 323
    iget-boolean v0, p0, Lcom/twitter/android/vz;->m:Z

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v8, v0}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    .line 324
    invoke-virtual {v8, v2}, Lcom/twitter/library/widget/TweetView;->setHideInlineActions(Z)V

    .line 325
    sget v0, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {v8, v0}, Lcom/twitter/library/widget/TweetView;->setContentSize(F)V

    .line 326
    invoke-virtual {p0}, Lcom/twitter/android/vz;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcjg;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/twitter/library/widget/TweetView;->setDisplayTranslationBadge(Z)V

    .line 328
    invoke-virtual {v8}, Lcom/twitter/library/widget/TweetView;->getPreviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/twitter/android/vz;->m:Z

    if-nez v0, :cond_2

    .line 329
    invoke-virtual {v4}, Lcom/twitter/model/core/Tweet;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v3, v1

    .line 330
    :goto_1
    iget-boolean v0, p0, Lcom/twitter/android/vz;->p:Z

    .line 331
    invoke-virtual {v5}, Lbki;->b()Z

    move-result v5

    .line 330
    invoke-static {v4, v0, v5}, Lcih;->a(Lcom/twitter/model/core/Tweet;ZZ)Z

    move-result v5

    .line 333
    new-instance v0, Lcjm;

    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    :goto_2
    iget-object v2, p0, Lcom/twitter/android/vz;->k:Lcom/twitter/library/card/q;

    iget-object v3, p0, Lcom/twitter/android/vz;->a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v6, p0, Lcom/twitter/android/vz;->s:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcjm;-><init>(ZLcom/twitter/library/card/q;Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 337
    instance-of v1, p2, Lcom/twitter/android/timeline/ai;

    if-eqz v1, :cond_3

    move-object v1, p2

    .line 338
    check-cast v1, Lcom/twitter/android/timeline/ai;

    iget-object v1, v1, Lcom/twitter/android/timeline/ai;->a:Lcom/twitter/model/moments/bg;

    .line 339
    iget-object v1, v1, Lcom/twitter/model/moments/bg;->c:Lcom/twitter/model/moments/ad;

    iget-object v1, v1, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/twitter/library/widget/TweetView;->setSocialContextName(Ljava/lang/String;)V

    .line 344
    :cond_3
    invoke-virtual {v4}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    .line 345
    :goto_3
    invoke-virtual {v8, v1}, Lcom/twitter/library/widget/TweetView;->setMinLines(I)V

    .line 348
    invoke-virtual {v4}, Lcom/twitter/model/core/Tweet;->V()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/twitter/android/revenue/z;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/twitter/android/vz;->i:Lcom/twitter/ui/view/s;

    .line 350
    :goto_4
    iget-boolean v2, p0, Lcom/twitter/android/vz;->n:Z

    invoke-virtual {v8, v4, v1, v2, v0}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;ZLcjm;)V

    .line 351
    invoke-virtual {v8}, Lcom/twitter/library/widget/TweetView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/twitter/android/vz;->g:Lcom/twitter/android/kn;

    if-eqz v0, :cond_4

    .line 353
    invoke-static {p2, p3}, Lcom/twitter/android/vz;->a(Lcom/twitter/android/timeline/cn;I)Landroid/os/Bundle;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/twitter/android/vz;->g:Lcom/twitter/android/kn;

    invoke-interface {v1, p1, v4, v0}, Lcom/twitter/android/kn;->a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 356
    :cond_4
    return-object v4

    :cond_5
    move v0, v2

    .line 323
    goto/16 :goto_0

    :cond_6
    move v3, v2

    .line 329
    goto :goto_1

    :cond_7
    move v1, v2

    .line 333
    goto :goto_2

    .line 344
    :cond_8
    const/4 v1, -0x1

    goto :goto_3

    .line 348
    :cond_9
    iget-object v1, p0, Lcom/twitter/android/vz;->h:Lcom/twitter/ui/view/s;

    goto :goto_4
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/twitter/android/vz;->j:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lcom/twitter/android/vy;

    invoke-direct {v0, p1}, Lcom/twitter/android/vy;-><init>(Landroid/view/View;)V

    .line 279
    iget-object v1, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-direct {p0, v1}, Lcom/twitter/android/vz;->a(Lcom/twitter/library/widget/TweetView;)V

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 281
    iget-object v1, p0, Lcom/twitter/android/vz;->e:Lcom/twitter/util/collection/ReferenceList;

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/ReferenceList;->b(Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/timeline/bp;)V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/timeline/bp;I)V
    .locals 1

    .prologue
    .line 293
    instance-of v0, p3, Lcom/twitter/android/timeline/aq;

    if-eqz v0, :cond_0

    .line 294
    check-cast p3, Lcom/twitter/android/timeline/aq;

    invoke-virtual {p0, p1, p3}, Lcom/twitter/android/vz;->a(Landroid/view/View;Lcom/twitter/android/timeline/aq;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    check-cast p3, Lcom/twitter/android/timeline/cn;

    invoke-virtual {p0, p1, p3, p4}, Lcom/twitter/android/vz;->a(Landroid/view/View;Lcom/twitter/android/timeline/cn;I)Lcom/twitter/model/core/Tweet;

    goto :goto_0
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p3, Lcom/twitter/android/timeline/bp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/vz;->a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/timeline/bp;)V

    return-void
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 78
    check-cast p3, Lcom/twitter/android/timeline/bp;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/android/vz;->a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/timeline/bp;I)V

    return-void
.end method

.method protected a(Landroid/view/View;Lcom/twitter/android/timeline/aq;)V
    .locals 4

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/GapView;

    .line 302
    iget-object v1, p0, Lcom/twitter/android/vz;->j:Ljava/util/ArrayList;

    iget-wide v2, p2, Lcom/twitter/android/timeline/aq;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/GapView;->setSpinnerActive(Z)V

    .line 303
    return-void
.end method

.method protected b()Lcmv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcmv",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcmr;

    new-instance v1, Lcom/twitter/android/timeline/cm;

    invoke-direct {v1}, Lcom/twitter/android/timeline/cm;-><init>()V

    invoke-direct {v0, v1}, Lcmr;-><init>(Lcmv;)V

    return-object v0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/br;
    .locals 2

    .prologue
    .line 453
    new-instance v0, Lcom/twitter/android/timeline/br;

    iget-object v1, p0, Lcom/twitter/android/vz;->f:Lcmv;

    invoke-direct {v0, p1, v1}, Lcom/twitter/android/timeline/br;-><init>(Landroid/database/Cursor;Lcmv;)V

    return-object v0
.end method

.method public b(Lcom/twitter/android/kn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/model/core/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    iput-object p1, p0, Lcom/twitter/android/vz;->g:Lcom/twitter/android/kn;

    .line 474
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/twitter/android/vz;->n:Z

    if-eq v0, p1, :cond_1

    .line 374
    iput-boolean p1, p0, Lcom/twitter/android/vz;->n:Z

    .line 375
    iget-boolean v0, p0, Lcom/twitter/android/vz;->n:Z

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/twitter/android/vz;->e:Lcom/twitter/util/collection/ReferenceList;

    invoke-virtual {v0}, Lcom/twitter/util/collection/ReferenceList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vy;

    .line 377
    if-eqz v0, :cond_0

    .line 378
    iget-object v0, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/TweetView;->l()V

    goto :goto_0

    .line 383
    :cond_1
    return-void
.end method

.method public c(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/twitter/android/vz;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/br;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/vz;->a(Lcmf;)Lcmf;

    .line 458
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/twitter/android/vz;->m:Z

    if-eq v0, p1, :cond_0

    .line 478
    iput-boolean p1, p0, Lcom/twitter/android/vz;->m:Z

    .line 479
    invoke-virtual {p0}, Lcom/twitter/android/vz;->notifyDataSetChanged()V

    .line 481
    :cond_0
    return-void
.end method

.method protected d()Lcom/twitter/library/util/FriendshipCache;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/twitter/android/vz;->q:Lcom/twitter/library/util/FriendshipCache;

    return-object v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/twitter/android/vz;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/twitter/android/vz;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 448
    return-void
.end method

.method public g()Lcom/twitter/android/timeline/br;
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Lcvt;->i()Lcmf;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/br;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/twitter/android/vz;->g()Lcom/twitter/android/timeline/br;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/br;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/twitter/android/vz;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0, v0}, Lcom/twitter/android/vz;->a(Lcom/twitter/android/timeline/bp;)I

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/twitter/android/vz;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 231
    instance-of v0, v0, Lcom/twitter/android/timeline/al;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    const v0, 0x7f130054

    .line 232
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Lcvt;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcvt;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x2

    return v0
.end method

.method public h()Lcom/twitter/android/timeline/br;
    .locals 1

    .prologue
    .line 469
    invoke-static {}, Lcom/twitter/android/timeline/br;->b()Lcom/twitter/android/timeline/br;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcmf;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/twitter/android/vz;->g()Lcom/twitter/android/timeline/br;

    move-result-object v0

    return-object v0
.end method
