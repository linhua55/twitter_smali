.class public Lcom/twitter/app/lists/ListTabActivity;
.super Lcom/twitter/android/AbsTabbedPageFragmentActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/b;
.implements Lcom/twitter/app/common/base/m;


# static fields
.field public static final c:[Ljava/lang/String;

.field private static final q:Landroid/net/Uri;

.field private static final r:Landroid/net/Uri;


# instance fields
.field d:J

.field e:J

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:J

.field i:Ljava/lang/String;

.field j:I

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Z

.field n:Lcom/twitter/library/client/l;

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;"
        }
    .end annotation
.end field

.field p:I

.field private s:Lcom/twitter/app/lists/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ev_content"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/app/lists/ListTabActivity;->c:[Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "lists://tweets"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/app/lists/ListTabActivity;->q:Landroid/net/Uri;

    .line 110
    const-string/jumbo v0, "lists://members"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/app/lists/ListTabActivity;->r:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/twitter/android/AbsTabbedPageFragmentActivity;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/app/lists/ListTabActivity;->j:I

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/lists/ListTabActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 189
    const v0, 0x7f1302d5

    invoke-virtual {p0, v0}, Lcom/twitter/app/lists/ListTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/DockLayout;

    .line 190
    const v1, 0x7f1303d8

    invoke-virtual {p0, v1}, Lcom/twitter/app/lists/ListTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 192
    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {v0, v3}, Lcom/twitter/internal/android/widget/DockLayout;->setVisibility(I)V

    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/DockLayout;->setVisibility(I)V

    .line 197
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/app/lists/ListTabActivity;Lcom/twitter/library/service/x;I)Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/twitter/app/lists/ListTabActivity;->b(Lcom/twitter/library/service/x;I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/app/lists/ListTabActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->i()V

    .line 203
    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->o:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/twitter/app/lists/ListTabActivity;->a(Ljava/util/List;)V

    .line 204
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->g()Lcom/twitter/android/AbsPagesAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/android/AbsPagesAdapter;->a(Lcom/twitter/android/b;)V

    .line 205
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "list_members"

    const-string/jumbo v2, "tab"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->a:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/twitter/android/AbsTabbedPageFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 152
    const v0, 0x7f040172

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 153
    return-object p2
.end method

.method public a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 509
    if-nez p1, :cond_1

    .line 510
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 511
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "list:tweets:::impression"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 510
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 512
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    const-string/jumbo v1, "tweets"

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/SearchSuggestionController;->b(Ljava/lang/String;)Lcom/twitter/android/client/SearchSuggestionController;

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    if-ne p1, v4, :cond_0

    .line 514
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 515
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "list:members:::impression"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 514
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 516
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    const-string/jumbo v1, "members"

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/SearchSuggestionController;->b(Ljava/lang/String;)Lcom/twitter/android/client/SearchSuggestionController;

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 495
    if-ne p2, v8, :cond_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 497
    new-instance v1, Lbpk;

    .line 498
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lbpk;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 499
    invoke-virtual {p0, v1, v8}, Lcom/twitter/app/lists/ListTabActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 500
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v8, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "me:lists:list::delete"

    aput-object v3, v1, v2

    .line 501
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 500
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 502
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->finish()V

    .line 504
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/service/x;I)V
    .locals 8

    .prologue
    const/16 v3, 0x194

    const/16 v2, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 337
    invoke-super {p0, p1, p2}, Lcom/twitter/android/AbsTabbedPageFragmentActivity;->a(Lcom/twitter/library/service/x;I)V

    .line 338
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 339
    packed-switch p2, :pswitch_data_0

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 341
    :pswitch_0
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    const v0, 0x7f0a0484

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 349
    :pswitch_1
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 350
    iput v6, p0, Lcom/twitter/app/lists/ListTabActivity;->j:I

    .line 351
    const v0, 0x7f0a048e

    .line 352
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 353
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "list::::subscribe"

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 352
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 357
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->Z()Lcyj;

    move-result-object v1

    invoke-virtual {v1}, Lcyj;->h()V

    .line 358
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 355
    :cond_1
    const v0, 0x7f0a0480

    goto :goto_1

    .line 363
    :pswitch_2
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 364
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitter/app/lists/ListTabActivity;->j:I

    .line 365
    const v0, 0x7f0a0490

    .line 366
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 367
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "list::::unsubscribe"

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 366
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 371
    :goto_2
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->Z()Lcyj;

    move-result-object v1

    invoke-virtual {v1}, Lcyj;->h()V

    .line 372
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 369
    :cond_2
    const v0, 0x7f0a048d

    goto :goto_2

    .line 376
    :pswitch_3
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 377
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->h()V

    goto/16 :goto_0

    .line 382
    :pswitch_4
    invoke-direct {p0, v7}, Lcom/twitter/app/lists/ListTabActivity;->a(Z)V

    move-object v1, p1

    .line 383
    check-cast v1, Lbpq;

    iget-object v1, v1, Lbpq;->a:Lcom/twitter/model/core/cm;

    .line 384
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 385
    iget-object v0, v1, Lcom/twitter/model/core/cm;->n:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/app/lists/ListTabActivity;->e:J

    .line 386
    invoke-virtual {v1}, Lcom/twitter/model/core/cm;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    .line 387
    iget-object v0, v1, Lcom/twitter/model/core/cm;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->k:Ljava/lang/String;

    .line 388
    iget-object v0, v1, Lcom/twitter/model/core/cm;->n:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->f:Ljava/lang/String;

    .line 389
    iget-object v0, v1, Lcom/twitter/model/core/cm;->n:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->g:Ljava/lang/String;

    .line 390
    iget-object v0, v1, Lcom/twitter/model/core/cm;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->i:Ljava/lang/String;

    .line 391
    iget-object v0, v1, Lcom/twitter/model/core/cm;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->l:Ljava/lang/String;

    .line 392
    iget v0, p0, Lcom/twitter/app/lists/ListTabActivity;->p:I

    if-ne v0, v6, :cond_4

    .line 393
    iget-object v1, p0, Lcom/twitter/app/lists/ListTabActivity;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/app/lists/ListTabActivity;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/app/lists/ListTabActivity;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/app/lists/ListTabActivity;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/app/lists/ListTabActivity;->l:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 395
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/library/service/ab;->c:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "list::list::share"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 394
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 397
    :cond_4
    invoke-direct {p0}, Lcom/twitter/app/lists/ListTabActivity;->l()V

    .line 398
    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/app/lists/ListTabActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 402
    :cond_5
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 403
    const v0, 0x7f0a047a

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 405
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->finish()V

    goto/16 :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lcyd;)Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x5

    const/4 v6, 0x1

    .line 246
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    .line 247
    const v1, 0x7f1307e2

    if-ne v0, v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 249
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/app/lists/ListCreateEditActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    const-string/jumbo v2, "list_id"

    iget-wide v4, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 251
    const-string/jumbo v2, "name"

    const-string/jumbo v3, "list_name"

    .line 252
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string/jumbo v2, "description"

    const-string/jumbo v3, "list_description"

    .line 254
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string/jumbo v2, "full_name"

    const-string/jumbo v3, "list_fullname"

    .line 256
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string/jumbo v2, "is_private"

    const-string/jumbo v3, "is_private"

    .line 258
    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 257
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v1, v6}, Lcom/twitter/app/lists/ListTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v6

    .line 302
    :goto_0
    return v0

    .line 261
    :cond_0
    const v1, 0x7f1307e3

    if-ne v0, v1, :cond_1

    .line 262
    new-instance v0, Lcom/twitter/android/widget/ec;

    invoke-direct {v0, v6}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a0485

    .line 263
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0486

    .line 264
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a09bb

    .line 265
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05a7

    .line 266
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 267
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    move v0, v6

    .line 269
    goto :goto_0

    .line 270
    :cond_1
    const v1, 0x7f1307e5

    if-ne v0, v1, :cond_3

    .line 271
    new-instance v1, Lbpp;

    .line 272
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 273
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/app/lists/ListTabActivity;->h:J

    .line 275
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    invoke-direct/range {v1 .. v10}, Lbpp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJJI)V

    .line 278
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/twitter/app/lists/ListTabActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 302
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/twitter/android/AbsTabbedPageFragmentActivity;->a(Lcyd;)Z

    move-result v0

    goto :goto_0

    .line 279
    :cond_3
    const v1, 0x7f1307e4

    if-ne v0, v1, :cond_4

    .line 280
    new-instance v1, Lbpi;

    .line 281
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 282
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/app/lists/ListTabActivity;->h:J

    .line 284
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    invoke-direct/range {v1 .. v10}, Lbpi;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJJI)V

    .line 287
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/twitter/app/lists/ListTabActivity;->b(Lcom/twitter/library/service/x;I)Z

    goto :goto_1

    .line 288
    :cond_4
    const v1, 0x7f1307f6

    if-ne v0, v1, :cond_2

    .line 289
    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->g:Ljava/lang/String;

    .line 290
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    iget-object v1, p0, Lcom/twitter/app/lists/ListTabActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/app/lists/ListTabActivity;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/app/lists/ListTabActivity;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/app/lists/ListTabActivity;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/app/lists/ListTabActivity;->l:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "list::list::share"

    aput-object v2, v1, v7

    .line 294
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_1

    .line 296
    :cond_5
    iput v6, p0, Lcom/twitter/app/lists/ListTabActivity;->p:I

    .line 297
    new-instance v1, Lbpq;

    .line 298
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    iget-object v6, p0, Lcom/twitter/app/lists/ListTabActivity;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/app/lists/ListTabActivity;->k:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lbpq;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0, v1, v10}, Lcom/twitter/app/lists/ListTabActivity;->b(Lcom/twitter/library/service/x;I)Z

    goto/16 :goto_1
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/twitter/android/AbsTabbedPageFragmentActivity;->a(Lcyg;)Z

    .line 223
    const v0, 0x7f140016

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 224
    const v0, 0x7f14002e

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcyg;)I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 231
    invoke-super {p0, p1}, Lcom/twitter/android/AbsTabbedPageFragmentActivity;->b(Lcyg;)I

    .line 232
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 233
    iget-wide v4, p0, Lcom/twitter/app/lists/ListTabActivity;->e:J

    .line 234
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    move v1, v2

    .line 235
    :goto_0
    const v4, 0x7f1307e2

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v4

    invoke-virtual {v4, v1}, Lbjl;->b(Z)Lbjl;

    .line 236
    const v4, 0x7f1307e3

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v4

    invoke-virtual {v4, v1}, Lbjl;->b(Z)Lbjl;

    .line 237
    const v4, 0x7f1307e4

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v5

    if-nez v1, :cond_1

    iget v4, p0, Lcom/twitter/app/lists/ListTabActivity;->j:I

    if-ne v4, v8, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Lbjl;->b(Z)Lbjl;

    .line 238
    const v4, 0x7f1307e5

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v4

    if-nez v1, :cond_2

    iget v1, p0, Lcom/twitter/app/lists/ListTabActivity;->j:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lbjl;->b(Z)Lbjl;

    .line 239
    const v1, 0x7f1307f6

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/app/lists/ListTabActivity;->m:Z

    if-nez v1, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Lbjl;->b(Z)Lbjl;

    .line 240
    return v8

    :cond_0
    move v1, v3

    .line 234
    goto :goto_0

    :cond_1
    move v4, v3

    .line 237
    goto :goto_1

    :cond_2
    move v1, v3

    .line 238
    goto :goto_2

    :cond_3
    move v2, v3

    .line 239
    goto :goto_3
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/twitter/android/AbsTabbedPageFragmentActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 159
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/twitter/app/lists/b;

    invoke-direct {v1, p0, p0}, Lcom/twitter/app/lists/b;-><init>(Lcom/twitter/app/lists/ListTabActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/app/lists/ListTabActivity;->s:Lcom/twitter/app/lists/b;

    .line 163
    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/app/lists/ListTabActivity;->h:J

    .line 164
    const-string/jumbo v1, "creator_full_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/lists/ListTabActivity;->g:Ljava/lang/String;

    .line 165
    const-string/jumbo v1, "is_private"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/lists/ListTabActivity;->m:Z

    .line 166
    const-string/jumbo v1, "screen_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/lists/ListTabActivity;->f:Ljava/lang/String;

    .line 167
    const-string/jumbo v1, "slug"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/lists/ListTabActivity;->k:Ljava/lang/String;

    .line 169
    const-string/jumbo v1, "creator_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/app/lists/ListTabActivity;->e:J

    .line 170
    const-string/jumbo v1, "list_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    .line 172
    iget-wide v2, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/twitter/app/lists/ListTabActivity;->e:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/twitter/app/lists/ListTabActivity;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/app/lists/ListTabActivity;->k:Ljava/lang/String;

    .line 173
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    new-instance v1, Lbpq;

    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    iget-object v6, p0, Lcom/twitter/app/lists/ListTabActivity;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/app/lists/ListTabActivity;->k:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lbpq;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/twitter/app/lists/ListTabActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 180
    :goto_0
    const-string/jumbo v1, "list_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->i:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/app/lists/ListTabActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/SearchSuggestionController;->a(Ljava/lang/String;)Lcom/twitter/android/client/SearchSuggestionController;

    .line 186
    return-void

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/twitter/app/lists/ListTabActivity;->l()V

    goto :goto_0
.end method

.method protected d()Lcom/twitter/library/client/l;
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->n:Lcom/twitter/library/client/l;

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/twitter/library/client/l;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    const-string/jumbo v0, "lists_prefs"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    iput-object v1, p0, Lcom/twitter/app/lists/ListTabActivity;->n:Lcom/twitter/library/client/l;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->n:Lcom/twitter/library/client/l;

    return-object v0
.end method

.method h()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 419
    sget-object v0, Lcom/twitter/library/provider/cz;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v4, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    .line 420
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ownerId"

    .line 422
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 421
    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 424
    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->s:Lcom/twitter/app/lists/b;

    const/4 v1, 0x2

    sget-object v4, Lcom/twitter/app/lists/ListTabActivity;->c:[Ljava/lang/String;

    const-string/jumbo v5, "list_mapping_user_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/twitter/app/lists/ListTabActivity;->h:J

    .line 427
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v7, v2

    .line 424
    invoke-virtual/range {v0 .. v7}, Lcom/twitter/app/lists/b;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method i()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 432
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 433
    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 434
    iget-wide v8, p0, Lcom/twitter/app/lists/ListTabActivity;->h:J

    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-nez v0, :cond_2

    move v3, v1

    .line 437
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/list/y;->a(Landroid/content/Intent;)Lcom/twitter/app/common/list/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/app/lists/ListTabActivity;->a(Lcom/twitter/app/common/list/x;)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    iget-wide v8, p0, Lcom/twitter/app/lists/ListTabActivity;->e:J

    .line 438
    invoke-virtual {v0, v8, v9}, Lcom/twitter/app/common/list/y;->c(J)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const v4, 0x7f0a0479

    .line 439
    invoke-virtual {v0, v4}, Lcom/twitter/app/common/list/y;->b(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    if-eqz v3, :cond_3

    const v4, 0x7f0a05ee

    .line 440
    :goto_1
    invoke-virtual {v0, v4}, Lcom/twitter/app/common/list/y;->c(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const v4, 0x7f130078

    .line 442
    invoke-virtual {v0, v4}, Lcom/twitter/app/common/list/y;->d(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v4, "type"

    const/16 v6, 0x9

    .line 443
    invoke-virtual {v0, v4, v6}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v6, "timeline_tag"

    iget-wide v8, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_4

    move-object v4, v2

    .line 445
    :goto_2
    invoke-virtual {v0, v6, v4}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 447
    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v4

    .line 450
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/users/aa;->a(Landroid/content/Intent;)Lcom/twitter/app/users/aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/app/lists/ListTabActivity;->a(Lcom/twitter/app/common/list/x;)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    iget-wide v8, p0, Lcom/twitter/app/lists/ListTabActivity;->e:J

    .line 451
    invoke-virtual {v0, v8, v9}, Lcom/twitter/app/users/aa;->c(J)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    const v6, 0x7f0a0477

    .line 452
    invoke-virtual {v0, v6}, Lcom/twitter/app/users/aa;->b(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    if-eqz v3, :cond_5

    const v3, 0x7f0a05ed

    .line 453
    :goto_3
    invoke-virtual {v0, v3}, Lcom/twitter/app/users/aa;->c(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    const v3, 0x7f13008a

    .line 455
    invoke-virtual {v0, v3}, Lcom/twitter/app/users/aa;->d(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    const-string/jumbo v3, "type"

    const/4 v6, 0x4

    .line 456
    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/twitter/app/users/aa;->g(I)Lcom/twitter/app/users/z;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    iget-wide v8, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    .line 458
    invoke-virtual {v0, v8, v9}, Lcom/twitter/app/users/aa;->a(J)Lcom/twitter/app/users/z;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    const-string/jumbo v3, "follow"

    .line 459
    invoke-virtual {v5, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/twitter/app/users/aa;->d(Z)Lcom/twitter/app/users/z;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    .line 460
    invoke-virtual {v0}, Lcom/twitter/app/users/aa;->d()Lcom/twitter/app/users/y;

    move-result-object v0

    .line 462
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/twitter/library/client/ax;

    new-instance v5, Lcom/twitter/library/client/ay;

    sget-object v6, Lcom/twitter/app/lists/ListTabActivity;->q:Landroid/net/Uri;

    const-class v8, Lcom/twitter/android/ListTimelineFragment;

    invoke-direct {v5, v6, v8}, Lcom/twitter/library/client/ay;-><init>(Landroid/net/Uri;Ljava/lang/Class;)V

    .line 464
    invoke-virtual {v5, v4}, Lcom/twitter/library/client/ay;->a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;

    move-result-object v4

    const v5, 0x7f0a06a9

    .line 465
    invoke-virtual {p0, v5}, Lcom/twitter/app/lists/ListTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twitter/library/client/ay;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/client/ay;

    move-result-object v4

    .line 466
    invoke-virtual {v4}, Lcom/twitter/library/client/ay;->a()Lcom/twitter/library/client/ax;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Lcom/twitter/library/client/ay;

    sget-object v5, Lcom/twitter/app/lists/ListTabActivity;->r:Landroid/net/Uri;

    const-class v6, Lcom/twitter/app/users/UsersFragment;

    invoke-direct {v4, v5, v6}, Lcom/twitter/library/client/ay;-><init>(Landroid/net/Uri;Ljava/lang/Class;)V

    const v5, 0x7f0a08b7

    .line 468
    invoke-virtual {p0, v5}, Lcom/twitter/app/lists/ListTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twitter/library/client/ay;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/client/ay;

    move-result-object v4

    .line 469
    invoke-virtual {v4, v0}, Lcom/twitter/library/client/ay;->a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lcom/twitter/library/client/ay;->a()Lcom/twitter/library/client/ax;

    move-result-object v0

    aput-object v0, v3, v1

    .line 462
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->o:Ljava/util/List;

    .line 473
    :cond_0
    iget-wide v4, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    cmp-long v0, v4, v12

    if-lez v0, :cond_6

    iget-wide v4, p0, Lcom/twitter/app/lists/ListTabActivity;->h:J

    cmp-long v0, v4, v12

    if-lez v0, :cond_6

    .line 475
    iget-object v0, p0, Lcom/twitter/app/lists/ListTabActivity;->s:Lcom/twitter/app/lists/b;

    sget-object v3, Lcom/twitter/library/provider/cz;->b:Landroid/net/Uri;

    .line 476
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    .line 477
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "ownerId"

    .line 479
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v5

    .line 480
    invoke-virtual {v5}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    .line 479
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 478
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 481
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/twitter/app/lists/ListTabActivity;->c:[Ljava/lang/String;

    const-string/jumbo v5, "list_mapping_user_id=?"

    new-array v6, v1, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/twitter/app/lists/ListTabActivity;->h:J

    .line 484
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v7, v2

    .line 475
    invoke-virtual/range {v0 .. v7}, Lcom/twitter/app/lists/b;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_1
    :goto_4
    return-void

    :cond_2
    move v3, v7

    .line 434
    goto/16 :goto_0

    .line 439
    :cond_3
    const v4, 0x7f0a0478

    goto/16 :goto_1

    .line 443
    :cond_4
    iget-wide v8, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    .line 446
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 452
    :cond_5
    const v3, 0x7f0a0476

    goto/16 :goto_3

    .line 486
    :cond_6
    iget-wide v2, p0, Lcom/twitter/app/lists/ListTabActivity;->d:J

    cmp-long v0, v2, v12

    if-lez v0, :cond_7

    iget-wide v2, p0, Lcom/twitter/app/lists/ListTabActivity;->e:J

    cmp-long v0, v2, v12

    if-gtz v0, :cond_1

    .line 487
    :cond_7
    const v0, 0x7f0a048b

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 307
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/AbsTabbedPageFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 308
    if-nez p2, :cond_0

    .line 332
    :goto_0
    return-void

    .line 312
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 315
    const-string/jumbo v1, "name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    const-string/jumbo v2, "list_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string/jumbo v2, "list_description"

    const-string/jumbo v3, "description"

    .line 319
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string/jumbo v2, "list_fullname"

    const-string/jumbo v3, "full_name"

    .line 321
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string/jumbo v2, "is_private"

    const-string/jumbo v3, "is_private"

    const/4 v4, 0x0

    .line 323
    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 322
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v1}, Lcom/twitter/app/lists/ListTabActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
