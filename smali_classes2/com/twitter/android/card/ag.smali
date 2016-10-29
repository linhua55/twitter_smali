.class public Lcom/twitter/android/card/ag;
.super Lcom/twitter/android/card/ab;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/af;
.implements Lcom/twitter/library/card/bb;
.implements Lcom/twitter/library/card/bg;
.implements Lcom/twitter/library/widget/a;


# instance fields
.field private final a:Lcom/twitter/library/card/az;

.field private final b:Labb;

.field private final c:Labf;

.field private d:Lcdq;

.field private final e:Laax;

.field private final f:Lcom/twitter/android/card/ai;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Labb;Labf;Laax;)V
    .locals 8

    .prologue
    .line 47
    new-instance v3, Lcom/twitter/android/card/k;

    invoke-direct {v3, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/twitter/android/card/e;

    invoke-direct {v4, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/card/ag;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Labb;Labf;Laax;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Labb;Labf;Laax;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/card/ag;->g:I

    .line 58
    iput-object p5, p0, Lcom/twitter/android/card/ag;->b:Labb;

    .line 59
    iput-object p6, p0, Lcom/twitter/android/card/ag;->c:Labf;

    .line 60
    iput-object p7, p0, Lcom/twitter/android/card/ag;->e:Laax;

    .line 61
    new-instance v0, Lcom/twitter/library/card/az;

    invoke-direct {v0, p0}, Lcom/twitter/library/card/az;-><init>(Lcom/twitter/library/card/bb;)V

    iput-object v0, p0, Lcom/twitter/android/card/ag;->a:Lcom/twitter/library/card/az;

    .line 62
    new-instance v0, Lcom/twitter/android/card/ai;

    iget-object v1, p0, Lcom/twitter/android/card/ag;->b:Labb;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/ag;->a(Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/card/ai;-><init>(Labb;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/twitter/android/card/ag;->f:Lcom/twitter/android/card/ai;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/card/ag;)Lcdq;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/card/ag;->d:Lcdq;

    return-object v0
.end method

.method private a(Lclm;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/twitter/android/card/ag;->w:Lcom/twitter/library/card/CardContext;

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/ag;->c:Labf;

    iget-object v1, p0, Lcom/twitter/android/card/ag;->w:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0, v1, p1}, Labf;->a(Lcom/twitter/library/card/CardContext;Lclm;)Lcdq;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/ag;->d:Lcdq;

    .line 116
    iget-object v0, p0, Lcom/twitter/android/card/ag;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/twitter/android/card/ag;->f:Lcom/twitter/android/card/ai;

    iget-object v1, p0, Lcom/twitter/android/card/ag;->d:Lcdq;

    iget-object v2, p0, Lcom/twitter/android/card/ag;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/card/ai;->a(Lcdq;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/card/ag;->d:Lcdq;

    invoke-virtual {v0}, Lcdq;->f()Lcom/twitter/model/livevideo/BroadcastState;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/livevideo/BroadcastState;->b:Lcom/twitter/model/livevideo/BroadcastState;

    if-eq v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/twitter/android/card/ag;->at_()Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/app/Activity;)Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lcom/twitter/android/card/ah;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/card/ah;-><init>(Lcom/twitter/android/card/ag;Landroid/app/Activity;)V

    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 132
    iget-object v0, p0, Lcom/twitter/android/card/ag;->b:Labb;

    invoke-virtual {v0}, Labb;->b()V

    .line 133
    invoke-virtual {p0}, Lcom/twitter/android/card/ag;->j()Lcom/twitter/library/card/ae;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/card/ag;->y:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/twitter/android/card/ag;->e:Laax;

    invoke-virtual {v0}, Laax;->a()V

    .line 135
    iget-object v0, p0, Lcom/twitter/android/card/ag;->a:Lcom/twitter/library/card/az;

    invoke-virtual {v0}, Lcom/twitter/library/card/az;->b()V

    .line 136
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/twitter/android/card/ag;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/card/ag;->g:I

    .line 158
    return-void
.end method

.method public a(ILclm;)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0, p2}, Lcom/twitter/android/card/ag;->a(Lclm;)V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/card/ag;->g:I

    .line 153
    return-void
.end method

.method public a(JLclm;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p3}, Lcom/twitter/android/card/ag;->a(Lclm;)V

    .line 109
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 88
    iget-wide v0, p1, Lcom/twitter/library/card/av;->b:J

    iput-wide v0, p0, Lcom/twitter/android/card/ag;->y:J

    .line 89
    invoke-virtual {p0}, Lcom/twitter/android/card/ag;->j()Lcom/twitter/library/card/ae;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/card/ag;->y:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/twitter/android/card/ag;->e:Laax;

    iget-wide v2, p0, Lcom/twitter/android/card/ag;->y:J

    invoke-virtual {v0, v2, v3, p0}, Laax;->a(JLcom/twitter/library/card/bg;)V

    .line 91
    iget-object v0, p0, Lcom/twitter/android/card/ag;->a:Lcom/twitter/library/card/az;

    invoke-virtual {v0}, Lcom/twitter/library/card/az;->a()V

    .line 92
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/ag;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public ao_()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/twitter/android/card/ab;->ao_()V

    .line 103
    iget-object v0, p0, Lcom/twitter/android/card/ag;->a:Lcom/twitter/library/card/az;

    invoke-virtual {v0}, Lcom/twitter/library/card/az;->c()V

    .line 104
    return-void
.end method

.method public aq_()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/twitter/android/card/ab;->aq_()V

    .line 97
    iget-object v0, p0, Lcom/twitter/android/card/ag;->a:Lcom/twitter/library/card/az;

    invoke-virtual {v0}, Lcom/twitter/library/card/az;->d()V

    .line 98
    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/twitter/android/card/ag;->b:Labb;

    invoke-virtual {v0}, Labb;->c()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->at_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public ax_()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/card/ag;->d:Lcdq;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/twitter/android/card/ag;->e:Laax;

    iget-object v1, p0, Lcom/twitter/android/card/ag;->d:Lcdq;

    invoke-virtual {v0, v1}, Laax;->a(Lcdq;)V

    .line 83
    :cond_0
    return-void
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/twitter/android/card/ag;->b:Labb;

    invoke-virtual {v0}, Labb;->c()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->ay_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/twitter/android/card/ag;->b:Labb;

    invoke-virtual {v0}, Labb;->a()V

    .line 127
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/twitter/android/card/ag;->b:Labb;

    invoke-virtual {v0}, Labb;->c()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->c()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "card_registry_capi_live_video_refresh_interval_seconds"

    const/4 v1, 0x0

    .line 68
    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    .line 67
    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/twitter/android/card/ag;->b:Labb;

    invoke-virtual {v0}, Labb;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/card/ag;->d:Lcdq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/ag;->b:Labb;

    invoke-virtual {v0}, Labb;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/card/ag;->g:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/twitter/android/card/ag;->b:Labb;

    invoke-virtual {v0}, Labb;->c()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/twitter/android/card/ag;->b:Labb;

    invoke-virtual {v0}, Labb;->c()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected j()Lcom/twitter/library/card/ae;
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    return-object v0
.end method
