.class public Lcom/twitter/android/smartfollow/finishingtimeline/a;
.super Lcom/twitter/android/smartfollow/b;
.source "Twttr"


# annotations
.annotation build Lcom/twitter/app/AutoSaveState;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/smartfollow/b",
        "<",
        "Lcom/twitter/app/common/util/StateSaver",
        "<",
        "Lcom/twitter/android/smartfollow/finishingtimeline/a;",
        ">;",
        "Lcom/twitter/android/smartfollow/finishingtimeline/FinishingTimelineScreen;",
        ">;"
    }
.end annotation


# static fields
.field protected static final i:J

.field private static final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected j:Ljava/lang/String;
    .annotation build Lcom/twitter/app/SaveState;
    .end annotation
.end field

.field protected k:Z
    .annotation build Lcom/twitter/app/SaveState;
    .end annotation
.end field

.field protected l:Z
    .annotation build Lcom/twitter/app/SaveState;
    .end annotation
.end field

.field protected m:Lcom/twitter/android/smartfollow/finishingtimeline/c;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected n:I
    .annotation build Lcom/twitter/app/SaveState;
    .end annotation
.end field

.field protected o:I
    .annotation build Lcom/twitter/app/SaveState;
    .end annotation
.end field

.field private final q:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    const-string/jumbo v0, "smart_nux_smart_follow_timings_message_display_duration"

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v2, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->i:J

    .line 41
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    const v1, 0x7f0a084a

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    const v1, 0x7f0a084b

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    const v1, 0x7f0a084c

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->p:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/twitter/app/common/util/StateSaver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/finishingtimeline/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/twitter/android/smartfollow/b;-><init>()V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->j:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/twitter/android/smartfollow/finishingtimeline/c;

    invoke-direct {v0, p0}, Lcom/twitter/android/smartfollow/finishingtimeline/c;-><init>(Lcom/twitter/android/smartfollow/finishingtimeline/a;)V

    iput-object v0, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->m:Lcom/twitter/android/smartfollow/finishingtimeline/c;

    .line 51
    iput v1, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->n:I

    .line 52
    iput v1, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->o:I

    .line 58
    iput-object p1, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->q:Landroid/os/Handler;

    .line 59
    invoke-virtual {p2, p0}, Lcom/twitter/app/common/util/StateSaver;->a(Ljava/lang/Object;)V

    .line 60
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/util/StateSaver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/finishingtimeline/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/twitter/android/smartfollow/finishingtimeline/FinishingTimelinePresenterSavedState;

    invoke-direct {v0, p0}, Lcom/twitter/android/smartfollow/finishingtimeline/FinishingTimelinePresenterSavedState;-><init>(Lcom/twitter/android/smartfollow/finishingtimeline/a;)V

    return-object v0
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->n:I

    add-int/lit8 v0, v0, 0x1

    .line 118
    iget v1, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->o:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->o:I

    .line 121
    iget-boolean v1, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->k:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->o:I

    sget-object v2, Lcom/twitter/android/smartfollow/finishingtimeline/a;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->u()V

    .line 131
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v1, Lcom/twitter/android/smartfollow/finishingtimeline/a;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->n:I

    .line 125
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/finishingtimeline/FinishingTimelineScreen;

    sget-object v1, Lcom/twitter/android/smartfollow/finishingtimeline/a;->p:Ljava/util/List;

    iget v2, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->n:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/smartfollow/finishingtimeline/FinishingTimelineScreen;->setDescription(I)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->q:Landroid/os/Handler;

    sget-wide v2, Lcom/twitter/android/smartfollow/finishingtimeline/a;->i:J

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public synthetic aH_()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->a()Lcom/twitter/app/common/util/StateSaver;

    move-result-object v0

    return-object v0
.end method

.method public aO_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "presenter_finishing_timeline"

    return-object v0
.end method

.method protected p()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/twitter/android/smartfollow/b;->p()V

    .line 136
    iget-object v0, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string/jumbo v0, "finishing_timeline_screen"

    return-object v0
.end method

.method protected r()V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0}, Lcom/twitter/android/smartfollow/b;->r()V

    .line 77
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-boolean v0, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->k:Z

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->e()[J

    move-result-object v0

    .line 81
    array-length v1, v0

    if-lez v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/bd;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->c()Lcom/twitter/android/smartfollow/r;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->m:Lcom/twitter/android/smartfollow/finishingtimeline/c;

    invoke-interface {v1, v0, v2}, Lcom/twitter/android/smartfollow/r;->a([JLcom/twitter/library/service/z;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->j:Ljava/lang/String;

    .line 90
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/finishingtimeline/FinishingTimelineScreen;

    sget-object v1, Lcom/twitter/android/smartfollow/finishingtimeline/a;->p:Ljava/util/List;

    iget v2, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->n:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/smartfollow/finishingtimeline/FinishingTimelineScreen;->setDescription(I)V

    .line 92
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->v()V

    .line 94
    iget-object v0, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->q:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/android/smartfollow/finishingtimeline/b;

    invoke-direct {v1, p0}, Lcom/twitter/android/smartfollow/finishingtimeline/b;-><init>(Lcom/twitter/android/smartfollow/finishingtimeline/a;)V

    sget-wide v2, Lcom/twitter/android/smartfollow/finishingtimeline/a;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->k:Z

    goto :goto_0
.end method

.method protected v()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->c()Lcom/twitter/android/smartfollow/r;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Lcom/twitter/android/smartfollow/r;->c()V

    .line 109
    iget-boolean v1, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->k:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->l:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/finishingtimeline/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/smartfollow/r;->b(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/smartfollow/finishingtimeline/a;->l:Z

    .line 113
    :cond_0
    return-void
.end method
