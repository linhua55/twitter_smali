.class public Ltv/periscope/android/ui/broadcast/o;
.super Ltv/periscope/android/ui/broadcast/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/broadcast/d",
        "<",
        "Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    .line 482
    sget v0, Ltv/periscope/android/library/l;->more_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/o;->b:Landroid/widget/TextView;

    .line 483
    sget v0, Ltv/periscope/android/library/l;->more_total:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/o;->c:Landroid/widget/TextView;

    .line 484
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/o;
    .locals 3

    .prologue
    .line 475
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcast_info_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 477
    new-instance v1, Ltv/periscope/android/ui/broadcast/o;

    invoke-direct {v1, v0, p2}, Ltv/periscope/android/ui/broadcast/o;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    return-object v1
.end method


# virtual methods
.method public a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 488
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More;->d()Ltv/periscope/model/r;

    move-result-object v0

    .line 489
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/o;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 490
    sget-object v2, Ltv/periscope/android/ui/broadcast/e;->a:[I

    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More;->b()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    move-result-object v3

    invoke-virtual {v3}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 504
    :goto_0
    return-void

    .line 492
    :pswitch_0
    invoke-virtual {v0}, Ltv/periscope/model/r;->b()I

    move-result v0

    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More;->c()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 493
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/o;->c:Landroid/widget/TextView;

    int-to-long v4, v0

    invoke-static {v1, v4, v5, v6}, Ltv/periscope/android/util/r;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/o;->b:Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__more_viewers:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 498
    :pswitch_1
    invoke-virtual {v0}, Ltv/periscope/model/r;->a()I

    move-result v0

    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More;->c()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 499
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/o;->c:Landroid/widget/TextView;

    int-to-long v4, v0

    invoke-static {v1, v4, v5, v6}, Ltv/periscope/android/util/r;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/o;->b:Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__more_viewers:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .locals 0

    .prologue
    .line 470
    check-cast p1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/o;->a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More;)V

    return-void
.end method
