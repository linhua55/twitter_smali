.class public Lcom/twitter/android/ProfileTimelinesFragment;
.super Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/profiles/ap;
.implements Lcom/twitter/android/util/ay;


# instance fields
.field private A:Lcom/twitter/ui/widget/TwitterButton;

.field private o:Z

.field private p:Lcom/twitter/android/widget/br;

.field private q:Lcom/twitter/android/profiles/aj;

.field private r:Lcom/twitter/android/profiles/w;

.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:J

.field private y:Lcom/twitter/android/widget/br;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->s:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->t:Ljava/util/List;

    return-void
.end method

.method private Q()V
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->v:Z

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->u:Z

    .line 408
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    invoke-interface {v0}, Lcom/twitter/android/profiles/aj;->n()V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->an()V

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 481
    const/4 v0, 0x4

    .line 482
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 483
    iget-boolean v3, p0, Lcom/twitter/android/ProfileTimelinesFragment;->o:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/twitter/android/ProfileTimelinesFragment;->p:Lcom/twitter/android/widget/br;

    if-eqz v3, :cond_1

    .line 484
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 487
    :cond_0
    invoke-static {p1}, Lcom/twitter/android/vz;->d(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    .line 492
    :goto_0
    if-eqz v3, :cond_1

    .line 493
    const/16 v0, 0xd

    .line 497
    :cond_1
    iget-wide v6, p0, Lcom/twitter/android/ProfileTimelinesFragment;->x:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 500
    :cond_2
    iget-wide v6, p0, Lcom/twitter/android/ProfileTimelinesFragment;->x:J

    invoke-static {p1, v6, v7}, Lcom/twitter/android/vz;->a(Landroid/database/Cursor;J)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 503
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-lt v3, v0, :cond_2

    .line 504
    :cond_4
    if-eqz v1, :cond_5

    .line 507
    add-int/lit8 v0, v0, 0x1

    .line 510
    :cond_5
    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 513
    iget-wide v2, p0, Lcom/twitter/android/ProfileTimelinesFragment;->x:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_6

    .line 514
    add-int/lit8 v0, v0, -0x1

    .line 516
    :cond_6
    iget-object v1, p0, Lcom/twitter/android/ProfileTimelinesFragment;->y:Lcom/twitter/android/widget/br;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/br;->a(I)V

    .line 517
    return-void

    .line 491
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0
.end method

.method private an()V
    .locals 4

    .prologue
    .line 415
    iget-wide v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->aa:J

    .line 416
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aX()Layj;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/metrics/d;->a(JLayj;Z)Lcom/twitter/android/metrics/d;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 419
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/metrics/d;->a(I)V

    .line 422
    :cond_0
    return-void
.end method

.method private bg()V
    .locals 2

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->o:Z

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/twitter/android/profilecompletionmodule/u;->a(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->w:Z

    .line 427
    iget-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->w:Z

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->z:Landroid/widget/TextView;

    const v1, 0x7f0a0385

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 429
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->A:Lcom/twitter/ui/widget/TwitterButton;

    const v1, 0x7f0a0384

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setText(I)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->z:Landroid/widget/TextView;

    const v1, 0x7f0a0386

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 432
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->A:Lcom/twitter/ui/widget/TwitterButton;

    const v1, 0x7f0a0383

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected C()V
    .locals 4

    .prologue
    .line 159
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->C()V

    .line 160
    iget-wide v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->aa:J

    .line 161
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aX()Layj;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/metrics/d;->a(JLayj;Z)Lcom/twitter/android/metrics/d;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/metrics/d;->a(I)V

    .line 167
    :cond_0
    return-void
.end method

.method protected D()Z
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/twitter/library/av/aj;->a()Z

    move-result v0

    return v0
.end method

.method protected E()Z
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/twitter/android/revenue/z;->a()Z

    move-result v0

    return v0
.end method

.method protected O()I
    .locals 1

    .prologue
    .line 477
    const/16 v0, 0x14

    return v0
.end method

.method public P()Lcom/twitter/android/timeline/am;
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/timeline/am;->a(Landroid/os/Bundle;)Lcom/twitter/android/timeline/am;

    move-result-object v0

    return-object v0
.end method

.method public a(J)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 323
    iget-object v1, p0, Lcom/twitter/android/ProfileTimelinesFragment;->p:Lcom/twitter/android/widget/br;

    invoke-virtual {v1}, Lcom/twitter/android/widget/br;->getCount()I

    move-result v2

    move v1, v0

    .line 324
    :goto_0
    if-ge v1, v2, :cond_0

    .line 325
    iget-object v3, p0, Lcom/twitter/android/ProfileTimelinesFragment;->p:Lcom/twitter/android/widget/br;

    invoke-virtual {v3, v1}, Lcom/twitter/android/widget/br;->getItemId(I)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, v1

    .line 329
    :cond_0
    return v0

    .line 324
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->o:Z

    if-eqz v0, :cond_0

    .line 125
    const v0, 0x7f13002b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->z:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f130351

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->A:Lcom/twitter/ui/widget/TwitterButton;

    .line 128
    invoke-direct {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->bg()V

    .line 129
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->A:Lcom/twitter/ui/widget/TwitterButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->A:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_0
    return-object v1
.end method

.method protected a(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/android/vw;Z)Lcom/twitter/android/vz;
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3, v0}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->a(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/android/vw;ZZ)Lcom/twitter/android/rb;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->a()V

    .line 286
    iget-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    invoke-interface {v0}, Lcom/twitter/android/profiles/aj;->n()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->r:Lcom/twitter/android/profiles/w;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->r:Lcom/twitter/android/profiles/w;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/w;->b()V

    .line 292
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 367
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    .line 368
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->s:Ljava/util/Set;

    iget-wide v2, p2, Lcom/twitter/model/core/Tweet;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    const/4 v2, 0x0

    .line 369
    invoke-static {v0, p2, v1, v2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 371
    const-string/jumbo v1, "position"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 372
    iget-object v1, p0, Lcom/twitter/android/ProfileTimelinesFragment;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->a:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 378
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 71
    check-cast p2, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/ProfileTimelinesFragment;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 350
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->p:Lcom/twitter/android/widget/br;

    .line 351
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/br;->b(I)Lcom/twitter/util/collection/ac;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {v1}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 354
    invoke-virtual {v1}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 355
    iget-object v1, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    invoke-interface {v1}, Lcom/twitter/android/profiles/aj;->b()Lcom/twitter/android/mq;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/twitter/android/profiles/aj;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/ProfileTimelinesFragment;->r:Lcom/twitter/android/profiles/w;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/ProfileTimelinesFragment;->r:Lcom/twitter/android/profiles/w;

    invoke-virtual {v1}, Lcom/twitter/android/profiles/w;->a()Lcom/twitter/android/vz;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 358
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->r:Lcom/twitter/android/profiles/w;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/profiles/w;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 360
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected a(Lcmf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->a(Lcmf;)V

    .line 389
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->g()Lcom/twitter/android/timeline/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/timeline/br;->a()Landroid/database/Cursor;

    move-result-object v2

    .line 390
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 391
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->getCount()I

    move-result v3

    .line 392
    instance-of v0, v1, Lcom/twitter/android/mr;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 393
    check-cast v0, Lcom/twitter/android/mr;

    invoke-interface {v0, v3}, Lcom/twitter/android/mr;->c(I)V

    .line 395
    :cond_0
    if-nez v3, :cond_1

    .line 396
    invoke-direct {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->bg()V

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->Q()V

    .line 399
    if-eqz v2, :cond_2

    .line 400
    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileTimelinesFragment;->a(Landroid/database/Cursor;)V

    .line 402
    :cond_2
    return-void
.end method

.method public a(Lcom/twitter/android/profiles/ao;)V
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/model/core/TwitterUser;->M:J

    .line 172
    iget-wide v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->x:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    .line 175
    instance-of v1, v0, Lcom/twitter/android/rb;

    if-eqz v1, :cond_1

    .line 176
    iput-wide v2, p0, Lcom/twitter/android/ProfileTimelinesFragment;->x:J

    .line 177
    check-cast v0, Lcom/twitter/android/rb;

    iget-wide v2, p0, Lcom/twitter/android/ProfileTimelinesFragment;->x:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/rb;->a(Ljava/util/Set;)V

    .line 178
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 179
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->g()Lcom/twitter/android/timeline/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/timeline/br;->a()Landroid/database/Cursor;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileTimelinesFragment;->a(Landroid/database/Cursor;)V

    .line 183
    :cond_0
    iget v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->N:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileTimelinesFragment;->d(I)V

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 186
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->o:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->bg()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/util/au;)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 138
    iget-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->o:Z

    if-eqz v0, :cond_0

    .line 139
    const v0, 0x7f04035d

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->d(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    const v1, 0x7f0402aa

    .line 140
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aj;->f(I)Lcom/twitter/app/common/list/aj;

    .line 142
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->Q()V

    .line 442
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 443
    return-void
.end method

.method protected a(Lcom/twitter/refresh/widget/a;Z)V
    .locals 6

    .prologue
    .line 296
    iget-wide v0, p1, Lcom/twitter/refresh/widget/a;->c:J

    .line 297
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    .line 299
    iget v3, p1, Lcom/twitter/refresh/widget/a;->b:I

    iget-object v4, v2, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    .line 303
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/twitter/android/ProfileTimelinesFragment;->p:Lcom/twitter/android/widget/br;

    .line 304
    invoke-virtual {v4, v3}, Lcom/twitter/android/widget/br;->getItemId(I)J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-nez v3, :cond_2

    .line 305
    iget v0, p1, Lcom/twitter/refresh/widget/a;->b:I

    .line 312
    :goto_0
    iget-object v1, v2, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_1

    .line 313
    :cond_0
    iget v1, p1, Lcom/twitter/refresh/widget/a;->d:I

    invoke-virtual {v2, v0, v1}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 316
    :cond_1
    return-void

    .line 307
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileTimelinesFragment;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method protected ae_()V
    .locals 18

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/twitter/android/ProfileTimelinesFragment;->aa:J

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aX()Layj;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/twitter/android/metrics/d;->a(JLayj;Z)Lcom/twitter/android/metrics/d;

    move-result-object v7

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/ProfileTimelinesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aP()Lcvt;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/twitter/android/vz;

    .line 227
    instance-of v2, v12, Lcom/twitter/android/profiles/aq;

    if-eqz v2, :cond_3

    move-object v2, v12

    .line 228
    check-cast v2, Lcom/twitter/android/profiles/aq;

    invoke-interface {v2}, Lcom/twitter/android/profiles/aq;->h()Lcom/twitter/android/profiles/ao;

    move-result-object v5

    .line 229
    invoke-virtual {v5}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->M:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/twitter/android/ProfileTimelinesFragment;->x:J

    .line 230
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/twitter/android/rb;

    if-eqz v2, :cond_0

    move-object/from16 v2, v17

    .line 231
    check-cast v2, Lcom/twitter/android/rb;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/twitter/android/ProfileTimelinesFragment;->x:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/rb;->a(Ljava/util/Set;)V

    .line 234
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    if-eqz v2, :cond_1

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    invoke-interface {v2}, Lcom/twitter/android/profiles/aj;->p()V

    .line 238
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v6

    .line 239
    new-instance v2, Lcom/twitter/android/profiles/aw;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/ProfileTimelinesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v4

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/twitter/android/profiles/aw;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/bk;Lcom/twitter/android/profiles/ao;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/metrics/d;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    .line 241
    new-instance v7, Lcom/twitter/android/profiles/w;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/ProfileTimelinesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v10

    .line 242
    invoke-static {v12}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v11

    .line 243
    invoke-static {v12}, Lcom/twitter/android/client/w;->a(Landroid/content/Context;)Lcom/twitter/android/client/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/w;->a()Z

    move-result v13

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/ProfileTimelinesFragment;->w()Lcom/twitter/android/sf;

    move-result-object v15

    move-object v8, v12

    move-object v12, v5

    move-object v14, v6

    move-object/from16 v16, p0

    invoke-direct/range {v7 .. v16}, Lcom/twitter/android/profiles/w;-><init>(Landroid/app/Activity;Lcom/twitter/library/client/bk;Landroid/support/v4/app/LoaderManager;Lcom/twitter/library/client/bd;Lcom/twitter/android/profiles/ao;ZLcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/vw;Lcom/twitter/android/kn;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/twitter/android/ProfileTimelinesFragment;->r:Lcom/twitter/android/profiles/w;

    .line 246
    new-instance v2, Lcom/twitter/android/widget/em;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    .line 247
    invoke-interface {v3}, Lcom/twitter/android/profiles/aj;->b()Lcom/twitter/android/mq;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v3, v4}, Lcom/twitter/android/widget/em;-><init>(Landroid/widget/BaseAdapter;Landroid/widget/BaseAdapter;I)V

    const/4 v3, 0x1

    .line 248
    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/em;->a(Z)Lcom/twitter/android/widget/bt;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/widget/em;

    .line 249
    invoke-virtual {v2}, Lcom/twitter/android/widget/em;->a()Lcom/twitter/android/widget/el;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/ProfileTimelinesFragment;->y:Lcom/twitter/android/widget/br;

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/ProfileTimelinesFragment;->y:Lcom/twitter/android/widget/br;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/ProfileTimelinesFragment;->p:Lcom/twitter/android/widget/br;

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/ProfileTimelinesFragment;->r:Lcom/twitter/android/profiles/w;

    invoke-virtual {v2}, Lcom/twitter/android/profiles/w;->a()Lcom/twitter/android/vz;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 252
    new-instance v2, Lcom/twitter/android/widget/bt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/ProfileTimelinesFragment;->y:Lcom/twitter/android/widget/br;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/ProfileTimelinesFragment;->r:Lcom/twitter/android/profiles/w;

    .line 253
    invoke-virtual {v4}, Lcom/twitter/android/profiles/w;->a()Lcom/twitter/android/vz;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6}, Lcom/twitter/android/widget/bt;-><init>(Landroid/widget/BaseAdapter;Landroid/widget/BaseAdapter;I)V

    const/4 v3, 0x1

    .line 254
    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/bt;->a(Z)Lcom/twitter/android/widget/bt;

    move-result-object v2

    const v3, 0x7f0400e8

    .line 255
    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/bt;->a(I)Lcom/twitter/android/widget/bt;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Lcom/twitter/android/widget/bt;->b()Lcom/twitter/android/widget/br;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/ProfileTimelinesFragment;->p:Lcom/twitter/android/widget/br;

    .line 258
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/ProfileTimelinesFragment;->p:Lcom/twitter/android/widget/br;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/twitter/android/profiles/ao;->a(Lcom/twitter/android/profiles/ap;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public af_()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->af_()V

    .line 275
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    invoke-interface {v0}, Lcom/twitter/android/profiles/aj;->m()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->r:Lcom/twitter/android/profiles/w;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->r:Lcom/twitter/android/profiles/w;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/w;->b()V

    .line 281
    :cond_1
    return-void
.end method

.method protected c(I)Laru;
    .locals 2

    .prologue
    .line 467
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->c(I)Laru;

    move-result-object v1

    .line 468
    iget-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Laru;->a(Z)Laru;

    .line 472
    :cond_0
    return-object v1
.end method

.method public e()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    invoke-interface {v0}, Lcom/twitter/android/profiles/aj;->q()V

    .line 461
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->e()V

    .line 462
    return-void
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->o:Z

    invoke-static {v0}, Lcom/twitter/android/profiles/as;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/twitter/android/timeline/bm;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->P()Lcom/twitter/android/timeline/am;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f130351

    if-ne v0, v1, :cond_0

    .line 336
    iget-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->w:Z

    if-eqz v0, :cond_1

    .line 337
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "profile"

    aput-object v2, v1, v4

    const-string/jumbo v2, "edit_profile_flow"

    aput-object v2, v1, v5

    const/4 v2, 0x0

    aput-object v2, v1, v6

    const-string/jumbo v2, "timeline"

    aput-object v2, v1, v7

    const-string/jumbo v2, "launch"

    aput-object v2, v1, v8

    .line 338
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 339
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "profile"

    invoke-static {v0, v1}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionFlowActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileTimelinesFragment;->startActivity(Landroid/content/Intent;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "profile"

    aput-object v2, v1, v4

    const-string/jumbo v2, "compose"

    aput-object v2, v1, v5

    const/4 v2, 0x0

    aput-object v2, v1, v6

    const-string/jumbo v2, "timeline"

    aput-object v2, v1, v7

    const-string/jumbo v2, "launch"

    aput-object v2, v1, v8

    .line 342
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 341
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 343
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileTimelinesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->P()Lcom/twitter/android/timeline/am;

    move-result-object v2

    .line 107
    const-string/jumbo v3, "is_me"

    invoke-virtual {v2, v3, v0}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/twitter/android/ProfileTimelinesFragment;->o:Z

    .line 108
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string/jumbo v3, "statuses_count"

    invoke-virtual {v2, v3}, Lcom/twitter/app/common/list/w;->b(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->v:Z

    .line 111
    iget-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->o:Z

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Lcom/twitter/ui/view/u;

    invoke-direct {v0}, Lcom/twitter/ui/view/u;-><init>()V

    .line 113
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->b(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->f(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->h(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/twitter/ui/view/u;->a()Lcom/twitter/ui/view/s;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileTimelinesFragment;->a(Lcom/twitter/ui/view/s;)V

    .line 119
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->q:Lcom/twitter/android/profiles/aj;

    invoke-interface {v0}, Lcom/twitter/android/profiles/aj;->p()V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->r:Lcom/twitter/android/profiles/w;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->r:Lcom/twitter/android/profiles/w;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/w;->c()V

    .line 453
    :cond_1
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->onDestroy()V

    .line 454
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->P()Lcom/twitter/android/timeline/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->P()Lcom/twitter/android/timeline/am;

    move-result-object v0

    return-object v0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->u()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "profile_self"

    invoke-static {v0, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v0, "android_umf_request_profile_self"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "android_umf_request_profile_other"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->o:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "profile_self"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "profile_other"

    goto :goto_0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method protected y()V
    .locals 5

    .prologue
    .line 151
    new-instance v0, Lcom/twitter/android/metrics/b;

    const-string/jumbo v1, "timeline:bellbird_profile_tweets"

    const-string/jumbo v2, "timeline:bellbird_profile_tweets"

    sget-object v3, Laxz;->l:Laye;

    .line 152
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTimelinesFragment;->aX()Layj;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/metrics/b;-><init>(Ljava/lang/String;Ljava/lang/String;Laye;Layf;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->c:Lcom/twitter/android/metrics/b;

    .line 153
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/metrics/b;->b(J)V

    .line 154
    iget-object v0, p0, Lcom/twitter/android/ProfileTimelinesFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->i()V

    .line 155
    return-void
.end method
