.class public Lcom/twitter/android/moments/ui/fullscreen/er;
.super Lcom/twitter/android/moments/ui/fullscreen/dv;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/bd;

.field private final c:Lcom/twitter/library/view/m;

.field private final d:Lakk;

.field private final e:Lcom/twitter/android/moments/ui/fullscreen/fo;

.field private f:Lcom/twitter/model/core/TwitterUser;

.field private g:Lard;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/bd;Lakk;Lcom/twitter/android/moments/ui/fullscreen/fo;ZZ)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p3}, Lcom/twitter/android/moments/ui/fullscreen/dv;-><init>(Lakl;)V

    .line 48
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->b:Lcom/twitter/library/client/bd;

    .line 50
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    .line 51
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->e:Lcom/twitter/android/moments/ui/fullscreen/fo;

    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0, p5}, Lakk;->f(Z)V

    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0, p6}, Lakk;->g(Z)V

    .line 55
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/es;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/es;-><init>(Lcom/twitter/android/moments/ui/fullscreen/er;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->c:Lcom/twitter/library/view/m;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/er;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(J)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->a:Landroid/content/Context;

    const/4 v7, -0x1

    move-wide v2, p1

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    move-object v9, v4

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/api/PromotedEvent;Lcom/twitter/model/timeline/al;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/fullscreen/er;->a(Landroid/content/Intent;)V

    .line 182
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/er;J)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/er;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/er;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/er;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 175
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->a:Landroid/content/Context;

    const-wide/16 v2, 0x0

    const/4 v7, -0x1

    move-object v4, p1

    move-object v6, v5

    move-object v8, v5

    move-object v9, v5

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/api/PromotedEvent;Lcom/twitter/model/timeline/al;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/fullscreen/er;->a(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/er;)Lcom/twitter/model/core/TwitterUser;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/er;)Lcom/twitter/android/moments/ui/fullscreen/fo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->e:Lcom/twitter/android/moments/ui/fullscreen/fo;

    return-object v0
.end method


# virtual methods
.method public a(Lard;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->g:Lard;

    .line 78
    return-void
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0}, Lakk;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/er;->c()V

    .line 74
    :cond_0
    return-void
.end method

.method public c()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    invoke-super {p0}, Lcom/twitter/android/moments/ui/fullscreen/dv;->c()V

    .line 83
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_6

    .line 84
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0, v7}, Lakk;->a(Z)V

    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0, v6}, Lakk;->b(Z)V

    .line 86
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakk;->a(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakk;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->a:Landroid/content/Context;

    const v2, 0x7f0a0a87

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget-object v4, v4, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakk;->b(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lakk;->a(I)V

    .line 90
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget v1, v1, Lcom/twitter/model/core/TwitterUser;->v:I

    int-to-long v2, v1

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget v1, v1, Lcom/twitter/model/core/TwitterUser;->Q:I

    int-to-long v4, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lakk;->a(JJ)V

    .line 92
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v1, v1, Lcom/twitter/model/core/TwitterUser;->n:Z

    invoke-virtual {v0, v1}, Lakk;->c(Z)V

    .line 94
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0, v7}, Lakk;->d(Z)V

    .line 96
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    .line 97
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v1}, Lcom/twitter/model/core/j;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    .line 99
    invoke-static {v1}, Lcom/twitter/library/view/o;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/view/o;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget-object v2, v2, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    .line 100
    invoke-virtual {v1, v2}, Lcom/twitter/library/view/o;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/library/view/o;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->c:Lcom/twitter/library/view/m;

    .line 101
    invoke-virtual {v1, v2}, Lcom/twitter/library/view/o;->a(Lcom/twitter/library/view/m;)Lcom/twitter/library/view/o;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v8}, Lcom/twitter/library/view/o;->a(I)Lcom/twitter/library/view/o;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/twitter/library/view/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lakk;->c(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0}, Lakk;->a()V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0, v7}, Lakk;->e(Z)V

    .line 114
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakk;->d(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0, v8}, Lakk;->b(I)V

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/et;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/et;-><init>(Lcom/twitter/android/moments/ui/fullscreen/er;)V

    invoke-virtual {v0, v1}, Lakk;->a(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    .line 129
    invoke-virtual {v0}, Lakk;->b()Lakj;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_5

    .line 132
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/eo;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->b:Lcom/twitter/library/client/bd;

    invoke-direct {v0, v2, v3, v1}, Lcom/twitter/android/moments/ui/fullscreen/eo;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bd;Lakj;)V

    .line 134
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/eo;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 139
    :goto_2
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    .line 140
    invoke-virtual {v1}, Lakk;->c()Lcom/twitter/android/periscope/u;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->g:Lard;

    if-eqz v2, :cond_1

    .line 142
    new-instance v2, Lcom/twitter/android/periscope/ac;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->g:Lard;

    invoke-direct {v2, v3, v4, v1}, Lcom/twitter/android/periscope/ac;-><init>(Landroid/content/Context;Lard;Lcom/twitter/android/periscope/u;)V

    .line 145
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v2, v1}, Lcom/twitter/android/periscope/ac;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 147
    if-eqz v0, :cond_1

    .line 148
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/eu;

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/moments/ui/fullscreen/eu;-><init>(Lcom/twitter/android/moments/ui/fullscreen/er;Lcom/twitter/android/periscope/ac;)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/eo;->a(Lcom/twitter/android/moments/ui/fullscreen/eq;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ev;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/ev;-><init>(Lcom/twitter/android/moments/ui/fullscreen/er;)V

    invoke-virtual {v0, v1}, Lakk;->b(Landroid/view/View$OnClickListener;)V

    .line 172
    :goto_3
    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->f:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakk;->c(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0, v6}, Lakk;->d(Z)V

    goto :goto_0

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0, v6}, Lakk;->e(Z)V

    goto :goto_1

    .line 136
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0, v6}, Lakk;->a(Z)V

    .line 170
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/er;->d:Lakk;

    invoke-virtual {v0, v7}, Lakk;->b(Z)V

    goto :goto_3
.end method

.method protected d()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 191
    const v0, 0x7f040200

    return v0
.end method
