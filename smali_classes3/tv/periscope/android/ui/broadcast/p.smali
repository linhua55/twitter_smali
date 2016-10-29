.class public Ltv/periscope/android/ui/broadcast/p;
.super Ltv/periscope/android/ui/broadcast/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/broadcast/d",
        "<",
        "Ltv/periscope/android/ui/broadcast/ab;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/view/View;

.field private c:Ltv/periscope/model/r;

.field private final d:Ltv/periscope/android/ui/broadcast/StatsView;

.field private final e:Ltv/periscope/android/ui/broadcast/StatsView;

.field private final f:Ltv/periscope/android/ui/broadcast/StatsView;

.field private g:Landroid/view/View;

.field private final h:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final i:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final j:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private k:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private l:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private m:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V
    .locals 3

    .prologue
    .line 625
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    .line 626
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/p;->b:Landroid/view/View;

    .line 627
    sget v0, Ltv/periscope/android/library/l;->time_watched:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/StatsView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->d:Ltv/periscope/android/ui/broadcast/StatsView;

    .line 628
    sget v0, Ltv/periscope/android/library/l;->time_per_user:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/StatsView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->e:Ltv/periscope/android/ui/broadcast/StatsView;

    .line 629
    sget v0, Ltv/periscope/android/library/l;->duration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/StatsView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->f:Ltv/periscope/android/ui/broadcast/StatsView;

    .line 630
    sget v0, Ltv/periscope/android/library/l;->custom_stats_padding:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->g:Landroid/view/View;

    .line 631
    sget v0, Ltv/periscope/android/library/i;->ps__primary_text:I

    iput v0, p0, Ltv/periscope/android/ui/broadcast/p;->h:I

    .line 632
    sget v0, Ltv/periscope/android/library/i;->ps__red:I

    iput v0, p0, Ltv/periscope/android/ui/broadcast/p;->i:I

    .line 633
    sget v0, Ltv/periscope/android/library/i;->ps__blue:I

    iput v0, p0, Ltv/periscope/android/ui/broadcast/p;->j:I

    .line 635
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->d:Ltv/periscope/android/ui/broadcast/StatsView;

    sget v1, Ltv/periscope/android/library/p;->ps__total_time_watched:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/p;->h:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsView;->a(II)V

    .line 636
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->e:Ltv/periscope/android/ui/broadcast/StatsView;

    sget v1, Ltv/periscope/android/library/p;->ps__time_per_viewer:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/p;->h:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsView;->a(II)V

    .line 637
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->f:Ltv/periscope/android/ui/broadcast/StatsView;

    sget v1, Ltv/periscope/android/library/p;->ps__duration:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/p;->h:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsView;->a(II)V

    .line 638
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/p;
    .locals 3

    .prologue
    .line 641
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcast_stats_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 643
    new-instance v1, Ltv/periscope/android/ui/broadcast/p;

    invoke-direct {v1, v0, p2}, Ltv/periscope/android/ui/broadcast/p;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    return-object v1
.end method

.method private a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;Ltv/periscope/model/r;)V
    .locals 3

    .prologue
    .line 672
    if-nez p2, :cond_0

    .line 698
    :goto_0
    return-void

    .line 675
    :cond_0
    sget-object v0, Ltv/periscope/android/ui/broadcast/e;->b:[I

    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 677
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->d:Ltv/periscope/android/ui/broadcast/StatsView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/p;->c:Ltv/periscope/model/r;

    invoke-virtual {v1}, Ltv/periscope/model/r;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/StatsView;->setTime(I)V

    .line 678
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->d:Ltv/periscope/android/ui/broadcast/StatsView;

    sget v1, Ltv/periscope/android/library/p;->ps__total_time_watched:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/p;->h:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsView;->a(II)V

    .line 679
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->e:Ltv/periscope/android/ui/broadcast/StatsView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/p;->c:Ltv/periscope/model/r;

    invoke-virtual {v1}, Ltv/periscope/model/r;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/StatsView;->setTime(I)V

    .line 680
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->e:Ltv/periscope/android/ui/broadcast/StatsView;

    sget v1, Ltv/periscope/android/library/p;->ps__time_per_viewer:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/p;->h:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsView;->a(II)V

    goto :goto_0

    .line 684
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->d:Ltv/periscope/android/ui/broadcast/StatsView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/p;->c:Ltv/periscope/model/r;

    invoke-virtual {v1}, Ltv/periscope/model/r;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/StatsView;->setTime(I)V

    .line 685
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->d:Ltv/periscope/android/ui/broadcast/StatsView;

    sget v1, Ltv/periscope/android/library/p;->ps__total_time_watched_live:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/p;->i:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsView;->a(II)V

    .line 686
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->e:Ltv/periscope/android/ui/broadcast/StatsView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/p;->c:Ltv/periscope/model/r;

    invoke-virtual {v1}, Ltv/periscope/model/r;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/StatsView;->setTime(I)V

    .line 687
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->e:Ltv/periscope/android/ui/broadcast/StatsView;

    sget v1, Ltv/periscope/android/library/p;->ps__time_per_viewer_live:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/p;->i:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsView;->a(II)V

    goto :goto_0

    .line 691
    :pswitch_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->d:Ltv/periscope/android/ui/broadcast/StatsView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/p;->c:Ltv/periscope/model/r;

    invoke-virtual {v1}, Ltv/periscope/model/r;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/StatsView;->setTime(I)V

    .line 692
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->d:Ltv/periscope/android/ui/broadcast/StatsView;

    sget v1, Ltv/periscope/android/library/p;->ps__total_time_watched_replay:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/p;->j:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsView;->a(II)V

    .line 693
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->e:Ltv/periscope/android/ui/broadcast/StatsView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/p;->c:Ltv/periscope/model/r;

    invoke-virtual {v1}, Ltv/periscope/model/r;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/StatsView;->setTime(I)V

    .line 694
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->e:Ltv/periscope/android/ui/broadcast/StatsView;

    sget v1, Ltv/periscope/android/library/p;->ps__time_per_viewer_replay:I

    iget v2, p0, Ltv/periscope/android/ui/broadcast/p;->j:I

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/StatsView;->a(II)V

    goto/16 :goto_0

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ltv/periscope/model/o;)V
    .locals 4

    .prologue
    .line 702
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Ltv/periscope/model/o;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 703
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 704
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/p;->f:Ltv/periscope/android/ui/broadcast/StatsView;

    invoke-static {v0, v1}, Ldnb;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltv/periscope/android/ui/broadcast/StatsView;->setTime(Ljava/lang/String;)V

    .line 711
    :goto_0
    return-void

    .line 706
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received negative duration for broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 707
    invoke-virtual {p1}, Ltv/periscope/model/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ltv/periscope/model/o;->l()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 708
    invoke-virtual {p1}, Ltv/periscope/model/o;->C()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-static {v0}, Lh;->a(Ljava/lang/Throwable;)V

    .line 709
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->f:Ltv/periscope/android/ui/broadcast/StatsView;

    sget v1, Ltv/periscope/android/library/p;->ps__abbrev_not_applicable:I

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/StatsView;->setTime(I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .locals 0

    .prologue
    .line 607
    check-cast p1, Ltv/periscope/android/ui/broadcast/ab;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/p;->a(Ltv/periscope/android/ui/broadcast/ab;)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/broadcast/ab;)V
    .locals 4

    .prologue
    .line 648
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 650
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/p;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 651
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/ab;->d()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    move-result-object v2

    sget-object v3, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    if-ne v2, v3, :cond_0

    .line 652
    sget v2, Ltv/periscope/android/library/i;->ps__app_background_secondary:I

    iput v2, p0, Ltv/periscope/android/ui/broadcast/p;->k:I

    .line 653
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/p;->b:Landroid/view/View;

    iget v3, p0, Ltv/periscope/android/ui/broadcast/p;->k:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 655
    sget v2, Ltv/periscope/android/library/j;->ps__broadcast_info_margin_stats_viewer:I

    iput v2, p0, Ltv/periscope/android/ui/broadcast/p;->m:I

    .line 656
    iget v2, p0, Ltv/periscope/android/ui/broadcast/p;->k:I

    iput v2, p0, Ltv/periscope/android/ui/broadcast/p;->l:I

    .line 662
    :goto_0
    iget v2, p0, Ltv/periscope/android/ui/broadcast/p;->m:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 663
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/p;->g:Landroid/view/View;

    iget v2, p0, Ltv/periscope/android/ui/broadcast/p;->l:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 665
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/ab;->b()Ltv/periscope/model/r;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/p;->c:Ltv/periscope/model/r;

    .line 666
    iget-object v0, p1, Ltv/periscope/android/ui/broadcast/ab;->a:Ltv/periscope/model/o;

    .line 667
    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/p;->a(Ltv/periscope/model/o;)V

    .line 668
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/ab;->c()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/p;->c:Ltv/periscope/model/r;

    invoke-direct {p0, v0, v1}, Ltv/periscope/android/ui/broadcast/p;->a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;Ltv/periscope/model/r;)V

    .line 669
    return-void

    .line 658
    :cond_0
    sget v2, Ltv/periscope/android/library/j;->ps__broadcast_info_margin_stats_owner:I

    iput v2, p0, Ltv/periscope/android/ui/broadcast/p;->m:I

    .line 659
    sget v2, Ltv/periscope/android/library/i;->ps__section_divider:I

    iput v2, p0, Ltv/periscope/android/ui/broadcast/p;->l:I

    goto :goto_0
.end method
