.class public Lcom/twitter/android/vw;
.super Lcom/twitter/library/view/c;
.source "Twttr"


# instance fields
.field private a:Z

.field protected final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Landroid/content/Context;

.field protected final d:Lcom/twitter/android/client/c;

.field protected final e:Lcom/twitter/library/client/bk;

.field protected final f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field protected final g:Lciw;

.field protected final h:Lavh;

.field protected final i:Lcom/twitter/android/sn;

.field protected j:Lcom/twitter/library/client/Session;

.field protected k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private l:Ljava/lang/String;

.field private final m:Lcom/twitter/android/vv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/twitter/android/client/c;Lcom/twitter/library/client/bk;Lcom/twitter/android/sn;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lavh;)V
    .locals 6

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/twitter/library/view/c;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/vw;->l:Ljava/lang/String;

    .line 158
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    .line 160
    iput-object p3, p0, Lcom/twitter/android/vw;->d:Lcom/twitter/android/client/c;

    .line 161
    iput-object p4, p0, Lcom/twitter/android/vw;->e:Lcom/twitter/library/client/bk;

    .line 162
    iput-object p6, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/vw;->a:Z

    .line 164
    iput-object p7, p0, Lcom/twitter/android/vw;->l:Ljava/lang/String;

    .line 165
    iput-object p8, p0, Lcom/twitter/android/vw;->g:Lciw;

    .line 166
    iput-object p9, p0, Lcom/twitter/android/vw;->h:Lavh;

    .line 167
    iget-object v0, p0, Lcom/twitter/android/vw;->e:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    .line 168
    iput-object p5, p0, Lcom/twitter/android/vw;->i:Lcom/twitter/android/sn;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/vw;->c:Landroid/content/Context;

    .line 170
    new-instance v0, Lcom/twitter/android/vv;

    iget-object v2, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    iget-object v3, p0, Lcom/twitter/android/vw;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/vw;->g:Lciw;

    .line 171
    invoke-virtual {v4}, Lciw;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/vv;-><init>(Landroid/app/Activity;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    iput-object v0, p0, Lcom/twitter/android/vw;->m:Lcom/twitter/android/vv;

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;)V
    .locals 7

    .prologue
    .line 131
    const/4 v5, 0x0

    new-instance v6, Lcom/twitter/android/sn;

    invoke-direct {v6, p1, p2}, Lcom/twitter/android/sn;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/vw;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lavh;Lcom/twitter/android/sn;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lavh;)V
    .locals 7

    .prologue
    .line 142
    new-instance v6, Lcom/twitter/android/sn;

    invoke-direct {v6, p1, p2}, Lcom/twitter/android/sn;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/vw;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lavh;Lcom/twitter/android/sn;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lavh;Lcom/twitter/android/sn;)V
    .locals 10

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v3

    .line 150
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v5, p6

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 149
    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/vw;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/twitter/android/client/c;Lcom/twitter/library/client/bk;Lcom/twitter/android/sn;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lavh;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lcom/twitter/android/sn;)V
    .locals 7

    .prologue
    .line 137
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/vw;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lavh;Lcom/twitter/android/sn;)V

    .line 138
    return-void
.end method

.method private a(J)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 237
    iget-object v0, p0, Lcom/twitter/android/vw;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/vw;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 239
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 240
    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 246
    :goto_0
    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_1

    .line 242
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 243
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 244
    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    invoke-static {p1}, Lcom/twitter/model/core/Tweet;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-static {v1, v0, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/support/v4/app/Fragment;Lcom/twitter/media/ui/image/BaseMediaImageView;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 377
    instance-of v0, p1, Lcom/twitter/app/common/list/TwitterListFragment;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 380
    check-cast v0, Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v3, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 382
    new-array v0, v9, [I

    .line 383
    new-array v4, v9, [I

    .line 384
    invoke-virtual {p2, v0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->getLocationOnScreen([I)V

    .line 385
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 386
    aget v5, v0, v1

    .line 387
    aget v0, v0, v1

    invoke-virtual {p2}, Lcom/twitter/media/ui/image/BaseMediaImageView;->getHeight()I

    move-result v6

    add-int/2addr v6, v0

    .line 388
    aget v7, v4, v1

    .line 389
    aget v0, v4, v1

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 390
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 391
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v9, :cond_1

    move v0, v1

    .line 392
    :goto_0
    const v1, 0x7f0f0057

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 395
    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/twitter/media/ui/image/BaseMediaImageView;->getHeight()I

    move-result v8

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_2

    .line 409
    :cond_0
    :goto_1
    if-eqz v2, :cond_4

    .line 413
    neg-int v0, v2

    const/16 v1, 0xc8

    invoke-virtual {v3, v0, v1}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 414
    new-instance v0, Lcom/twitter/android/vx;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/twitter/android/vx;-><init>(Lcom/twitter/android/vw;Landroid/support/v4/app/Fragment;Landroid/content/Intent;Lcom/twitter/media/ui/image/BaseMediaImageView;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v0, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 391
    goto :goto_0

    .line 399
    :cond_2
    if-ge v5, v7, :cond_3

    .line 401
    sub-int v0, v7, v5

    add-int v2, v0, v1

    goto :goto_1

    .line 402
    :cond_3
    if-le v6, v4, :cond_0

    if-nez v0, :cond_0

    .line 404
    sub-int v0, v4, v6

    sub-int v2, v0, v1

    goto :goto_1

    .line 426
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/twitter/android/GalleryActivity;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/twitter/media/ui/image/BaseMediaImageView;)V

    goto :goto_2

    .line 430
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/twitter/android/GalleryActivity;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/twitter/media/ui/image/BaseMediaImageView;)V

    goto :goto_2
.end method

.method private a(Lcom/twitter/model/core/Tweet;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/bm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const-string/jumbo v0, "photo_impression"

    const-string/jumbo v1, "photo_with_link:impression"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    :cond_0
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 4

    .prologue
    .line 725
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    invoke-static {}, Lcfw;->a()Lcfs;

    move-result-object v0

    .line 727
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    invoke-static {p2, v1}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v1

    invoke-virtual {v1}, Lcfv;->a()Lcft;

    move-result-object v1

    .line 726
    invoke-interface {v0, v1}, Lcfs;->a(Ljava/lang/Object;)V

    .line 730
    :cond_0
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 731
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v0, p0, Lcom/twitter/android/vw;->c:Landroid/content/Context;

    .line 732
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, p1, p6, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 733
    invoke-direct {p0, p1, p3, p4}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 734
    invoke-virtual {v0, p5}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 735
    invoke-virtual {v0, p7}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 736
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 731
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 737
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 1

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/twitter/library/widget/TweetView;->getScribeItem()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 832
    invoke-static {p1}, Lcom/twitter/config/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/library/widget/TweetView;)V
    .locals 5

    .prologue
    .line 253
    iget-object v0, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/twitter/android/vw;->g:Lciw;

    invoke-virtual {v0}, Lciw;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "platform_photo_card"

    const-string/jumbo v2, "click"

    .line 255
    invoke-direct {p0, p2, v1, v2}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lcom/twitter/android/vw;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v4, 0x0

    .line 257
    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 258
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 259
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 260
    invoke-virtual {p0, p4}, Lcom/twitter/android/vw;->a(Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/vw;->l:Ljava/lang/String;

    .line 261
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 256
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 264
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->p:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    invoke-static {v0, v1}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 268
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/android/vw;->b(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/library/widget/TweetView;)V

    .line 269
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;ZLcom/twitter/library/widget/TweetView;)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/twitter/android/GalleryActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "etc"

    iget-boolean v5, p0, Lcom/twitter/android/vw;->a:Z

    .line 279
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "association"

    iget-object v5, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 280
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 281
    iget-object v0, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    .line 283
    const-string/jumbo v5, "home"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    const-string/jumbo v0, "context"

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/vw;->h:Lavh;

    if-eqz v0, :cond_8

    .line 305
    iget-object v0, p0, Lcom/twitter/android/vw;->h:Lavh;

    iget-object v0, v0, Lavh;->a:Landroid/net/Uri;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "prj"

    iget-object v3, p0, Lcom/twitter/android/vw;->h:Lavh;

    iget-object v3, v3, Lavh;->b:[Ljava/lang/String;

    .line 306
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "sel"

    iget-object v3, p0, Lcom/twitter/android/vw;->h:Lavh;

    iget-object v3, v3, Lavh;->c:Ljava/lang/String;

    .line 307
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "selArgs"

    iget-object v3, p0, Lcom/twitter/android/vw;->h:Lavh;

    iget-object v3, v3, Lavh;->d:[Ljava/lang/String;

    .line 308
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "orderBy"

    iget-object v3, p0, Lcom/twitter/android/vw;->h:Lavh;

    iget-object v3, v3, Lavh;->e:Ljava/lang/String;

    .line 309
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "id"

    iget-wide v6, p2, Lcom/twitter/model/core/Tweet;->C:J

    .line 310
    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "controls"

    .line 311
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 359
    :cond_1
    :goto_1
    if-eqz p5, :cond_b

    .line 360
    invoke-virtual {p5}, Lcom/twitter/library/widget/TweetView;->getContentContainer()Lcom/twitter/library/widget/renderablecontent/c;

    move-result-object v0

    .line 362
    :goto_2
    instance-of v1, v0, Lcjp;

    if-eqz v1, :cond_d

    if-eqz p3, :cond_d

    .line 363
    check-cast v0, Lcjp;

    .line 364
    invoke-virtual {v0, p3}, Lcjp;->a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/media/ui/image/BaseMediaImageView;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_c

    .line 366
    invoke-direct {p0, p1, v0, v4}, Lcom/twitter/android/vw;->a(Landroid/support/v4/app/Fragment;Lcom/twitter/media/ui/image/BaseMediaImageView;Landroid/content/Intent;)V

    .line 373
    :goto_3
    return-void

    .line 286
    :cond_2
    const-string/jumbo v5, "tweet"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 287
    const-string/jumbo v0, "context"

    invoke-virtual {v4, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 289
    :cond_3
    const-string/jumbo v5, "profile_tweets"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 290
    const-string/jumbo v0, "context"

    const/4 v5, 0x6

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 292
    :cond_4
    const-string/jumbo v5, "list"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 293
    const-string/jumbo v0, "context"

    const/4 v5, 0x7

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 295
    :cond_5
    const-string/jumbo v5, "favorites"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 296
    const-string/jumbo v0, "context"

    const/16 v5, 0x8

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 298
    :cond_6
    const-string/jumbo v5, "profile"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "me"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    :cond_7
    const-string/jumbo v0, "context"

    const/16 v5, 0xa

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const-string/jumbo v0, "association"

    iget-object v5, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 313
    :cond_8
    const-string/jumbo v0, "pic_plus_link_3106"

    invoke-virtual {p0, v0}, Lcom/twitter/android/vw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 314
    const-string/jumbo v0, "statusId"

    iget-wide v6, p2, Lcom/twitter/model/core/Tweet;->C:J

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 315
    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_9
    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 345
    const-string/jumbo v0, "show_tw"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    :goto_5
    if-eqz p3, :cond_a

    .line 350
    const-string/jumbo v0, "media"

    sget-object v1, Lcom/twitter/model/core/MediaEntity;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v4, v0, p3, v1}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 351
    const-string/jumbo v0, "source_tweet_id"

    iget-wide v6, p3, Lcom/twitter/model/core/MediaEntity;->i:J

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 353
    :cond_a
    if-eqz p4, :cond_1

    .line 354
    const-string/jumbo v0, "tagged_user_list"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    .line 315
    :pswitch_0
    const-string/jumbo v6, "pic_plus_link_variation_1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v1

    goto :goto_4

    :pswitch_1
    const-string/jumbo v6, "pic_plus_link_variation_2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v2

    goto :goto_4

    :pswitch_2
    const-string/jumbo v6, "pic_plus_link_variation_3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v0, 0x2

    goto :goto_4

    :pswitch_3
    const-string/jumbo v6, "pic_plus_link_variation_4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    goto :goto_4

    .line 317
    :pswitch_4
    const-string/jumbo v0, "tw_link"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    invoke-direct {p0, p2, v4}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Landroid/content/Intent;)V

    goto :goto_5

    .line 323
    :pswitch_5
    const-string/jumbo v0, "tw_link"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    invoke-direct {p0, p2, v4}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Landroid/content/Intent;)V

    goto :goto_5

    .line 330
    :pswitch_6
    const-string/jumbo v0, "tw_link"

    invoke-virtual {v4, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    invoke-direct {p0, p2, v4}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Landroid/content/Intent;)V

    goto :goto_5

    .line 337
    :pswitch_7
    const-string/jumbo v0, "show_tw"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    const-string/jumbo v0, "tw_link"

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    invoke-direct {p0, p2, v4}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Landroid/content/Intent;)V

    goto :goto_5

    .line 360
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 368
    :cond_c
    const/16 v0, 0x23bf

    invoke-virtual {p1, v4, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 371
    :cond_d
    const/16 v0, 0x23bf

    invoke-virtual {p1, v4, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 315
    nop

    :pswitch_data_0
    .packed-switch -0x730758b0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 13

    .prologue
    .line 563
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 564
    if-eqz p4, :cond_0

    .line 565
    new-instance v1, Lcom/twitter/media/model/MediaDescriptor;

    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-direct {v1, v0, v2}, Lcom/twitter/media/model/MediaDescriptor;-><init>(Ljava/lang/String;Z)V

    .line 566
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/twitter/android/vw;->a(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZIIZ)V

    .line 570
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZIIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Lcom/twitter/model/core/Tweet;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/media/model/MediaDescriptor;",
            ">;",
            "Ljava/lang/String;",
            "ZZZIIZ)V"
        }
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    if-eqz v0, :cond_0

    .line 578
    if-eqz p11, :cond_2

    .line 579
    const-string/jumbo v0, "platform_forward_player_card"

    .line 583
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/vw;->g:Lciw;

    invoke-virtual {v1}, Lciw;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "click"

    .line 584
    invoke-direct {p0, p2, v0, v2}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-static {v1, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 585
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lcom/twitter/android/vw;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v4, 0x0

    .line 586
    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 587
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 588
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/vw;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 585
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 591
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/twitter/android/vw;->d:Lcom/twitter/android/client/c;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->p:Lcom/twitter/library/api/PromotedEvent;

    .line 593
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v2

    .line 592
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 595
    :cond_1
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 596
    invoke-static {p2}, Lcom/twitter/library/av/playback/bm;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    new-instance v0, Lcom/twitter/android/av/bj;

    invoke-direct {v0}, Lcom/twitter/android/av/bj;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 598
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/bj;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/av/ap;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/av/playback/TweetAVDataSource;

    invoke-direct {v1, p2, p3}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/ap;

    move-result-object v0

    const/4 v1, 0x1

    .line 600
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->b(Z)Lcom/twitter/library/av/ap;

    move-result-object v0

    .line 602
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    .line 603
    invoke-virtual {v1}, Lbki;->k()Z

    move-result v1

    .line 601
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->e(Z)Lcom/twitter/library/av/ap;

    move-result-object v0

    .line 604
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->a(Ljava/lang/Object;)V

    .line 634
    :goto_1
    return-void

    .line 581
    :cond_2
    const-string/jumbo v0, "platform_player_card"

    goto/16 :goto_0

    .line 606
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/MediaPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    const-string/jumbo v1, "image_url"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "aud"

    .line 608
    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "is_looping"

    .line 609
    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "simple_controls"

    .line 610
    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "player_url"

    .line 611
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "player_stream_urls"

    .line 612
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "tweet"

    .line 613
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "video_position"

    .line 614
    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "video_index"

    .line 615
    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "association"

    iget-object v3, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 616
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "amplify"

    .line 617
    invoke-static {p2}, Lcom/twitter/library/av/playback/bm;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 618
    const/16 v1, 0x23c3

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 620
    :cond_4
    invoke-static {p3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 622
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 623
    :catch_0
    move-exception v0

    .line 624
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a092a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 627
    :cond_5
    new-instance v0, Lbiv;

    new-instance v1, Lcom/twitter/library/util/InvalidDataException;

    const-string/jumbo v2, "No streams or player url supplied"

    invoke-direct {v1, v2}, Lcom/twitter/library/util/InvalidDataException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    .line 628
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v1

    .line 629
    if-eqz v1, :cond_6

    .line 630
    const-string/jumbo v2, "cardType"

    invoke-virtual {v1}, Lclw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v2

    const-string/jumbo v3, "cardUrl"

    invoke-virtual {v1}, Lclw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 632
    :cond_6
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto/16 :goto_1
.end method

.method public a(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Z)V
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/twitter/android/vw;->m:Lcom/twitter/android/vv;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/twitter/android/vv;->a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;ZLcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 642
    return-void
.end method

.method public a(Lcjc;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 204
    iget-object v0, p1, Lcjc;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_0

    .line 212
    iget-object v4, p1, Lcjc;->a:Lcom/twitter/model/core/Tweet;

    .line 213
    invoke-virtual {v4}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v5

    .line 214
    invoke-virtual {p1}, Lcjc;->b()J

    move-result-wide v2

    .line 215
    invoke-virtual {p1}, Lcjc;->a()J

    move-result-wide v6

    .line 217
    iget-object v0, p0, Lcom/twitter/android/vw;->g:Lciw;

    invoke-virtual {v0}, Lciw;->a()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcjc;->a:Lcom/twitter/model/core/Tweet;

    iget-boolean v0, p1, Lcjc;->c:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "avatar"

    :goto_1
    const-string/jumbo v10, "profile_click"

    .line 218
    invoke-direct {p0, v9, v0, v10}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v8, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    new-instance v8, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v9, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    invoke-virtual {v9}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v9, p0, Lcom/twitter/android/vw;->c:Landroid/content/Context;

    iget-object v10, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 221
    invoke-virtual {v8, v9, v4, v10, v12}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v8

    .line 222
    invoke-virtual {v8, v2, v3, v5, v12}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(JLcss;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    .line 223
    invoke-virtual {v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v8, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 224
    invoke-virtual {v0, v8}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v8, p0, Lcom/twitter/android/vw;->l:Ljava/lang/String;

    .line 225
    invoke-virtual {v0, v8}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 226
    invoke-direct {p0, v6, v7}, Lcom/twitter/android/vw;->a(J)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v6

    .line 228
    iget-object v7, v4, Lcom/twitter/model/core/Tweet;->ab:Lcom/twitter/model/timeline/al;

    .line 229
    invoke-virtual {p1}, Lcjc;->c()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-static/range {v1 .. v7}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/model/timeline/al;)V

    goto :goto_0

    .line 217
    :cond_2
    const-string/jumbo v0, "screen_name"

    goto :goto_1
.end method

.method public a(Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    .line 184
    return-void
.end method

.method public a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/twitter/android/vw;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 745
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;JLcom/twitter/library/widget/TweetView;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 486
    iget-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 487
    if-nez v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 491
    if-eqz v2, :cond_0

    .line 495
    invoke-virtual {p0, p4}, Lcom/twitter/android/vw;->a(Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v3

    .line 496
    iget-object v0, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    if-eqz v0, :cond_2

    .line 497
    const-string/jumbo v0, "media_tag_summary"

    const-string/jumbo v5, "click"

    invoke-direct {p0, p1, v0, v5}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    new-instance v5, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v6, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v6, p0, Lcom/twitter/android/vw;->c:Landroid/content/Context;

    iget-object v7, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v8, 0x0

    .line 499
    invoke-virtual {v5, v6, p1, v7, v8}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    aput-object v0, v6, v9

    .line 500
    invoke-virtual {v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v5, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 501
    invoke-virtual {v0, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 502
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/vw;->l:Ljava/lang/String;

    .line 503
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 498
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 506
    :cond_2
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/model/core/ac;->a(J)Lcom/twitter/model/core/MediaEntity;

    move-result-object v3

    .line 507
    if-eqz v3, :cond_0

    .line 508
    iget-object v0, v3, Lcom/twitter/model/core/MediaEntity;->p:Ljava/util/List;

    .line 509
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 510
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 511
    iget-object v3, p0, Lcom/twitter/android/vw;->d:Lcom/twitter/android/client/c;

    sget-object v4, Lcom/twitter/library/api/PromotedEvent;->f:Lcom/twitter/library/api/PromotedEvent;

    .line 512
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v5

    .line 511
    invoke-virtual {v3, v4, v5}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 514
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "screen_name"

    .line 515
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/am;

    iget-object v0, v0, Lcom/twitter/model/core/am;->d:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 514
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, p0

    move-object v2, p1

    move-object v5, p4

    .line 517
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/vw;->a(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;ZLcom/twitter/library/widget/TweetView;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lclw;Lcom/twitter/library/widget/TweetView;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 526
    iget-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 527
    if-nez v1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_0

    .line 534
    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    invoke-virtual {p0, v1, p1, v9}, Lcom/twitter/android/vw;->a(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Z)V

    goto :goto_0

    .line 537
    :cond_2
    invoke-static {p2}, Lcom/twitter/library/media/util/p;->a(Lclw;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/media/request/b;->a()Lcom/twitter/media/request/a;

    move-result-object v0

    .line 538
    invoke-virtual {p2}, Lclw;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lclw;->m()Ljava/lang/String;

    move-result-object v4

    .line 539
    invoke-virtual {v0}, Lcom/twitter/media/request/a;->a()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move v7, v6

    move v8, v6

    .line 538
    invoke-virtual/range {v0 .. v9}, Lcom/twitter/android/vw;->a(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;)V
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 800
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 801
    :goto_0
    if-eqz v0, :cond_0

    .line 802
    iget-object v1, p0, Lcom/twitter/android/vw;->i:Lcom/twitter/android/sn;

    invoke-virtual {v1, p1, p2, v0}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;Landroid/support/v4/app/FragmentActivity;)V

    .line 804
    :cond_0
    return-void

    .line 800
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 827
    invoke-virtual {p2}, Lcom/twitter/library/widget/TweetView;->getFriendshipCache()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/vw;->i:Lcom/twitter/android/sn;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/twitter/android/tj;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lciv;Ljava/lang/String;ZLjava/lang/String;)V

    .line 829
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/library/widget/TweetView;)V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 451
    if-nez v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 455
    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/twitter/android/vw;->a(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/library/widget/TweetView;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/av;)V
    .locals 10

    .prologue
    .line 700
    iget-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 701
    if-eqz v0, :cond_1

    .line 702
    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-direct {p0, v2, v3}, Lcom/twitter/android/vw;->a(J)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v6

    .line 703
    iget-object v5, p2, Lcom/twitter/model/core/av;->i:Ljava/lang/String;

    .line 704
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/vw;->c:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "screen_name"

    .line 705
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 706
    const-string/jumbo v3, "association"

    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v1, v6}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    const/4 v4, 0x1

    .line 708
    invoke-virtual {v1, v4}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-wide v8, p1, Lcom/twitter/model/core/Tweet;->p:J

    .line 709
    invoke-virtual {v1, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v1

    .line 706
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 711
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 712
    const-string/jumbo v1, "pc"

    .line 713
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v3

    invoke-static {v3}, Lcss;->a(Lcss;)[B

    move-result-object v3

    .line 712
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 715
    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 717
    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->f:Lcom/twitter/library/api/PromotedEvent;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "mention_click"

    .line 718
    invoke-static {v5}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    .line 717
    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 720
    :cond_1
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/b;)V
    .locals 8

    .prologue
    .line 687
    iget-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 688
    if-eqz v0, :cond_0

    .line 689
    iget-object v1, p0, Lcom/twitter/android/vw;->c:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/b;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 691
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/vw;->a(J)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v6

    .line 692
    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->u:Lcom/twitter/library/api/PromotedEvent;

    const-string/jumbo v3, "cashtag"

    const-string/jumbo v4, "search"

    iget-object v5, p2, Lcom/twitter/model/core/b;->c:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 695
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;)V
    .locals 3

    .prologue
    .line 668
    iget-object v0, p0, Lcom/twitter/android/vw;->m:Lcom/twitter/android/vv;

    iget-object v1, p0, Lcom/twitter/android/vw;->g:Lciw;

    invoke-virtual {v1}, Lciw;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/twitter/android/vv;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 669
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/twitter/android/vw;->m:Lcom/twitter/android/vv;

    iget-object v1, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/twitter/android/vv;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 741
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/q;)V
    .locals 8

    .prologue
    .line 674
    iget-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 675
    if-eqz v0, :cond_0

    .line 676
    iget-object v1, p0, Lcom/twitter/android/vw;->c:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/q;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 678
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/vw;->a(J)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v6

    .line 679
    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->e:Lcom/twitter/library/api/PromotedEvent;

    const-string/jumbo v3, "hashtag"

    const-string/jumbo v4, "search"

    iget-object v5, p2, Lcom/twitter/model/core/q;->c:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 682
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/geo/TwitterPlace;Lcom/twitter/library/widget/TweetView;)V
    .locals 6

    .prologue
    .line 464
    iget-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 465
    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/vw;->c:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/twitter/android/geo/places/d;->a(Landroid/content/Context;Lcom/twitter/model/geo/TwitterPlace;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 471
    invoke-static {}, Lcom/twitter/library/scribe/TwitterScribeItem;->b()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    .line 472
    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->C:J

    iput-wide v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 473
    new-instance v0, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;

    invoke-direct {v0}, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;-><init>()V

    .line 474
    iget-object v2, p2, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->a:Ljava/lang/String;

    .line 475
    iget-object v2, p2, Lcom/twitter/model/geo/TwitterPlace;->c:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    invoke-virtual {v2}, Lcom/twitter/model/geo/TwitterPlace$PlaceType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->b:Ljava/lang/String;

    .line 476
    iget-object v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    iget-object v2, v2, Lcom/twitter/library/scribe/ScribeGeoDetails;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "place_tag"

    const-string/jumbo v5, "click"

    .line 478
    invoke-direct {p0, p1, v4, v5}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 479
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 477
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/library/widget/TweetView;)V
    .locals 9

    .prologue
    .line 750
    iget-object v0, p0, Lcom/twitter/android/vw;->i:Lcom/twitter/android/sn;

    if-eqz v0, :cond_0

    .line 751
    const v0, 0x7f13006e

    invoke-virtual {p2, v0}, Lcom/twitter/library/widget/TweetView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 752
    iget-object v0, p0, Lcom/twitter/android/vw;->i:Lcom/twitter/android/sn;

    invoke-virtual {p2}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    invoke-virtual {p2}, Lcom/twitter/library/widget/TweetView;->getFriendshipCache()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v3

    .line 753
    invoke-virtual {p0, p2}, Lcom/twitter/android/vw;->a(Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    move-object v5, p2

    .line 752
    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;ZLjava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/twitter/android/vw;->a:Z

    .line 180
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/twitter/android/vw;->i:Lcom/twitter/android/sn;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/twitter/android/vw;->i:Lcom/twitter/android/sn;

    invoke-virtual {v0, p1}, Lcom/twitter/android/sn;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    .line 794
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/library/widget/TweetView;)V
    .locals 6

    .prologue
    .line 273
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/vw;->a(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;ZLcom/twitter/library/widget/TweetView;)V

    .line 274
    return-void
.end method

.method public b(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;)V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 546
    if-eqz v0, :cond_0

    .line 547
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/twitter/android/vw;->a(Landroid/support/v4/app/Fragment;Lcom/twitter/model/core/Tweet;Z)V

    .line 549
    :cond_0
    return-void
.end method

.method public b(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 760
    iget-object v1, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 761
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 762
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    const/4 v2, 0x2

    const-string/jumbo v3, ":attribution:open_link"

    aput-object v3, v0, v2

    .line 761
    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v3, p0, Lcom/twitter/android/vw;->c:Landroid/content/Context;

    const/4 v4, 0x0

    .line 764
    invoke-virtual {v2, v3, p1, v1, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    aput-object v0, v3, v6

    .line 765
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 766
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 763
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 767
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;)V

    .line 768
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/twitter/android/vw;->h:Lavh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/vw;->h:Lavh;

    iget-object v0, v0, Lavh;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 773
    iget-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 774
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/vw;->i:Lcom/twitter/android/sn;

    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 776
    if-eqz v2, :cond_0

    .line 777
    iget-object v0, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 778
    :goto_0
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v3, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v0, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 779
    invoke-virtual {v3, v4, p1, v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "quoted_tweet"

    const-string/jumbo v5, "click"

    .line 780
    invoke-direct {p0, p1, v4, v5}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 781
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 782
    invoke-virtual {p0, p2}, Lcom/twitter/android/vw;->a(Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/vw;->l:Ljava/lang/String;

    .line 783
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 778
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 784
    iget-object v0, p0, Lcom/twitter/android/vw;->i:Lcom/twitter/android/sn;

    iget-wide v4, p1, Lcom/twitter/model/core/Tweet;->t:J

    invoke-virtual {v0, v4, v5, v2}, Lcom/twitter/android/sn;->a(JLandroid/support/v4/app/FragmentActivity;)V

    .line 787
    :cond_0
    return-void

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/vw;->j:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    goto :goto_0
.end method

.method public d(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;)V
    .locals 8

    .prologue
    .line 808
    iget-object v0, p0, Lcom/twitter/android/vw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 809
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 810
    :goto_0
    if-eqz v3, :cond_0

    .line 811
    const v0, 0x7f13006e

    .line 812
    invoke-virtual {p2, v0}, Lcom/twitter/library/widget/TweetView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "unspecified"

    .line 811
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 814
    const v0, 0x7f130083

    invoke-virtual {p2, v0}, Lcom/twitter/library/widget/TweetView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-nez v0, :cond_2

    const-string/jumbo v0, "unknown"

    .line 816
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 817
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":caret:click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/vw;->e:Lcom/twitter/library/client/bk;

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    .line 819
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 818
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 820
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_0
    return-void

    .line 809
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/vw;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 816
    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
