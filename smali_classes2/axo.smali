.class public Laxo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/di/g;


# instance fields
.field private a:J

.field private b:Z

.field private c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Laxr;

.field private final f:Laxq;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laxr;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxo;->d:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laxo;->g:Ljava/util/Set;

    .line 29
    new-instance v0, Laxq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laxq;-><init>(Laxp;)V

    iput-object v0, p0, Laxo;->f:Laxq;

    .line 30
    invoke-virtual {p0}, Laxo;->k()V

    .line 31
    iput-object p1, p0, Laxo;->e:Laxr;

    .line 32
    invoke-virtual {p1}, Laxr;->b()V

    .line 33
    return-void
.end method

.method private static b(Lcom/twitter/android/timeline/cp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget-object v0, v0, Lcom/twitter/model/timeline/dd;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxo;->b:Z

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxo;->c:Z

    .line 45
    iget-object v0, p0, Laxo;->f:Laxq;

    invoke-virtual {v0}, Laxq;->a()V

    .line 46
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 36
    iget-wide v0, p0, Laxo;->a:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Laxo;->k()V

    .line 38
    iput-wide p1, p0, Laxo;->a:J

    .line 40
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/android/timeline/cp;)V
    .locals 2

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p1, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget v0, v0, Lcom/twitter/model/timeline/dd;->c:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 102
    :pswitch_1
    iget-object v0, p0, Laxo;->f:Laxq;

    invoke-static {p1}, Laxo;->b(Lcom/twitter/android/timeline/cp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Laxo;->f:Laxq;

    invoke-static {p1}, Laxo;->b(Lcom/twitter/android/timeline/cp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxq;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v0, p0, Laxo;->g:Ljava/util/Set;

    iget-object v1, p1, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget-object v1, v1, Lcom/twitter/model/timeline/dd;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/twitter/android/timeline/cp;Lcom/twitter/android/timeline/cp;)V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Laxo;->f:Laxq;

    invoke-static {p1}, Laxo;->b(Lcom/twitter/android/timeline/cp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Laxo;->b(Lcom/twitter/android/timeline/cp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laxq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public a(Lcom/twitter/android/timeline/cp;ZI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p1, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget v0, v0, Lcom/twitter/model/timeline/dd;->c:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 124
    :pswitch_1
    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 126
    :cond_1
    iget-object v0, p0, Laxo;->f:Laxq;

    invoke-virtual {v0, v1}, Laxq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_2
    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    .line 132
    :cond_2
    iget-object v0, p0, Laxo;->f:Laxq;

    invoke-virtual {v0, v1}, Laxq;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v0, p0, Laxo;->g:Ljava/util/Set;

    iget-object v1, p1, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget-object v1, v1, Lcom/twitter/model/timeline/dd;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/twitter/app/common/di/InjectionScope;)V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->c:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_0

    .line 163
    iget-object v0, p0, Laxo;->e:Laxr;

    invoke-virtual {v0}, Laxr;->c()V

    .line 165
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/timeline/dd;)Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Laxo;->g:Ljava/util/Set;

    iget-object v1, p1, Lcom/twitter/model/timeline/dd;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Laxo;->b:Z

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Laxo;->d:Ljava/util/List;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Laxo;->f:Laxq;

    invoke-virtual {v0}, Laxq;->b()V

    .line 63
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Laxo;->f:Laxq;

    invoke-virtual {v0}, Laxq;->c()V

    .line 67
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxo;->c:Z

    .line 71
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Laxo;->c:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Laxo;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxo;->f:Laxq;

    invoke-virtual {v0}, Laxq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Laxo;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxo;->f:Laxq;

    invoke-virtual {v0}, Laxq;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Laxo;->f:Laxq;

    invoke-virtual {v0}, Laxq;->d()Z

    move-result v0

    return v0
.end method

.method k()V
    .locals 2

    .prologue
    .line 153
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Laxo;->a:J

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxo;->b:Z

    .line 155
    iget-object v0, p0, Laxo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    iget-object v0, p0, Laxo;->f:Laxq;

    invoke-virtual {v0}, Laxq;->a()V

    .line 157
    iget-object v0, p0, Laxo;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 158
    return-void
.end method
