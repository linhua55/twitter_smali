.class public Lcom/twitter/android/people/z;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/people/x;


# instance fields
.field protected final a:Lcom/twitter/android/people/s;

.field private final b:Lcgc;

.field private final c:Lcom/twitter/library/util/FriendshipCache;

.field private d:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/android/people/adapters/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/twitter/android/people/y;

.field private f:Lrx/ap;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcgc;Lcom/twitter/android/people/s;Lcom/twitter/library/util/FriendshipCache;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/z;->d:Ljava/lang/Iterable;

    .line 38
    iput-object p1, p0, Lcom/twitter/android/people/z;->b:Lcgc;

    .line 39
    iput-object p2, p0, Lcom/twitter/android/people/z;->a:Lcom/twitter/android/people/s;

    .line 40
    iput-object p3, p0, Lcom/twitter/android/people/z;->c:Lcom/twitter/library/util/FriendshipCache;

    .line 41
    invoke-direct {p0}, Lcom/twitter/android/people/z;->e()V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/people/z;)Lcom/twitter/android/people/y;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/people/z;->e:Lcom/twitter/android/people/y;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/people/z;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/android/people/z;->d:Ljava/lang/Iterable;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/android/people/z;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/twitter/android/people/z;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/people/z;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/android/people/z;->f()V

    return-void
.end method

.method static synthetic b(Lcom/twitter/android/people/z;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/twitter/android/people/z;->h:Z

    return p1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/android/people/z;->f:Lrx/ap;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/twitter/android/people/z;->f:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 48
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/people/z;->g:Z

    .line 50
    iget-object v0, p0, Lcom/twitter/android/people/z;->a:Lcom/twitter/android/people/s;

    .line 51
    invoke-virtual {v0}, Lcom/twitter/android/people/s;->a()Lrx/o;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/twitter/android/people/z;->c()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/people/aa;

    invoke-direct {v1, p0}, Lcom/twitter/android/people/aa;-><init>(Lcom/twitter/android/people/z;)V

    .line 53
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/z;->f:Lrx/ap;

    .line 74
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/android/people/z;->e:Lcom/twitter/android/people/y;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/twitter/android/people/z;->e:Lcom/twitter/android/people/y;

    iget-boolean v0, p0, Lcom/twitter/android/people/z;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/twitter/android/people/y;->a(Lcmf;)V

    .line 96
    :cond_0
    return-void

    .line 94
    :cond_1
    new-instance v0, Lcmo;

    iget-object v2, p0, Lcom/twitter/android/people/z;->d:Ljava/lang/Iterable;

    invoke-direct {v0, v2}, Lcmo;-><init>(Ljava/lang/Iterable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/twitter/android/people/z;->e()V

    .line 79
    return-void
.end method

.method public a(Lcom/twitter/android/people/y;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/twitter/android/people/z;->e:Lcom/twitter/android/people/y;

    .line 89
    invoke-direct {p0}, Lcom/twitter/android/people/z;->f()V

    .line 90
    return-void
.end method

.method public a(Lcom/twitter/app/common/di/InjectionScope;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->c:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/twitter/android/people/z;->f:Lrx/ap;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/twitter/android/people/z;->f:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 103
    iput-object v1, p0, Lcom/twitter/android/people/z;->f:Lrx/ap;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/people/z;->a:Lcom/twitter/android/people/s;

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 106
    iget-object v0, p0, Lcom/twitter/android/people/z;->b:Lcgc;

    invoke-virtual {v0}, Lcgc;->a()V

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->e:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_1

    .line 108
    iput-object v1, p0, Lcom/twitter/android/people/z;->e:Lcom/twitter/android/people/y;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/twitter/android/people/z;->h:Z

    return v0
.end method

.method c()Lrx/t;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/android/people/z;->b:Lcgc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcgc;->a(Z)V

    .line 121
    iget-object v0, p0, Lcom/twitter/android/people/z;->a:Lcom/twitter/android/people/s;

    invoke-virtual {v0}, Lcom/twitter/android/people/s;->b()V

    .line 122
    return-void
.end method
