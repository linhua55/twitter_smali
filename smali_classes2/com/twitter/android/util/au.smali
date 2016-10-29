.class public Lcom/twitter/android/util/au;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/bf;


# instance fields
.field private final a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private d:Lcvt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcvt",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lavh;

.field private f:J

.field private g:Lcom/twitter/android/util/a;

.field private h:Lcom/twitter/android/util/aw;

.field private i:Lcom/twitter/android/util/az;

.field private j:Lcom/twitter/android/util/av;

.field private final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/twitter/android/util/ax;",
            ">;"
        }
    .end annotation
.end field

.field private l:J


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcvt;Lcom/twitter/android/util/ay;Lavh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/base/TwitterFragmentActivity;",
            "Lcvt",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;",
            "Lcom/twitter/android/util/ay;",
            "Lavh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/util/au;->k:Ljava/util/HashMap;

    .line 59
    iput-object p1, p0, Lcom/twitter/android/util/au;->a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    .line 60
    iput-object p2, p0, Lcom/twitter/android/util/au;->d:Lcvt;

    .line 61
    invoke-interface {p3}, Lcom/twitter/android/util/ay;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/util/au;->b:Ljava/lang/String;

    .line 62
    invoke-interface {p3}, Lcom/twitter/android/util/ay;->v()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/util/au;->c:I

    .line 63
    iput-object p4, p0, Lcom/twitter/android/util/au;->e:Lavh;

    .line 64
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/util/au;->a(Lcom/twitter/library/client/Session;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/util/au;)Lcom/twitter/app/common/base/TwitterFragmentActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/android/util/au;->a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/twitter/android/util/au;->a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    .line 102
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/util/au;->a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    .line 103
    invoke-static {v2}, Lcom/twitter/android/util/ap;->a(Landroid/content/Context;)Lcom/twitter/android/util/al;

    move-result-object v2

    invoke-interface {v2}, Lcom/twitter/android/util/al;->d()Z

    move-result v2

    .line 101
    invoke-static {v0, v1, p1, v2}, Lcom/twitter/library/api/ad;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Z)Lcom/twitter/library/api/ad;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/twitter/android/util/au;->a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 105
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/util/au;)J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/twitter/android/util/au;->f:J

    return-wide v0
.end method

.method static synthetic c(Lcom/twitter/android/util/au;)J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/twitter/android/util/au;->l:J

    return-wide v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/util/a;
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/twitter/android/util/au;->g:Lcom/twitter/android/util/a;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/twitter/android/util/a;

    iget-object v1, p0, Lcom/twitter/android/util/au;->a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    iget-object v2, p0, Lcom/twitter/android/util/au;->e:Lavh;

    iget-object v3, p0, Lcom/twitter/android/util/au;->d:Lcvt;

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/util/a;-><init>(Landroid/content/Context;Lavh;Lcvt;)V

    iput-object v0, p0, Lcom/twitter/android/util/au;->g:Lcom/twitter/android/util/a;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/util/au;->g:Lcom/twitter/android/util/a;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/twitter/android/util/au;->c:I

    if-ne p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/twitter/android/util/au;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/util/au;->a(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public a(ILcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 192
    const-string/jumbo v0, "state_action_prompt_handler"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/twitter/android/util/au;->a()Lcom/twitter/android/util/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/util/a;->a(Landroid/os/Bundle;)V

    .line 196
    :cond_0
    return-void
.end method

.method public a(Lavh;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/android/util/au;->e:Lavh;

    invoke-virtual {v0, p1}, Lavh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Lcom/twitter/android/util/au;->e:Lavh;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/util/au;->g:Lcom/twitter/android/util/a;

    .line 81
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/android/util/av;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/twitter/android/util/au;->j:Lcom/twitter/android/util/av;

    .line 238
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/util/au;->f:J

    .line 73
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;Laro;)V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/util/au;->a()Lcom/twitter/android/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/util/a;->a()V

    .line 96
    invoke-virtual {p0, p1}, Lcom/twitter/android/util/au;->a(Lcom/twitter/library/client/Session;)V

    .line 97
    invoke-static {p2}, Larr;->a(Laro;)Lavh;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/util/au;->a(Lavh;)V

    .line 98
    return-void
.end method

.method public a(Lcom/twitter/model/timeline/w;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 128
    .line 131
    iget-object v0, p0, Lcom/twitter/android/util/au;->j:Lcom/twitter/android/util/av;

    if-eqz v0, :cond_6

    .line 132
    iget-object v0, p0, Lcom/twitter/android/util/au;->j:Lcom/twitter/android/util/av;

    invoke-interface {v0, p1}, Lcom/twitter/android/util/av;->a(Lcom/twitter/model/timeline/w;)Z

    move-result v0

    .line 135
    :goto_0
    if-nez v0, :cond_0

    .line 136
    if-eqz p1, :cond_5

    .line 137
    const/4 v1, 0x1

    .line 138
    iget-object v0, p0, Lcom/twitter/android/util/au;->k:Ljava/util/HashMap;

    iget v3, p1, Lcom/twitter/model/timeline/w;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/ax;

    .line 139
    if-eqz v0, :cond_1

    .line 140
    invoke-interface {v0, p1}, Lcom/twitter/android/util/ax;->a(Lcom/twitter/model/timeline/w;)V

    move v0, v1

    .line 152
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/util/au;->j:Lcom/twitter/android/util/av;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/twitter/android/util/au;->j:Lcom/twitter/android/util/av;

    invoke-interface {v0, p1}, Lcom/twitter/android/util/av;->b(Lcom/twitter/model/timeline/w;)V

    .line 156
    :cond_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/model/timeline/w;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/twitter/android/util/au;->b()Lcom/twitter/android/util/aw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/util/aw;->a(Lcom/twitter/model/timeline/w;)V

    move v0, v1

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {p1}, Lcom/twitter/model/timeline/w;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/twitter/android/util/au;->a()Lcom/twitter/android/util/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/util/a;->a(Lcom/twitter/model/timeline/w;)V

    move v0, v1

    goto :goto_1

    .line 145
    :cond_3
    invoke-virtual {p1}, Lcom/twitter/model/timeline/w;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    invoke-virtual {p0}, Lcom/twitter/android/util/au;->c()Lcom/twitter/android/util/az;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/util/az;->a(Lcom/twitter/model/timeline/w;)V

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 148
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public b()Lcom/twitter/android/util/aw;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/twitter/android/util/au;->h:Lcom/twitter/android/util/aw;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/twitter/android/util/aw;

    invoke-direct {v0, p0}, Lcom/twitter/android/util/aw;-><init>(Lcom/twitter/android/util/au;)V

    iput-object v0, p0, Lcom/twitter/android/util/au;->h:Lcom/twitter/android/util/aw;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/util/au;->h:Lcom/twitter/android/util/aw;

    return-object v0
.end method

.method public b(ILcom/twitter/library/service/x;)V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p2}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 118
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    instance-of v1, p2, Lcom/twitter/library/api/ad;

    if-eqz v1, :cond_0

    .line 122
    iget-object v0, v0, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "prompt"

    sget-object v2, Lcom/twitter/model/timeline/w;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/w;

    .line 123
    invoke-virtual {p0, v0}, Lcom/twitter/android/util/au;->a(Lcom/twitter/model/timeline/w;)V

    goto :goto_0
.end method

.method public c()Lcom/twitter/android/util/az;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/twitter/android/util/au;->i:Lcom/twitter/android/util/az;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/twitter/android/util/az;

    invoke-direct {v0, p0}, Lcom/twitter/android/util/az;-><init>(Lcom/twitter/android/util/au;)V

    iput-object v0, p0, Lcom/twitter/android/util/au;->i:Lcom/twitter/android/util/az;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/util/au;->i:Lcom/twitter/android/util/az;

    return-object v0
.end method

.method public d()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/twitter/android/util/au;->g:Lcom/twitter/android/util/a;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/twitter/android/util/au;->g:Lcom/twitter/android/util/a;

    invoke-virtual {v1}, Lcom/twitter/android/util/a;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 186
    const-string/jumbo v2, "state_action_prompt_handler"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 188
    :cond_0
    return-object v0
.end method
