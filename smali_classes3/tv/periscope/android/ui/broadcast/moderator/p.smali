.class Ltv/periscope/android/ui/broadcast/moderator/p;
.super Landroid/os/Handler;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->a:Ljava/lang/ref/WeakReference;

    .line 102
    return-void
.end method

.method private a(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V
    .locals 2

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->a(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;Ltv/periscope/android/ui/broadcast/moderator/o;)Ltv/periscope/android/ui/broadcast/moderator/o;

    .line 114
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->a(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;Z)Z

    .line 115
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/moderator/p;->removeMessages(I)V

    .line 116
    invoke-static {p1}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->h(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 117
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->b:J

    .line 106
    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->c:J

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/moderator/p;->removeMessages(I)V

    .line 108
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/moderator/p;->removeMessages(I)V

    .line 109
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/moderator/p;->removeMessages(I)V

    .line 110
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    .line 126
    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 133
    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;

    move-result-object v1

    invoke-interface {v1}, Ltv/periscope/android/ui/broadcast/moderator/n;->v()V

    .line 135
    :cond_2
    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/moderator/p;->a(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 140
    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;

    move-result-object v1

    invoke-interface {v1}, Ltv/periscope/android/ui/broadcast/moderator/n;->w()V

    .line 142
    :cond_3
    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/moderator/p;->a(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 149
    iget-wide v6, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->b:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_4

    move v1, v2

    .line 155
    :goto_1
    iget-wide v6, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->c:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_5

    move v3, v2

    .line 156
    :goto_2
    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->h(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    sub-int v1, v4, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 157
    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->h(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 158
    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->i(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V

    .line 162
    rsub-int/lit8 v4, v3, 0x10

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v4, v2

    .line 163
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v4, v5}, Ltv/periscope/android/ui/broadcast/moderator/p;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->b:J

    .line 166
    iget-wide v4, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->c:J

    cmp-long v2, v4, v8

    if-nez v2, :cond_6

    .line 167
    iget-wide v2, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->b:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->c:J

    .line 174
    :goto_3
    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->j(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/o;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 175
    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->j(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/o;

    move-result-object v0

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/broadcast/moderator/o;->a(I)V

    goto :goto_0

    .line 149
    :cond_4
    iget-wide v6, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->b:J

    sub-long v6, v4, v6

    long-to-int v1, v6

    goto :goto_1

    .line 155
    :cond_5
    iget-wide v6, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->c:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    goto :goto_2

    .line 171
    :cond_6
    iget-wide v4, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->c:J

    div-int/lit8 v2, v3, 0x10

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Ltv/periscope/android/ui/broadcast/moderator/p;->c:J

    goto :goto_3

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
