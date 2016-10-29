.class public Lcom/twitter/android/card/ao;
.super Lcom/twitter/android/card/ab;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/af;
.implements Lcom/twitter/library/card/bb;
.implements Lcom/twitter/library/card/bg;
.implements Lcom/twitter/library/widget/a;


# instance fields
.field private final a:Lcom/twitter/library/card/az;

.field private final b:Lcom/twitter/android/card/au;

.field private final c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

.field private final d:Lcom/twitter/android/card/an;

.field private final e:Lcom/twitter/android/card/aq;

.field private final f:Landroid/view/ViewGroup;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/card/au;Lcom/twitter/library/api/periscope/PeriscopeCapiModel;Lcom/twitter/android/card/an;Lcom/twitter/android/card/ap;Lcom/twitter/android/card/aq;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 48
    new-instance v0, Lcom/twitter/library/card/az;

    invoke-direct {v0, p0}, Lcom/twitter/library/card/az;-><init>(Lcom/twitter/library/card/bb;)V

    iput-object v0, p0, Lcom/twitter/android/card/ao;->a:Lcom/twitter/library/card/az;

    .line 63
    iput-object p5, p0, Lcom/twitter/android/card/ao;->b:Lcom/twitter/android/card/au;

    .line 64
    iput-object p6, p0, Lcom/twitter/android/card/ao;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    .line 65
    iput-object p7, p0, Lcom/twitter/android/card/ao;->d:Lcom/twitter/android/card/an;

    .line 67
    invoke-virtual {p8}, Lcom/twitter/android/card/ap;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/ao;->f:Landroid/view/ViewGroup;

    .line 69
    iput-object p9, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    .line 70
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    iget-object v1, p0, Lcom/twitter/android/card/ao;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/aq;->a(Landroid/view/ViewGroup;)V

    .line 71
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 99
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 100
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->e()V

    .line 101
    iget-object v0, p0, Lcom/twitter/android/card/ao;->a:Lcom/twitter/library/card/az;

    invoke-virtual {v0}, Lcom/twitter/library/card/az;->b()V

    .line 102
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/card/ao;->y:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/twitter/android/card/ao;->d:Lcom/twitter/android/card/an;

    invoke-virtual {v0}, Lcom/twitter/android/card/an;->b()V

    .line 108
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 164
    const-string/jumbo v0, "PeriscopeCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Capi error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->a()V

    .line 166
    iget v0, p0, Lcom/twitter/android/card/ao;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/card/ao;->g:I

    .line 174
    return-void
.end method

.method public a(ILclm;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/twitter/android/card/ao;->b:Lcom/twitter/android/card/au;

    invoke-virtual {v0}, Lcom/twitter/android/card/au;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/ao;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v0, p2}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->a(Lclm;)V

    .line 154
    iget-object v0, p0, Lcom/twitter/android/card/ao;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v0}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->c()V

    .line 156
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->d()V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->a()V

    goto :goto_0
.end method

.method public a(JLclm;)V
    .locals 6

    .prologue
    .line 131
    iget-object v0, p0, Lcom/twitter/android/card/ao;->b:Lcom/twitter/android/card/au;

    invoke-virtual {v0, p3}, Lcom/twitter/android/card/au;->a(Lclm;)V

    .line 132
    iget-object v0, p0, Lcom/twitter/android/card/ao;->w:Lcom/twitter/library/card/CardContext;

    invoke-static {v0}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 133
    iget-object v1, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    new-instance v2, Lcom/twitter/library/av/playback/PeriscopeDataSource;

    iget-object v3, p0, Lcom/twitter/android/card/ao;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    iget-object v4, p0, Lcom/twitter/android/card/ao;->b:Lcom/twitter/android/card/au;

    .line 134
    invoke-virtual {v4}, Lcom/twitter/android/card/au;->c()Lcom/twitter/model/card/property/Vector2F;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/card/ao;->b:Lcom/twitter/android/card/au;

    invoke-virtual {v5}, Lcom/twitter/android/card/au;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/twitter/library/av/playback/PeriscopeDataSource;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/periscope/PeriscopeCapiModel;Lcom/twitter/model/card/property/Vector2F;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1, v2}, Lcom/twitter/android/card/aq;->a(Lcom/twitter/library/av/playback/PeriscopeDataSource;)V

    .line 136
    iget-object v0, p0, Lcom/twitter/android/card/ao;->b:Lcom/twitter/android/card/au;

    invoke-virtual {v0}, Lcom/twitter/android/card/au;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->c()V

    .line 138
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->d()V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->a()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 86
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    iget-object v1, p0, Lcom/twitter/android/card/ao;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/aq;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 87
    iget-object v0, p0, Lcom/twitter/android/card/ao;->b:Lcom/twitter/android/card/au;

    iget-object v1, p0, Lcom/twitter/android/card/ao;->w:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/au;->a(Lcom/twitter/library/card/CardContext;)V

    .line 88
    iget-object v0, p0, Lcom/twitter/android/card/ao;->b:Lcom/twitter/android/card/au;

    invoke-virtual {v0}, Lcom/twitter/android/card/au;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/twitter/android/card/ao;->d:Lcom/twitter/android/card/an;

    iget-wide v2, p0, Lcom/twitter/android/card/ao;->y:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/android/card/an;->a(JLcom/twitter/library/card/bg;)V

    .line 90
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/card/ao;->y:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/twitter/android/card/ao;->a:Lcom/twitter/library/card/az;

    invoke-virtual {v0}, Lcom/twitter/library/card/az;->a()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->b()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/ao;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Z)V

    .line 126
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0, p1}, Lcom/twitter/android/card/aq;->a(Z)V

    .line 127
    return-void
.end method

.method public ao_()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/twitter/android/card/ab;->ao_()V

    .line 119
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->g()V

    .line 120
    iget-object v0, p0, Lcom/twitter/android/card/ao;->a:Lcom/twitter/library/card/az;

    invoke-virtual {v0}, Lcom/twitter/library/card/az;->c()V

    .line 121
    return-void
.end method

.method public aq_()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/twitter/android/card/ab;->aq_()V

    .line 113
    iget-object v0, p0, Lcom/twitter/android/card/ao;->a:Lcom/twitter/library/card/az;

    invoke-virtual {v0}, Lcom/twitter/library/card/az;->d()V

    .line 114
    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->j()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public ax_()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/twitter/android/card/ao;->d:Lcom/twitter/android/card/an;

    invoke-virtual {v0}, Lcom/twitter/android/card/an;->a()V

    .line 189
    return-void
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->i()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->f()V

    .line 76
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->h()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/twitter/android/card/ao;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v0}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->a()I

    move-result v0

    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/card/ao;->f:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/twitter/android/card/ao;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v0}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/card/ao;->g:I

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
    .line 211
    iget-object v0, p0, Lcom/twitter/android/card/ao;->e:Lcom/twitter/android/card/aq;

    invoke-virtual {v0}, Lcom/twitter/android/card/aq;->k()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/twitter/android/card/ao;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
