.class public Ltv/periscope/android/ui/broadcast/k;
.super Ltv/periscope/android/ui/broadcast/d;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/broadcast/d",
        "<",
        "Ltv/periscope/android/ui/broadcast/t;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Ltv/periscope/android/ui/broadcast/StatsMainView;

.field private final d:Ltv/periscope/android/ui/broadcast/StatsMainView;

.field private e:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

.field private final f:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final g:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final h:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final i:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private j:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V
    .locals 3

    .prologue
    .line 520
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    .line 521
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/k;->b:Landroid/view/View;

    .line 522
    sget v0, Ltv/periscope/android/library/i;->ps__primary_text:I

    iput v0, p0, Ltv/periscope/android/ui/broadcast/k;->f:I

    .line 523
    sget v0, Ltv/periscope/android/library/i;->ps__secondary_text:I

    iput v0, p0, Ltv/periscope/android/ui/broadcast/k;->g:I

    .line 524
    sget v0, Ltv/periscope/android/library/i;->ps__red:I

    iput v0, p0, Ltv/periscope/android/ui/broadcast/k;->h:I

    .line 525
    sget v0, Ltv/periscope/android/library/i;->ps__blue:I

    iput v0, p0, Ltv/periscope/android/ui/broadcast/k;->i:I

    .line 527
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 528
    sget v0, Ltv/periscope/android/library/l;->stat_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/StatsMainView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->c:Ltv/periscope/android/ui/broadcast/StatsMainView;

    .line 529
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->c:Ltv/periscope/android/ui/broadcast/StatsMainView;

    sget v2, Ltv/periscope/android/library/p;->ps__stat_live_viewers:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/periscope/android/ui/broadcast/StatsMainView;->setDescription(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->c:Ltv/periscope/android/ui/broadcast/StatsMainView;

    invoke-virtual {v0, p0}, Ltv/periscope/android/ui/broadcast/StatsMainView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    sget v0, Ltv/periscope/android/library/l;->stat_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/StatsMainView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->d:Ltv/periscope/android/ui/broadcast/StatsMainView;

    .line 533
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->d:Ltv/periscope/android/ui/broadcast/StatsMainView;

    sget v2, Ltv/periscope/android/library/p;->ps__stat_replay_viewers:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/StatsMainView;->setDescription(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->d:Ltv/periscope/android/ui/broadcast/StatsMainView;

    invoke-virtual {v0, p0}, Ltv/periscope/android/ui/broadcast/StatsMainView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/k;
    .locals 3

    .prologue
    .line 538
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcast_stats_main:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 540
    new-instance v1, Ltv/periscope/android/ui/broadcast/k;

    invoke-direct {v1, v0, p2}, Ltv/periscope/android/ui/broadcast/k;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    return-object v1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->e:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    if-eqz v0, :cond_0

    .line 568
    sget-object v0, Ltv/periscope/android/ui/broadcast/e;->b:[I

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/k;->e:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 570
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->c:Ltv/periscope/android/ui/broadcast/StatsMainView;

    iget v1, p0, Ltv/periscope/android/ui/broadcast/k;->f:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/k;->g:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsMainView;->a(II)V

    .line 571
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->d:Ltv/periscope/android/ui/broadcast/StatsMainView;

    iget v1, p0, Ltv/periscope/android/ui/broadcast/k;->f:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/k;->g:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsMainView;->a(II)V

    goto :goto_0

    .line 575
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->c:Ltv/periscope/android/ui/broadcast/StatsMainView;

    iget v1, p0, Ltv/periscope/android/ui/broadcast/k;->h:I

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/StatsMainView;->setColor(I)V

    .line 576
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->d:Ltv/periscope/android/ui/broadcast/StatsMainView;

    iget v1, p0, Ltv/periscope/android/ui/broadcast/k;->f:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/k;->g:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsMainView;->a(II)V

    goto :goto_0

    .line 580
    :pswitch_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->c:Ltv/periscope/android/ui/broadcast/StatsMainView;

    iget v1, p0, Ltv/periscope/android/ui/broadcast/k;->f:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/k;->g:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsMainView;->a(II)V

    .line 581
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->d:Ltv/periscope/android/ui/broadcast/StatsMainView;

    iget v1, p0, Ltv/periscope/android/ui/broadcast/k;->i:I

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/StatsMainView;->setColor(I)V

    goto :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .locals 0

    .prologue
    .line 507
    check-cast p1, Ltv/periscope/android/ui/broadcast/t;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/k;->a(Ltv/periscope/android/ui/broadcast/t;)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/broadcast/t;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 545
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 546
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/t;->d()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    move-result-object v1

    sget-object v2, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    if-ne v1, v2, :cond_0

    .line 547
    sget v1, Ltv/periscope/android/library/i;->ps__app_background_secondary:I

    iput v1, p0, Ltv/periscope/android/ui/broadcast/k;->j:I

    .line 548
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/k;->b:Landroid/view/View;

    iget v2, p0, Ltv/periscope/android/ui/broadcast/k;->j:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 550
    :cond_0
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/t;->b()Ltv/periscope/model/r;

    move-result-object v1

    if-nez v1, :cond_1

    .line 564
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/t;->b()Ltv/periscope/model/r;

    move-result-object v1

    .line 554
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/t;->c()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    move-result-object v2

    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/k;->e:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    .line 556
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/k;->c:Ltv/periscope/android/ui/broadcast/StatsMainView;

    sget v3, Ltv/periscope/android/library/o;->ps__stats_live_viewers:I

    invoke-virtual {v1}, Ltv/periscope/model/r;->b()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltv/periscope/android/ui/broadcast/StatsMainView;->setDescription(Ljava/lang/String;)V

    .line 557
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/k;->c:Ltv/periscope/android/ui/broadcast/StatsMainView;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/k;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ltv/periscope/model/r;->b()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5, v6}, Ltv/periscope/android/util/r;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltv/periscope/android/ui/broadcast/StatsMainView;->setValue(Ljava/lang/String;)V

    .line 559
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/k;->d:Ltv/periscope/android/ui/broadcast/StatsMainView;

    sget v3, Ltv/periscope/android/library/o;->ps__stats_replay_viewers:I

    invoke-virtual {v1}, Ltv/periscope/model/r;->a()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltv/periscope/android/ui/broadcast/StatsMainView;->setDescription(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->d:Ltv/periscope/android/ui/broadcast/StatsMainView;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/k;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ltv/periscope/model/r;->a()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v4, v5, v6}, Ltv/periscope/android/util/r;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/StatsMainView;->setValue(Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/k;->a()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 590
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 591
    sget v1, Ltv/periscope/android/library/l;->stat_1:I

    if-ne v0, v1, :cond_2

    .line 592
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->e:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    if-ne v0, v1, :cond_1

    .line 593
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->a:Ltv/periscope/android/ui/broadcast/c;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/c;->d()V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->a:Ltv/periscope/android/ui/broadcast/c;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/c;->a()V

    goto :goto_0

    .line 597
    :cond_2
    sget v1, Ltv/periscope/android/library/l;->stat_2:I

    if-ne v0, v1, :cond_0

    .line 598
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->e:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;->c:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    if-ne v0, v1, :cond_3

    .line 599
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->a:Ltv/periscope/android/ui/broadcast/c;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/c;->d()V

    goto :goto_0

    .line 601
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/k;->a:Ltv/periscope/android/ui/broadcast/c;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/c;->b()V

    goto :goto_0
.end method
