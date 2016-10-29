.class public Lcom/twitter/android/MediaActionBarFragment;
.super Lcom/twitter/app/common/base/BaseFragment;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/nq;


# instance fields
.field private a:Lcom/twitter/android/widget/EngagementActionBar;

.field private b:Lcom/twitter/android/widget/ToggleImageButton;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/twitter/android/widget/ToggleImageButton;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private g:Lcom/twitter/library/client/bk;

.field private h:Lcom/twitter/model/core/Tweet;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/twitter/library/scribe/TwitterScribeItem;

.field private m:Landroid/content/Context;

.field private n:Z

.field private o:Lcom/twitter/library/client/bd;

.field private p:Lcav;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/twitter/app/common/base/BaseFragment;-><init>()V

    return-void
.end method

.method protected static a(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/model/core/Tweet;I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 408
    packed-switch p2, :pswitch_data_0

    .line 451
    :goto_0
    return-object v0

    .line 410
    :pswitch_0
    new-instance v1, Lcom/twitter/android/jm;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/jm;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/model/core/Tweet;)V

    .line 443
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a08fe

    .line 444
    invoke-virtual {p0, v3}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a08fd

    .line 445
    invoke-virtual {p0, v3}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a09bb

    .line 446
    invoke-virtual {p0, v3}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a05a7

    .line 447
    invoke-virtual {p0, v2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/twitter/app/common/base/TwitterFragmentActivity;ILcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/android/MediaActionBarFragment;
    .locals 3

    .prologue
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/MediaActionBarFragment;

    .line 132
    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/twitter/android/MediaActionBarFragment;

    invoke-direct {v0}, Lcom/twitter/android/MediaActionBarFragment;-><init>()V

    .line 134
    new-instance v1, Lcom/twitter/app/common/base/g;

    invoke-direct {v1}, Lcom/twitter/app/common/base/g;-><init>()V

    const-string/jumbo v2, "association"

    .line 135
    invoke-virtual {v1, v2, p2}, Lcom/twitter/app/common/base/g;->a(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/twitter/app/common/base/g;

    move-result-object v1

    const-string/jumbo v2, "page"

    .line 136
    invoke-virtual {v1, v2, p3}, Lcom/twitter/app/common/base/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v1

    const-string/jumbo v2, "section"

    .line 137
    invoke-virtual {v1, v2, p4}, Lcom/twitter/app/common/base/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v1

    const-string/jumbo v2, "component"

    .line 138
    invoke-virtual {v1, v2, p5}, Lcom/twitter/app/common/base/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/twitter/app/common/base/g;->c()Lcom/twitter/app/common/base/f;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 140
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 141
    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 144
    :cond_0
    return-object v0
.end method

.method private a(ILandroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 488
    sparse-switch p1, :sswitch_data_0

    .line 513
    :goto_0
    return-void

    .line 490
    :sswitch_0
    const/4 v0, 0x3

    .line 512
    :goto_1
    invoke-virtual {p3}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 494
    :sswitch_1
    const/4 v0, 0x1

    .line 495
    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->b:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v1}, Lcom/twitter/android/widget/ToggleImageButton;->a()V

    goto :goto_1

    .line 499
    :sswitch_2
    const/4 v0, 0x2

    .line 500
    goto :goto_1

    .line 503
    :sswitch_3
    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Z)V

    .line 504
    const-string/jumbo v0, "share"

    invoke-direct {p0, v0, p3}, Lcom/twitter/android/MediaActionBarFragment;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    goto :goto_0

    .line 488
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f13002d -> :sswitch_1
        0x7f13005f -> :sswitch_0
        0x7f130061 -> :sswitch_2
        0x7f130139 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic a(Lcom/twitter/android/MediaActionBarFragment;Lcom/twitter/model/core/Tweet;ZI)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/model/core/Tweet;ZI)V

    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Landroid/view/View;)V
    .locals 8

    .prologue
    .line 340
    iget-boolean v0, p1, Lcom/twitter/model/core/Tweet;->a:Z

    if-eqz v0, :cond_1

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/model/core/Tweet;Z)V

    .line 342
    new-instance v1, Lbrt;

    iget-object v2, p0, Lcom/twitter/android/MediaActionBarFragment;->m:Landroid/content/Context;

    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->g:Lcom/twitter/library/client/bk;

    .line 343
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p1, Lcom/twitter/model/core/Tweet;->p:J

    iget-wide v6, p1, Lcom/twitter/model/core/Tweet;->q:J

    invoke-direct/range {v1 .. v7}, Lbrt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 345
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    .line 344
    invoke-virtual {v1, v0}, Lbrt;->a(Lcss;)Lbrt;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->o:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/android/jk;

    iget-object v3, p0, Lcom/twitter/android/MediaActionBarFragment;->m:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Lcom/twitter/android/jk;-><init>(Lcom/twitter/android/MediaActionBarFragment;Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 356
    const-string/jumbo v0, "unfavorite"

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/MediaActionBarFragment;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    .line 357
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->p:Lcav;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->p:Lcav;

    invoke-virtual {v0, p2}, Lcav;->c(Landroid/view/View;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/model/core/Tweet;Z)V

    .line 362
    new-instance v1, Lbrp;

    iget-object v2, p0, Lcom/twitter/android/MediaActionBarFragment;->m:Landroid/content/Context;

    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->g:Lcom/twitter/library/client/bk;

    .line 363
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p1, Lcom/twitter/model/core/Tweet;->p:J

    iget-wide v6, p1, Lcom/twitter/model/core/Tweet;->q:J

    invoke-direct/range {v1 .. v7}, Lbrp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 365
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbrp;->a(Lcss;)Lbrp;

    move-result-object v0

    .line 366
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrp;->a(Ljava/lang/Boolean;)Lbrp;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->o:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/android/jl;

    invoke-direct {v2, p0, p1}, Lcom/twitter/android/jl;-><init>(Lcom/twitter/android/MediaActionBarFragment;Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 377
    const-string/jumbo v0, "favorite"

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/MediaActionBarFragment;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    .line 378
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->p:Lcav;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->p:Lcav;

    invoke-virtual {v0, p2}, Lcav;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/core/Tweet;ZI)V
    .locals 0

    .prologue
    .line 393
    iput-boolean p2, p1, Lcom/twitter/model/core/Tweet;->a:Z

    .line 394
    iput p3, p1, Lcom/twitter/model/core/Tweet;->k:I

    .line 395
    invoke-virtual {p0, p1}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/model/core/Tweet;)V

    .line 396
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 474
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->i:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->j:Ljava/lang/String;

    aput-object v1, v0, v6

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/twitter/android/MediaActionBarFragment;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "tweet"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    .line 475
    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/MediaActionBarFragment;->g:Lcom/twitter/library/client/bk;

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 478
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lcom/twitter/android/MediaActionBarFragment;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/MediaActionBarFragment;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v4, 0x0

    .line 479
    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v5

    .line 480
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 481
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->l:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 482
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 477
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 483
    return-void
.end method

.method static synthetic a(ZZLandroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/twitter/android/MediaActionBarFragment;->b(ZZLandroid/content/Context;Z)V

    return-void
.end method

.method private b(Lcom/twitter/model/core/Tweet;)V
    .locals 8

    .prologue
    const v1, 0x7f120170

    .line 319
    invoke-virtual {p0}, Lcom/twitter/android/MediaActionBarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 320
    iget v0, p1, Lcom/twitter/model/core/Tweet;->k:I

    .line 321
    iget v3, p1, Lcom/twitter/model/core/Tweet;->h:I

    .line 323
    iget-object v4, p0, Lcom/twitter/android/MediaActionBarFragment;->c:Landroid/widget/TextView;

    if-lez v0, :cond_1

    int-to-long v6, v0

    .line 324
    invoke-static {v2, v6, v7}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v4, p0, Lcom/twitter/android/MediaActionBarFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->h:Lcom/twitter/model/core/Tweet;

    iget-boolean v0, v0, Lcom/twitter/model/core/Tweet;->a:Z

    if-eqz v0, :cond_2

    const v0, 0x7f1200d7

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    iget-object v4, p0, Lcom/twitter/android/MediaActionBarFragment;->e:Landroid/widget/TextView;

    if-lez v3, :cond_3

    int-to-long v6, v3

    .line 328
    invoke-static {v2, v6, v7}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->e:Landroid/widget/TextView;

    iget-boolean v3, p1, Lcom/twitter/model/core/Tweet;->c:Z

    if-eqz v3, :cond_0

    const v1, 0x7f1200d4

    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    return-void

    .line 324
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    move v0, v1

    .line 325
    goto :goto_1

    .line 328
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method private static b(ZZLandroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 458
    if-nez p0, :cond_0

    if-nez p3, :cond_0

    .line 459
    if-eqz p1, :cond_1

    const v0, 0x7f0a08ff

    .line 461
    :goto_0
    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 463
    :cond_0
    return-void

    .line 459
    :cond_1
    const v0, 0x7f0a0908

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 164
    const v0, 0x7f04019b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(JLcom/twitter/model/core/Tweet;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/twitter/android/MediaActionBarFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    if-eqz p4, :cond_1

    .line 234
    const-string/jumbo v0, "unretweet"

    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->h:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/MediaActionBarFragment;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    .line 235
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->d:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 236
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->h:Lcom/twitter/model/core/Tweet;

    iput-boolean v2, v0, Lcom/twitter/model/core/Tweet;->c:Z

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string/jumbo v0, "retweet"

    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->h:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/MediaActionBarFragment;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    .line 239
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->d:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 240
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->h:Lcom/twitter/model/core/Tweet;

    iput-boolean v3, v0, Lcom/twitter/model/core/Tweet;->c:Z

    goto :goto_0
.end method

.method public a(JZZZ)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->m:Landroid/content/Context;

    invoke-static {p3, p4, v0, p5}, Lcom/twitter/android/MediaActionBarFragment;->b(ZZLandroid/content/Context;Z)V

    .line 249
    return-void
.end method

.method public a(Lcav;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/twitter/android/MediaActionBarFragment;->p:Lcav;

    .line 517
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 304
    iput-object p1, p0, Lcom/twitter/android/MediaActionBarFragment;->h:Lcom/twitter/model/core/Tweet;

    .line 305
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->a:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/EngagementActionBar;->setTweet(Lcom/twitter/model/core/Tweet;)V

    .line 306
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->a:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/EngagementActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    invoke-direct {p0, p1}, Lcom/twitter/android/MediaActionBarFragment;->b(Lcom/twitter/model/core/Tweet;)V

    .line 308
    return-void
.end method

.method a(Lcom/twitter/model/core/Tweet;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    if-eqz p2, :cond_0

    .line 386
    const/4 v0, 0x1

    iget v1, p1, Lcom/twitter/model/core/Tweet;->k:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/model/core/Tweet;ZI)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget v0, p1, Lcom/twitter/model/core/Tweet;->k:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/model/core/Tweet;ZI)V

    goto :goto_0
.end method

.method public b(JLcom/twitter/model/core/Tweet;Z)V
    .locals 2

    .prologue
    .line 254
    const-string/jumbo v0, "quote"

    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->h:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/MediaActionBarFragment;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    .line 255
    return-void
.end method

.method public c(JLcom/twitter/model/core/Tweet;Z)V
    .locals 4

    .prologue
    .line 260
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->g:Lcom/twitter/library/client/bk;

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/MediaActionBarFragment;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/android/MediaActionBarFragment;->j:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "retweet_dialog::dismiss"

    aput-object v3, v1, v2

    .line 261
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 260
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 262
    return-void
.end method

.method public d(JLcom/twitter/model/core/Tweet;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 267
    iget-boolean v0, p0, Lcom/twitter/android/MediaActionBarFragment;->n:Z

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->g:Lcom/twitter/library/client/bk;

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/MediaActionBarFragment;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/twitter/android/MediaActionBarFragment;->j:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "retweet_dialog::impression"

    aput-object v3, v1, v2

    .line 269
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 268
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 270
    iput-boolean v4, p0, Lcom/twitter/android/MediaActionBarFragment;->n:Z

    .line 272
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 200
    iget-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->h:Lcom/twitter/model/core/Tweet;

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 202
    invoke-virtual {p0}, Lcom/twitter/android/MediaActionBarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/base/TwitterFragmentActivity;

    .line 203
    iget-object v3, p0, Lcom/twitter/android/MediaActionBarFragment;->g:Lcom/twitter/library/client/bk;

    .line 204
    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 205
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    invoke-direct {p0, v2, v0, v1}, Lcom/twitter/android/MediaActionBarFragment;->a(ILandroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/Tweet;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const v4, 0x7f13005f

    if-ne v2, v4, :cond_2

    .line 209
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v1}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/composer/ax;

    move-result-object v2

    .line 211
    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v2

    .line 212
    invoke-virtual {v2, v0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 209
    invoke-virtual {v0, v2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    const-string/jumbo v0, "reply"

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/MediaActionBarFragment;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    goto :goto_0

    .line 214
    :cond_2
    const v3, 0x7f13002d

    if-ne v2, v3, :cond_3

    .line 215
    invoke-direct {p0, v1, p1}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/model/core/Tweet;Landroid/view/View;)V

    goto :goto_0

    .line 216
    :cond_3
    const v3, 0x7f130061

    if-ne v2, v3, :cond_4

    .line 217
    new-instance v2, Lcom/twitter/android/np;

    invoke-direct {v2, v0, v1}, Lcom/twitter/android/np;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/Tweet;)V

    .line 218
    invoke-virtual {v2, p0}, Lcom/twitter/android/np;->a(Lcom/twitter/android/nq;)Lcom/twitter/android/np;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p0}, Lcom/twitter/android/np;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/android/np;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/twitter/android/np;->a()Lcom/twitter/android/nm;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/twitter/android/nm;->a()V

    goto :goto_0

    .line 222
    :cond_4
    const v3, 0x7f130139

    if-ne v2, v3, :cond_0

    .line 223
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Z)V

    .line 224
    const-string/jumbo v0, "share"

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/MediaActionBarFragment;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/twitter/android/MediaActionBarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->m:Landroid/content/Context;

    .line 108
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/MediaActionBarFragment;->g:Lcom/twitter/library/client/bk;

    .line 109
    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->o:Lcom/twitter/library/client/bd;

    .line 111
    invoke-virtual {p0}, Lcom/twitter/android/MediaActionBarFragment;->q()Lcom/twitter/app/common/base/f;

    move-result-object v1

    .line 112
    const-string/jumbo v0, "page"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/base/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->i:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "section"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/base/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->j:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "component"

    .line 115
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/base/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->k:Ljava/lang/String;

    .line 116
    const-string/jumbo v0, "association"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/base/f;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 117
    const-string/jumbo v0, "item"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/base/f;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    iput-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->l:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const-string/jumbo v0, "dialog_impression_scribed"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/MediaActionBarFragment;->n:Z

    .line 123
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 288
    const-string/jumbo v0, "dialog_impression_scribed"

    iget-boolean v1, p0, Lcom/twitter/android/MediaActionBarFragment;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 179
    const v0, 0x7f130134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/EngagementActionBar;

    iput-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->a:Lcom/twitter/android/widget/EngagementActionBar;

    .line 181
    const v0, 0x7f13002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ToggleImageButton;

    iput-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->b:Lcom/twitter/android/widget/ToggleImageButton;

    .line 182
    const v0, 0x7f13002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->c:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f130061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ToggleImageButton;

    iput-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->d:Lcom/twitter/android/widget/ToggleImageButton;

    .line 185
    const v0, 0x7f130062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->e:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->h:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/twitter/android/MediaActionBarFragment;->h:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/model/core/Tweet;)V

    .line 190
    :cond_0
    return-void
.end method
