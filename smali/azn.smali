.class public Lazn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lazt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lazt",
        "<",
        "Lavh;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lazs;

.field private final b:Landroid/content/ContentResolver;

.field private final c:Lrx/t;

.field private final d:Lrx/t;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v0

    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v1

    new-instance v2, Lazx;

    invoke-direct {v2, p1}, Lazx;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0, v1, p1, v2}, Lazn;-><init>(Lrx/t;Lrx/t;Landroid/content/ContentResolver;Lazs;)V

    .line 56
    return-void
.end method

.method constructor <init>(Lrx/t;Lrx/t;Landroid/content/ContentResolver;Lazs;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lazn;->c:Lrx/t;

    .line 62
    iput-object p2, p0, Lazn;->d:Lrx/t;

    .line 63
    iput-object p3, p0, Lazn;->b:Landroid/content/ContentResolver;

    .line 64
    iput-object p4, p0, Lazn;->a:Lazs;

    .line 65
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lazn;->e:Ljava/util/Set;

    .line 66
    return-void
.end method

.method static synthetic a(Lazn;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lazn;->f:Z

    return v0
.end method

.method static synthetic b(Lazn;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lazn;->b:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic c(Lazn;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lazn;->e:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a(Lavh;)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lavh;",
            ")",
            "Lrx/o",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lazn;->a:Lazs;

    iget-object v2, p1, Lavh;->a:Landroid/net/Uri;

    .line 72
    invoke-interface {v0, v2}, Lazs;->a(Landroid/net/Uri;)Lrx/o;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    .line 73
    invoke-virtual {v2, v0}, Lrx/o;->d(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    iget-object v2, p0, Lazn;->c:Lrx/t;

    .line 74
    invoke-virtual {v0, v2}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    iget-object v2, p0, Lazn;->d:Lrx/t;

    .line 76
    invoke-virtual {v0, v2}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v2, Lazo;

    invoke-direct {v2, p0, p1}, Lazo;-><init>(Lazn;Lavh;)V

    .line 77
    invoke-virtual {v0, v2}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v2, p0, Lazn;->c:Lrx/t;

    .line 97
    invoke-virtual {v0, v2}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v2, Lazp;

    invoke-direct {v2, p0, v1}, Lazp;-><init>(Lazn;Lazo;)V

    .line 98
    invoke-virtual {v0, v2}, Lrx/o;->a(Lrx/q;)Lrx/o;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method public synthetic a_(Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lavh;

    invoke-virtual {p0, p1}, Lazn;->a(Lavh;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lazn;->e:Ljava/util/Set;

    monitor-enter v1

    .line 104
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lazn;->f:Z

    .line 105
    iget-object v0, p0, Lazn;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 106
    invoke-static {v0}, Ldbt;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    :cond_0
    :try_start_1
    iget-object v0, p0, Lazn;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 109
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    return-void
.end method
