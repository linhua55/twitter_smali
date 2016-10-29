.class public Ltv/periscope/android/ui/chat/t;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "Twttr"


# instance fields
.field public final k:Ltv/periscope/android/ui/chat/x;

.field public l:Ltv/periscope/model/y;


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/chat/x;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    iput-object p2, p0, Ltv/periscope/android/ui/chat/t;->k:Ltv/periscope/android/ui/chat/x;

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Ltv/periscope/android/ui/chat/j;)Z
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p1}, Ltv/periscope/android/ui/chat/j;->a()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
