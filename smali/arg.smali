.class public Larg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Larf;


# instance fields
.field private final a:Lard;

.field private final b:Lrx/t;

.field private final c:Lrx/t;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Larn;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lrx/ap;

.field private g:Z


# direct methods
.method public constructor <init>(Lard;)V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v0

    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Larg;-><init>(Lard;Lrx/t;Lrx/t;)V

    .line 41
    return-void
.end method

.method constructor <init>(Lard;Lrx/t;Lrx/t;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Larg;->g:Z

    .line 46
    iput-object p1, p0, Larg;->a:Lard;

    .line 47
    iput-object p2, p0, Larg;->b:Lrx/t;

    .line 48
    iput-object p3, p0, Larg;->c:Lrx/t;

    .line 49
    return-void
.end method

.method static synthetic a(Larg;Lrx/o;)Lrx/o;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Larg;->e:Lrx/o;

    return-object p1
.end method

.method private b()Larn;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-boolean v1, p0, Larg;->g:Z

    if-nez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    iget-object v1, p0, Larg;->d:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Larg;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, p0, Larg;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larn;

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Larg;->b()Larn;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-interface {v0, p1}, Larn;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/TwitterUser;)I
    .locals 2

    .prologue
    .line 141
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    .line 142
    iget-object v1, p0, Larg;->a:Lard;

    invoke-interface {v1}, Lard;->a()I

    move-result v1

    .line 143
    invoke-static {v1, v0}, Larm;->a(II)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Larg;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Larg;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 64
    iput-object v1, p0, Larg;->d:Ljava/lang/ref/WeakReference;

    .line 67
    :cond_0
    iget-object v0, p0, Larg;->f:Lrx/ap;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Larg;->f:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 69
    iput-object v1, p0, Larg;->f:Lrx/ap;

    .line 72
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Larg;->g:Z

    .line 73
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 77
    invoke-direct {p0}, Larg;->b()Larn;

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 84
    new-instance v3, Larc;

    invoke-direct {v3, v1, v2}, Larc;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3}, Larc;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Larc;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Larn;->a([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Larg;->a:Lard;

    invoke-interface {v0}, Lard;->a()I

    move-result v0

    invoke-direct {p0, v0}, Larg;->b(I)V

    .line 109
    iget-object v0, p0, Larg;->e:Lrx/o;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Larg;->a:Lard;

    invoke-interface {v0, p1, p2}, Lard;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lrx/o;

    move-result-object v0

    invoke-virtual {v0}, Lrx/o;->e()Lrx/o;

    move-result-object v0

    iput-object v0, p0, Larg;->e:Lrx/o;

    .line 113
    :cond_0
    iget-object v0, p0, Larg;->e:Lrx/o;

    iget-object v1, p0, Larg;->b:Lrx/t;

    .line 114
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Larg;->c:Lrx/t;

    .line 115
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Larh;

    invoke-direct {v1, p0}, Larh;-><init>(Larg;)V

    .line 116
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Larg;->f:Lrx/ap;

    .line 132
    return-void
.end method

.method public a(Larn;)V
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Larg;->g:Z

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Larg;->d:Ljava/lang/ref/WeakReference;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Larg;->g:Z

    goto :goto_0
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Larg;->a:Lard;

    invoke-interface {v0, p1}, Lard;->a(I)V

    .line 92
    invoke-direct {p0, p1}, Larg;->b(I)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Larg;->a:Lard;

    invoke-interface {v0, p1, p2}, Lard;->b(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 137
    return-void
.end method
