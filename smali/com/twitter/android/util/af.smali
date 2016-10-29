.class public Lcom/twitter/android/util/af;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/util/af;->a:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/util/af;->b:Ljava/util/List;

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/util/af;->a(J)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/util/af;)J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/twitter/android/util/af;->c:J

    return-wide v0
.end method

.method private a(ZZII)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 142
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/util/af;->g:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 143
    :goto_0
    if-eqz p1, :cond_2

    .line 144
    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/twitter/android/util/af;->a:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/twitter/android/util/af;->b:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_1
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/util/af;->a:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/twitter/android/util/af;->b:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iput-boolean v1, p0, Lcom/twitter/android/util/af;->g:Z

    goto :goto_1

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/util/af;->a:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/twitter/android/util/af;->a:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/twitter/android/util/af;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/util/af;->e:Z

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 60
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/util/af;->f:Z

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x2

    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/twitter/android/util/af;->c:J

    .line 51
    invoke-static {}, Lcey;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/util/af;->d:Z

    .line 52
    invoke-static {}, Lcfe;->a()Lcfe;

    move-result-object v0

    invoke-virtual {v0}, Lcfe;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/util/af;->e:Z

    .line 53
    iget-wide v0, p0, Lcom/twitter/android/util/af;->c:J

    invoke-static {v0, v1}, Lcfl;->g(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/util/af;->f:Z

    .line 54
    return-void
.end method

.method public a(Lcom/twitter/internal/android/widget/ToolBar;Lcom/twitter/android/client/t;)V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/twitter/android/util/ag;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/util/ag;-><init>(Lcom/twitter/android/util/af;Lcom/twitter/internal/android/widget/ToolBar;Lcom/twitter/android/client/t;)V

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

.method public a(Lcyg;)V
    .locals 6

    .prologue
    const v5, 0x7f1307dc

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 92
    iput-boolean v4, p0, Lcom/twitter/android/util/af;->g:Z

    .line 93
    iget-boolean v0, p0, Lcom/twitter/android/util/af;->d:Z

    const v1, 0x7f1306fe

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/twitter/android/util/af;->a(ZZII)V

    .line 94
    invoke-virtual {p0}, Lcom/twitter/android/util/af;->a()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 95
    iput-boolean v3, p0, Lcom/twitter/android/util/af;->g:Z

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/util/af;->f:Z

    const v1, 0x7f1306ff

    const v2, 0x7f1307da

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/twitter/android/util/af;->a(ZZII)V

    .line 98
    invoke-virtual {p0}, Lcom/twitter/android/util/af;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 99
    iput-boolean v3, p0, Lcom/twitter/android/util/af;->g:Z

    .line 103
    :cond_1
    iput-boolean v3, p0, Lcom/twitter/android/util/af;->g:Z

    .line 105
    invoke-direct {p0, v3, v3, v5, v5}, Lcom/twitter/android/util/af;->a(ZZII)V

    .line 107
    iget-object v0, p0, Lcom/twitter/android/util/af;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 108
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcyg;->b(I)Lcyd;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_2

    .line 111
    invoke-interface {v0, v4}, Lcyd;->f(Z)Lcyd;

    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/util/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 116
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcyg;->b(I)Lcyd;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    invoke-interface {v0, v3}, Lcyd;->f(Z)Lcyd;

    goto :goto_1

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/util/af;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    iget-object v0, p0, Lcom/twitter/android/util/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    return-void
.end method
